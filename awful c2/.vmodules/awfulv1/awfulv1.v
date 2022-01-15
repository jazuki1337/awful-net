module awfulv1
import commands
import exploits
import asset
import net
import time

pub fn main(mut conn net.TcpConn) {
   //commands.captcha(mut conn)
   commands.login(mut conn)
   conn.write_string("\033[2J\033[1;1H") or {0}
   commands.animation(mut conn)
   conn.write_string("\033[2J\033[1;1H") or {0}
   asset.banner(mut conn)
}