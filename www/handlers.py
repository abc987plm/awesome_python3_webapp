#!python3

__author__ = 'jun-x'

'url handlers'

import re, time, json, logging, hashlib, base64, asyncio

from obj.awesome_python3_webapp.www.coroweb import get, post

from obj.awesome_python3_webapp.www.models import User, Comment, Blog, next_id

@get('/')
def index(request):
    # logging.info('handlers.py handlers index: %s' % request)
    summary = 'Lorem ipsum dolor sit amet, conserctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et doloer magna aliqua.'
    # users = await User.findAll()
    blogs = [
        Blog(id='1', name='Test Blog', summary=summary, created_at=time.time()-120),
        Blog(id='2', name='Something New', summary=summary, created_at=time.time()-3600),
        Blog(id='3', name='Learn Swift', summary=summary, created_at=time.time()-7200)
    ]
    return {
        '__template__': 'blogs.html',
        'blogs': blogs
    }