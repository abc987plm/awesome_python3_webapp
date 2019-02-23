#!python3

'''
Default configurations.
'''

__author__ = 'jun-x'

configs = {
    'debug': True,
    'db':{
        'host': '127.0.0.1',
        'port': 3306,
        'user': 'root',
        'password': '1234',
        'db': 'awesome'
    },
    'session': {
        'secret': 'Awesome'
    }
}