# Created by Hanlin Hu
# On May 15 2017
# Copyright: All rights reserved

# Generate moodle xml file (MultiChoice Prod Text)

#!/usr/bin/env python2.7
import sys
sys.path.append('../')

import lib.functions as func
import lib.remove_tag as tag

import os.path

xml_dir = '../xml/'

if not os.path.exists(xml_dir):
    os.makedirs(xml_dir)

# width fot text wrap
HTML_WRAP_WIDTH = 3000

courseName = "$course$/Default for Chemistry/Product/"
path = "http://opsin.ch.cam.ac.uk/opsin/"

question_count = 1
reactants_all = func.get_molecules()

# Open a file to write
f = open(xml_dir + "miss_prod_text.xml", "w")

print "Name of the file: ", f.name

f.write('<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n')
f.write('<quiz>\n')
f.close()

for reactants in reactants_all:
    reagents_all = func.get_reagents_prod(reactants[4]) # reactants - fgroup
    for reagents in reagents_all:
        prod_group = reagents[2]    # reagents - product
        prod_base = reactants[1]    # reactants - base
        prod_par = reactants[2]     # reactants - parents
        prod_loc = reactants[5]     # reactants - locant
        prod_size = reactants[3]    # reactants - carbon
        product = func.get_product(prod_group, prod_base, prod_loc)

        if product is None:
            continue

        q_type = reactants[4]        # reactants - fgroup

        if (q_type[0:1]).isdigit():
            q_type = q_type[2:]

        # generate wrong choices
        try:
            wrong_product_fgr = func.get_wrong_fgroup(prod_group, prod_base, prod_loc)
            wrong_product_par = func.get_wrong_parent(prod_group, prod_base, prod_loc)
            wrong_product_loc = func.get_wrong_locant(prod_group, prod_base, prod_loc, prod_par)

            # feedback

            feedback_wrong_product_fgr = 'Check the functional group again!'
            feedback_wrong_product_par = 'Check the carbon chain again!'
            feedback_wrong_product_loc = 'Check the locant of the group again!'

            # no result
            if(wrong_product_fgr == 'no result'):
                wrong_product_fgr = func.random_molecule(prod_size)
                feedback_wrong_product_fgr = 'Incorrect'
            if(wrong_product_par == 'no result'):
                wrong_product_par = func.random_molecule(prod_size)
                feedback_wrong_product_par = 'Incorrect'
            if(wrong_product_loc == 'no result'):
                wrong_product_loc = func.random_molecule(prod_size)
                feedback_wrong_product_loc = 'Incorrect'

            f = open(xml_dir + "miss_prod_text.xml", "a")
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
            f.write('MultiChoice Text: miss_prod ' + tag.remove_tag(str(reagents[0])))
            f.write('</text>\n')
            f.write('</name>\n')
            f.write('<questiontext format=\"html\">\n')
            f.write('<text>')
            f.write('<![CDATA[<table border=\"0\">' + '<tbody>' + '<tr>' + '<td rowspan=\"3\">' +'<center>' +
                    str(reactants[0]) +
                    '</center></td>' + '<td style=\"vertical-align: bottom; height: 60px;\"><center>' + str(reagents[0]) +
                    '</center></td>' + '<td rowspan=\"3\" style=\"width:60px\"><center>' +
                    '<p style=\"font-size:200%;\">?</p>' + '</center></td>' + '</tr>' + '<tr>' +
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
            f.write('<text>'+ str(product[0]) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text></text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>'+ str(wrong_product_fgr) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_product_fgr) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>'+ str(wrong_product_par) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_product_par) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>'+ str(wrong_product_loc) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_product_loc) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('</question>\n\n')

            question_count += 1

        except:
            log = open("../log/err_log_" + str(question_count) + ".txt", "w")
            log.write('prod_group = ' + str(prod_group) + "\n")
            log.write('prod_base = ' + str(prod_base) + "\n")
            log.write('prod_loc = ' + str(prod_loc) + "\n")
            log.write('prod_par = ' + str(prod_par) + "\n")
            log.write('wrong_product_fgr = ' + str(wrong_product_fgr) + "\n")
            log.write('wrong_product_par = ' + str(wrong_product_par) + "\n")
            log.write('wrong_product_loc = ' + str(wrong_product_loc) + "\n")
            log.write('question # = ' + str(question_count) + "\n")
            log.close()
            pass

        f.close()

f = open(xml_dir + "miss_prod_text.xml", "a")
f.write('</quiz>\n\n\n')
f.close()

print 'Finished.'
