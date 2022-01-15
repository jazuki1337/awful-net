module commands

import os
import net

pub fn animation(mut conn net.TcpConn) {
   a := os.read_file("/root/c2/commands/home-splash.tfx") or {return}
   conn.write_line("$a")
   time.sleep(1 * time.second)
}