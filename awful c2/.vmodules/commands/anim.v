module commands

import os
import net
import time
import utils

pub fn animation2(mut conn net.TcpConn) {
   mut u := utils.CLI{}
   mut c_s := utils.Wocky_Settings{}
   u.set_title3(mut conn, "Loading")
   u.resize_terminal(mut conn, 24, 80)
   a := os.read_file("/root/c2/commands/weed-smoking.neko.tfx") or {return}
   conn.write_string("$a") or {0}
   time.sleep(2 * time.second)
}