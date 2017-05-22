# Create by Hanlin Hu
# On May 15 2017
# Copyright: All rights reserved

# Generate moodle xml file (MultiChoice)

import urllib2
import base64
import textwrap
import lib.functions as func
import lib.remove_tag as tag

# width fot text wrap
HTML_WRAP_WIDTH = 3000

courseName = "$course$/Default for Chemistry/Product/"
path = "http://opsin.ch.cam.ac.uk/opsin/"

question_count = 1
products_all = func.get_molecules()

# Open a file to write
f = open("../xml/miss_react_multichoice.xml", "w")

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
                wrg_fgr_image = urllib2.urlopen(path + str(wrong_reactant_fgr).replace(' ', '%20') + str('.png')).read()
                wrg_fgr_string = '\r\n'.join(textwrap.wrap(base64.b64encode(wrg_fgr_image), HTML_WRAP_WIDTH))
            except:
                print 'Image(wrong_product_fgr) not found: ' + str(wrong_reactant_fgr)

            try:
                wrg_par_image = urllib2.urlopen(path + str(wrong_reactant_par).replace(' ', '%20') + str('.png')).read()
                wrg_par_string = '\r\n'.join(textwrap.wrap(base64.b64encode(wrg_par_image), HTML_WRAP_WIDTH))
            except:
                print 'Image(wrong_reactant_par) not found: ' + str(wrong_reactant_par)

            try:
                wrg_loc_image = urllib2.urlopen(path + str(wrong_reactant_loc).replace(' ', '%20') + str('.png')).read()
                wrg_loc_string = '\r\n'.join(textwrap.wrap(base64.b64encode(wrg_loc_image), HTML_WRAP_WIDTH))
            except:
                print 'Image(wrong_product_loc) not found: ' + str(wrong_reactant_loc)

            try:
                react_image = urllib2.urlopen(path + str(reactant[0]).replace(' ', '%20') + str('.png')).read()
                react_string = '\r\n'.join(textwrap.wrap(base64.b64encode(react_image), HTML_WRAP_WIDTH))
            except:
                print 'Image not found: ' + str(reactant[0])

            f = open("../xml/miss_react_multichoice.xml", "a")
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
            f.write('MultiChoice: miss_react ' + tag.remove_tag(str(reagents[0])))
            f.write('</text>\n')
            f.write('</name>\n')
            f.write('<questiontext format=\"html\">\n')
            f.write('<text>')
            f.write('<![CDATA[<table border=\"0\">' + '<tbody>' + '<tr>' + '<td rowspan=\"3\">' +
                    '<p style=\"font-size:400%;\">?</p>'+
                    '</center></td>' + '<td style=\"vertical-align: bottom; height: 60px;\"><center>' + str(reagents[0]) +
                    '</center></td>' + '<td rowspan=\"3\" style=\"width:60px\"><center>' +
                    '<img src="data:image/png;base64,' + '\n' + str(product_string) + '"/>' +
                    '</center></td>' + '</tr>' + '<tr>' +
                    '<td>' + '<center><b>-------------------------></b></center>' + '</td>' + '</tr>' +
                    '<tr>' + '<td style=\"vertical-align:top; height:60px\">' + '<center>' + str(reagents[3]) +
                    '</center>' + '</td>' + '</tr>' + '</tbody>' + "</table><br><br>]]>")
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
            f.write('<text>')
            f.write('<![CDATA[<p>' + '<img src="data:image/png;base64,' + str(react_string) + '"/></p>]]>\n')
            f.write('</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text></text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>')
            f.write('<![CDATA[<p>' + '<img src="data:image/png;base64,' + str(wrg_fgr_string) + '"/></p>]]>\n')
            f.write('</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_reactant_fgr) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>')
            f.write('<![CDATA[<p>' + '<img src="data:image/png;base64,' + str(wrg_par_string) + '"/></p>]]>\n')
            f.write('</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_reactant_par) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>')
            f.write('<![CDATA[<p>' + '<img src="data:image/png;base64,' + str(wrg_loc_string) + '"/></p>]]>\n')
            f.write('</text>\n')
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

f = open("../xml/miss_react_multichoice.xml", "a")
f.write('</quiz>\n\n\n')
f.close()

print 'Finished.'