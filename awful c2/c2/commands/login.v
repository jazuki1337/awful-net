module commands

import os
import time
import term
import net
import io

 pub fn login(mut conn net.TcpConn){
      conn.write_string("\033[1A\033[2J\033[1;1H") or {0}
      mut read := io.new_buffered_reader(reader: conn)
          conn.write_string("\rusername: ") or {0}
          username := read.read_line() or {return}
          conn.write_string("\rpassword: ") or {0}
          password := read.read_line() or {return}
          db := os.read_file('/root/c2/db/users.db') or {return}
          if db == "+$username+" || db == "+$password+" {
          mut success := os.read_file('/root/c2/banner/sucess.txt') or {return}
          conn.write_string("\033[1A\033[2J\033[1;1H") or {0}
          conn.write_string(success) or {0}
          }else{
           failed := os.read_file('/root/c2/banner/notfound.txt') or {return}
           conn.write_string(failed) or {0}
           time.sleep(3 * time.second)
           conn.close() or {return}
          }
}

      pub fn get_db(mut conn net.TcpConn) string {
      return os.read_file('/root/c2/db/users.db') or { return '' }
    }