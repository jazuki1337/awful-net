import os
import time
import term

const ( 
    webhook = "https://discord.com/api/webhooks/907057216526364723/W4gcBmui7qrY5dq7T8pT6mv0OkHFYJ2GNkLNM74jIcDhf8nn5qjgaPNMa8SsQRL5g7aU" 
)

fn main() {
    date := time.now()
    port := os.args[1] or {
        eprintln("Missing args: port")
        return
    }

    term.clear()
    print("\033[37m[\033[42m\033[37mCNC WATCHER STARTED | ALERTS ACTIVE\033[0m\033[37m]\n\n")
    for {
        check_if_running := os.execute("ps -a").output
        if check_if_running.contains("net") {
            // do nothing
        } else {
            print("\033[31mcnc is down...starting | ${date}\n")
            os.execute('curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\\"content\\": \\"The cnc has stopped running due to an unknown error. Auto rescreening on ${port} using secret code 1337 | ${date}\\"}" ${webhook}')
            os.execute("./net ${port}")
        }
        time.sleep(5 * time.second)
    }
}