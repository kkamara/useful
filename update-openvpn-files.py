#!/usr/bin/env python3

import os
import re

'''
Script to disable dns leaks with openvpn config files in ubuntu 16.04
'''


openvpnDir = "/etc/openvpn"
pattern = ".*ovpn"
newString = """
script-security 2
up /etc/openvpn/update-resolv-conf
down /etc/openvpn/update-resolv-conf
"""

items = os.listdir(openvpnDir)

for item in items: 
    only_these = re.match(pattern, item)

    if only_these:
        with open(openvpnDir+"/"+item, 'a', encoding='utf-8') as f:
            f.write(newString)


