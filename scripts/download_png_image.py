# Create by Hanlin Hu
# On Nov 20 2016
# Copyright: All rights reserved

# download image file from OPSIN

import urllib2
import lib.functions as func

img_dirc = '../img/'
path = "http://opsin.ch.cam.ac.uk/opsin/"
extension_name = '.png'

molecules_all = func.get_molecules()
for molecules in molecules_all:
    molecules_name = molecules[0]   # molecules name
    molecules_image = urllib2.urlopen(path + str(molecules_name).replace(' ', '%20') + str(extension_name))

    file_name = molecules_name
    f = open(str(img_dirc) + str(file_name) + str(extension_name), 'wb+')   # wb+ : write binary (overwrite exists)

    file_size_dl = 0
    block_sz = 8192
    while True:
        img_buffer = molecules_image.read(block_sz)
        if not img_buffer:
            break
        file_size_dl += len(img_buffer)
        f.write(img_buffer)

    f.close()

print "Finish"