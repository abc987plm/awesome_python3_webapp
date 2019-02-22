#!python3

__author__ = 'jun-x'

'url handlers'

import re, time, json, logging, hashlib, base64, asyncio

from obj.awesome_python3_webapp.www.coroweb import get, post

from obj.awesome_python3_webapp.www.models import User, Comment, Blog, next_id

@get('/')
async def index(request):
    logging.info('handlers.py handlers index: %s' % request)
    users = await User.findAll()
    return {
        '__template__': 'new.html',
        'users': users
    }