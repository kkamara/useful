#!/usr/bin/env python3

import pymongo
import sys

def parse_cmd():
    result = {}
    args = sys.argv[1:]
    result['host'] = args[0]
    return result

def run():
    args = parse_cmd()
    validateUri = pymongo.uri_parser.parse_host(args['host'])
    print(validateUri)

if __name__ == "__main__":
    run()

