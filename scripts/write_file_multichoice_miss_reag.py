# Created by Hanlin Hu
# On Nov 15 2016
# Copyright: All rights reserved

# Generate moodle xml file (MultiChoice Reag)

#!/usr/bin/env python2.7
import sys
sys.path.append('../')

import urllib2
import base64
import textwrap
import lib.functions as func
import lib.remove_tag as tag

import os.path

xml_dir = '../xml/'

if not os.path.exists(xml_dir):
    os.makedirs(xml_dir)

# width fot text wrap
HTML_WRAP_WIDTH = 3000

courseName = "$course$/Default for Chemistry/Reagent/"
path = "http://opsin.ch.cam.ac.uk/opsin/"

question_count = 1
products_all = func.get_molecules()

# Open a file to write
f = open(xml_dir + "miss_reag_multichoice.xml", "w")

print "Name of the file: ", f.name

f.write('<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n')
f.write('<quiz>\n')
f.close()

for products in products_all:
    reagents_all = func.get_reagents_react(products[4]) # products - fgroup
    for reagents in reagents_all:
        react_group = reagents[1]   # reagents - reactant
        react_base = products[1]    # products - base
        react_par = products[2]     # products - parents
        react_loc = products[5]     # products - locant
        react_size = products[3]    # products - carbon
        reactants = func.get_reactant(react_group, react_base, react_loc)

        if reactants is None:
            continue

        q_type = products[4]        # products - fgroup

        if (q_type[0:1]).isdigit():
            q_type = q_type[2:]

        # generate wrong choices
        try:
            wrong_reagent_1 = func.get_wrong_reagent_1(reagents[0])
            wrong_reagent_2 = func.get_wrong_reagent_2(reagents[0], wrong_reagent_1)
            wrong_reagent_3 = func.get_wrong_reagent_3(reagents[0], wrong_reagent_1, wrong_reagent_2)
            # feedback
            feedback_wrong_reagent = 'Incorrect'

            # base64 encoding image
            try:
                # Here we need to replace blank space with %20
                # Cannot use module urllib. e.g.: urllib.quote(str(product[0]))
                # The reason see 'url_string_test.py' result in test folder
                prod_image = urllib2.urlopen(path + str(products[0]).replace(' ', '%20') + str('.png')).read()
                product_string = '\r\n'.join(textwrap.wrap(base64.b64encode(prod_image), HTML_WRAP_WIDTH))
            except:
                print 'Image(product) not found: ' + str(products[0])

            try:
                react_image = urllib2.urlopen(path + str(reactants[0]).replace(' ', '%20') + str('.png')).read()
                reactant_string = '\r\n'.join(textwrap.wrap(base64.b64encode(react_image), HTML_WRAP_WIDTH))
            except:
                print 'Image not found: ' + str(reactants[0])

            wrg_reag1_string = str(wrong_reagent_1)
            wrg_reag2_string = str(wrong_reagent_2)
            wrg_reag3_string = str(wrong_reagent_3)
            reag_string = str(reagents[0])

            f = open(xml_dir + "miss_reag_multichoice.xml", "a")
            # print content to xml
            f.write('<!-- question: 0  -->\n')
            f.write('<question type=\"category\">\n')
            f.write('<category>\n')
            f.write('<text>' + str(courseName) + str(q_type).title() + '</text>\n')
            f.write('</category>\n')
            f.write('</question>\n\n')
            f.write('<!-- question: 70445  -->\n')
            f.write('<question type=\"multichoice\">\n')
            f.write('<name>\n')
            f.write('<text>')
            f.write('MultiChoice: miss_reag ' + tag.remove_tag(str(reagents[0])))
            f.write('</text>\n')
            f.write('</name>\n')
            f.write('<questiontext format=\"html\">\n')
            f.write('<text>')

            f.write('<![CDATA[<table border=\"0\">' + '<tbody>' + '<tr>' + '<td rowspan=\"3\">' + '<center>' +
                    '<img src="data:image/png;base64,' + '\n' + str(reactant_string) + '"/>' +
                    '</center></td>\n' + '<td style=\"vertical-align: bottom; height: 60px;\"><center>' + '<p style=\"font-size:400%;\">?</p>' +
                    '</center></td>' + '<td rowspan=\"3\" style=\"width:60px\"><center>' +
                    '<img src="data:image/png;base64,' + '\n' + str(product_string) + '"/>' +
                    '</center></td>\n' + '</tr>' + '<tr>' +
                    '<td>' + '<center><b>-------------------------></b></center>' + '</td>' + '</tr>' +
                    '<tr>' + '<td style=\"vertical-align:top; height:60px\">' + '<center>' + str(reagents[3]) +
                    '</center>' + '</td>' + '</tr>' + '</tbody>' + "</table><br><br>]]>\n")
                    
            f.write('</text>\n')
            f.write('</questiontext>\n')
            f.write('<generalfeedback format=\"html\">\n')
            f.write('<text></text>\n')
            f.write('</generalfeedback>\n')
            f.write('<defaultgrade>1.0000000</defaultgrade>\n')
            f.write('<penalty>0.3333333</penalty>\n')
            f.write('<hidden>0</hidden>\n')

            f.write('<single>true</single>\n')
            f.write('<shuffleanswers>true</shuffleanswers>\n')
            f.write('<answernumbering>abc</answernumbering>\n')

            f.write('<correctfeedback format=\"moodle_auto_format\">\n')
            f.write('<text></text>\n')
            f.write('</correctfeedback>\n')
            f.write('<partiallycorrectfeedback format=\"moodle_auto_format\">\n')
            f.write('<text></text>\n')
            f.write('</partiallycorrectfeedback>\n')
            f.write('<incorrectfeedback format=\"moodle_auto_format\">\n')
            f.write('<text></text>\n')
            f.write('</incorrectfeedback>\n')

            f.write('<answer fraction=\"100\" format=\"moodle_auto_format\">\n')
            f.write('<text>'+ tag.remove_tag(reag_string) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text></text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>'+ tag.remove_tag(wrg_reag1_string) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_reagent) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>'+ tag.remove_tag(wrg_reag2_string) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_reagent) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>'+ tag.remove_tag(wrg_reag3_string) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_reagent) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('</question>\n\n')

            question_count += 1

        except:
            log = open("../log/err_log_" + str(question_count) + ".txt", "w")
            log.write('react_group = ' + str(react_group) + "\n")
            log.write('react_base = ' + str(react_base) + "\n")
            log.write('react_loc = ' + str(react_loc) + "\n")
            log.write('react_par = ' + str(react_par) + "\n")
            log.write('question # = ' + str(question_count) + "\n")
            log.close()
            pass

        f.close()

f = open(xml_dir + "miss_reag_multichoice.xml", "a")
f.write('</quiz>\n\n\n')
f.close()

print 'Finished.'
