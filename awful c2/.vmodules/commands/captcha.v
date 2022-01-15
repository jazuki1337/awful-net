module commands

import os
import rand
import term
import io
import net
import time
import utils

pub fn captcha(mut conn net.TcpConn) {
      mut u := utils.CLI{}
      mut c_s := utils.Wocky_Settings{}
      u.set_title1(mut conn, "Captchs")
      u.resize_terminal(mut conn, 24, 80)
      mut read := io.new_buffered_reader(reader: conn)
      num := rand.int_in_range(1, 1000)
      conn.write_string("${num}") or {0}
      conn.write_string("\r\n >>> [38;2;60;195;255m[38;2;55;200;255m[38;2;50;205;255m[38;2;45;210;255m[38;2;40;215;255m[38;2;35;220;255m") or {0}
      data := read.read_line() or {return}
      if data.contains('$num'){
      conn.write_string("Captcha completed!\r\n") or {0}
      mut current_ip := conn.peer_addr() or { return } //User's IP
      println('someone solved the captcha')
      conn.set_read_timeout(time.infinite)
    }
	else
	{
      conn.write_string("Invalid captcha!") or {0}
      conn.close() or {return}
    }
}