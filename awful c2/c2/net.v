import os
import net
import time
import awfulv1
import io
import rand
import net.http
import utils
import exploits

fn handle_connections(mut conn net.TcpConn) {
    mut u := utils.CLI{}
    mut c_s := utils.Wocky_Settings{}
    u.set_title1(mut conn, "Captcha")
    u.resize_terminal(mut conn, 24, 80)
    time.sleep(1 * time.second)
    mut reader := io.new_buffered_reader(reader: conn)
    mut current_ip := conn.peer_addr() or { return } //User's IP
    println('> new client: $current_ip')
    conn.set_read_timeout(time.infinite)
    time.sleep(1 * time.second)
    /*
    captcha
    */
    num := rand.int_in_range(1, 1000)
    lol := http.get_text("https://artii.herokuapp.com/make?text=$num&font=italic").split("\n")
    mut output := "\r" 
    for i in lol {
    output += "\r$i\n" 
}
    conn.write_string(output) or {0}
    conn.write_string("\r\n >>> [38;2;60;195;255m[38;2;55;200;255m[38;2;50;205;255m[38;2;45;210;255m[38;2;40;215;255m[38;2;35;220;255m") or {0}
    data := reader.read_line() or {return}
    if data.contains('$num'){
    conn.write_string("Captcha completed!\r\n") or {0}
    println('someone completed the captcha') 
    time.sleep(3 * time.second)
    }
	else
	{
    conn.write_string("Invalid captcha!") or {0}
    println('someone failed the captcha') 
    time.sleep(3 * time.second)
    conn.close() or {return}
    }
    /*
    mainstuff
    */
    awfulv1.main(mut conn)
   
}

fn lol() {

}

fn client_listener(port string) {
    mut server := net.listen_tcp(.ip6, ":${port}") or {return}
    for {
        time.sleep(1 * time.second)
        mut conn := server.accept() or {
            continue
        }
        go handle_connections(mut conn)
    }
}


fn main() {
    port := os.args[1]
    if port.int() > 65535 {
        print("Port out of range")
    } else if port.int() < 1 {
        print("Select a bigger port!")
    }
    client_listener(port)
}