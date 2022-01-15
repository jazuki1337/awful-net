import os

const ( 
    webhook = "https://discord.com/api/webhooks/907057216526364723/W4gcBmui7qrY5dq7T8pT6mv0OkHFYJ2GNkLNM74jIcDhf8nn5qjgaPNMa8SsQRL5g7aU" 
)


fn main() {
os.execute('curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\\"content\\": \\"The cnc has crashed due to an unknown error! Auto rescreening on 555 using secret code 1337\\"}" ${webhook}')
}