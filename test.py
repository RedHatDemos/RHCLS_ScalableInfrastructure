#!/usr/bin/python

#will probably need these later
#import os
#import re
#import sys
#import json

from ravello_sdk import RavelloClient
client = RavelloClient()
client.login('jlabocki@redhat.com', 'Smartvm23')
for app in client.get_applications():
   print('Found Application: {0}'.format(app['name']))
