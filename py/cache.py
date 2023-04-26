#Matthew McGilvery + ChatGPT
#4/20/2023
#This script clears the cache on a MacBook Pro in a safe way.
import os

def clear_cache():
    os.system('sudo purge')
    os.system('sudo dscacheutil -flushcache')
    os.system('sudo killall -HUP mDNSResponder')

if __name__ == '__main__':
    clear_cache()
