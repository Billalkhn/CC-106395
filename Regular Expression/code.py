import re

print("""
___________________________

""")

regex = input("Enter Pattern: ")
if regex.startswith('a') or regex.startswith('b'):
    r = re.search(r'(^a|^b)(b|a|0|1|.|_)*@(b|a|0|1|.)*$', regex)
    
    if r:
        print(r.groups())
        print("[+] Pattern Is Matched")
    else:
        print("[-] Pattern Is Not Matched")
else:
    print("[!] THE PATTERN SHOULD ONLY STARTS WITH A or b [!]")