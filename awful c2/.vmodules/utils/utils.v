module utils

import net

pub struct CLI{}

pub fn (mut c CLI) resize_terminal(mut conn net.TcpConn, r int, col int) {
	conn.write_string("\033[8;${r};${col}t") or { 0 }
}

pub fn (mut c CLI) set_title(mut conn net.TcpConn, msg string) {
	conn.write_string("\033]0;[/] Awful C22 | Users - [1] | Servers[25/30] | Expir:[999.00] \007") or { 0 }
}

pub fn (mut c CLI) set_title1(mut conn net.TcpConn, msg string) {
	conn.write_string("\033]0;Captcha \007") or { 0 }
}

pub fn (mut c CLI) set_title2(mut conn net.TcpConn, msg string) {
	conn.write_string("\033]0;Login \007") or { 0 }
}

pub fn (mut c CLI) set_title3(mut conn net.TcpConn, msg string) {
	conn.write_string("\033]0;Loading \007") or { 0 }
}