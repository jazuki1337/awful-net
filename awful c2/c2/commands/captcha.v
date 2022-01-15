module commands

import os
import rand
import term
import io
import net
import time

pub fn captcha(mut conn net.TcpConn) {
  mut read := io.new_buffered_reader(reader: conn)
  term.clear()
  num := rand.int_in_range(1, 1000)
  conn.write_string("${num}") or {0}
  conn.write_string("\r\n >>> [38;2;60;195;255m[38;2;55;200;255m[38;2;50;205;255m[38;2;45;210;255m[38;2;40;215;255m[38;2;35;220;255m") or {0}
  data := read.read_line() or {return}
  if data.contains('$num'){
  conn.write_string("Captcha completed!\r\n") or {0}
  time.sleep(3 * time.second)
}
else
{
  conn.write_string("Invalid captcha!") or {0}
  time.sleep(3 * time.second)
  conn.close() or {return}
}
}