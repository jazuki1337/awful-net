FINAL_DATA =[]

with open("conn.txt", "r+") as f:
    for line in f:
        FINAL_DATA.append('{}\\r'.format(line.strip()))
    
with open("coxn.txt", "a+") as f:
    for data in FINAL_DATA:
        f.write('{}\n'.format(data))