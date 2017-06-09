# Created by Hanlin Hu
# On May 15 2017
# Copyright: All rights reserved

# Generate moodle xml file (MultiChoice React Text)

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

courseName = "$course$/Default for Chemistry/Reactant/"
path = "http://opsin.ch.cam.ac.uk/opsin/"

question_count = 1
products_all = func.get_molecules()

# Open a file to write
f = open(xml_dir + "miss_react_text.xml", "w")

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
        reactant = func.get_reactant(react_group, react_base, react_loc)

        if reactant is None:
            continue

        q_type = products[4]        # products - fgroup

        if (q_type[0:1]).isdigit():
            q_type = q_type[2:]

        # generate wrong choices
        try:
            wrong_reactant_fgr = func.get_wrong_fgroup(react_group, react_base, react_loc)
            wrong_reactant_par = func.get_wrong_parent(react_group, react_base, react_loc)
            wrong_reactant_loc = func.get_wrong_locant(react_group, react_base, react_loc, react_par)

            # feedback
            feedback_wrong_reactant_fgr = 'Check the functional group again!'
            feedback_wrong_reactant_par = 'Check the carbon chain again!'
            feedback_wrong_reactant_loc = 'Check the locant of the group again!'

            # no result
            if (wrong_reactant_fgr == 'no result'):
                wrong_reactant_fgr = func.random_molecule(react_size)
                feedback_wrong_reactant_fgr = 'Incorrect'
            if (wrong_reactant_par == 'no result'):
                wrong_reactant_par = func.random_molecule(react_size)
                feedback_wrong_reactant_par = 'Incorrect'
            if (wrong_reactant_loc == 'no result'):
                wrong_reactant_loc = func.random_molecule(react_size)
                feedback_wrong_reactant_loc = 'Incorrect'

            f = open(xml_dir + "miss_react_text.xml", "a")
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
            f.write('MultiChoice Text: miss_react ' + tag.remove_tag(str(reagents[0])))
            f.write('</text>\n')
            f.write('</name>\n')
            f.write('<questiontext format=\"html\">\n')
            f.write('<text>')
            f.write('<![CDATA[<table border=\"0\">' + '<tbody>' + '<tr>' + '<td rowspan=\"3\">' + '<center>' +
                    '<p style=\"font-size:200%;\">?</p>'+
                    '</center></td>' + '<td style=\"vertical-align: bottom; height: 60px;\"><center>' + str(reagents[0]) +
                    '</center></td>' + '<td rowspan=\"3\" style=\"width:60px\"><center>' +
                    str(products[0]) + '</center></td>' + '</tr>' + '<tr>' +
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
            f.write('<text>'+ str(reactant[0]) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text></text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>'+ str(wrong_reactant_fgr) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_reactant_loc) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>'+ str(wrong_reactant_par) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_reactant_par) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>'+ str(wrong_reactant_loc) + '</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_reactant_loc) + '</text>\n')
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
            log.write('wrong_reactant_fgr = ' + str(wrong_reactant_fgr) + "\n")
            log.write('wrong_reactant_par = ' + str(wrong_reactant_par) + "\n")
            log.write('wrong_reactant_loc = ' + str(wrong_reactant_loc) + "\n")
            log.write('question # = ' + str(question_count) + "\n")
            log.close()
            pass

        f.close()

f = open(xml_dir + "miss_react_text.xml", "a")
f.write('</quiz>\n\n\n')
f.close()

print 'Finished.'
