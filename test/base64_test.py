# Create by Hanlin Hu
# On Nov 06 2016
# Copyright: All rights reserved

import base64
import urllib2

import textwrap

# width fot text wrap
HTML_WRAP_WIDTH = 79

path = "http://opsin.ch.cam.ac.uk/opsin/"

img = urllib2.urlopen(path + str('1-bromopropene') + str('.png')).read()

encoded_string = '\r\n'.join(textwrap.wrap(base64.b64encode(img), HTML_WRAP_WIDTH))

print encoded_string
