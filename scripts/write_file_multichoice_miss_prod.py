# Create by Hanlin Hu
# On Nov 15 2016
# Copyright: All rights reserved

# Generate moodle xml file (MultiChoice Prod)

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
reactants_all = func.get_molecules()

# Open a file to write
f = open("../xml/miss_prod_multichoice.xml", "w")

print "Name of the file: ", f.name

f.write('<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n')
f.write('<quiz>\n')
f.close()

for reactants in reactants_all:
    reagents_all = func.get_reagents(reactants[4]) # reactants - fgroup
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

            # base64 encoding image
            try:
                # Here we need to replace blank space with %20
                # Cannot use module urllib. e.g.: urllib.quote(str(product[0]))
                # The reason see 'url_string_test.py' result in test folder
                react_image = urllib2.urlopen(path + str(reactants[0]).replace(' ', '%20') + str('.png')).read()
                reactant_string = '\r\n'.join(textwrap.wrap(base64.b64encode(react_image), HTML_WRAP_WIDTH))
            except:
                print 'Image(reactant) not found: ' + str(reactants[0])

            try:
                wrg_fgr_image = urllib2.urlopen(path + str(wrong_product_fgr).replace(' ', '%20') + str('.png')).read()
                wrg_fgr_string = '\r\n'.join(textwrap.wrap(base64.b64encode(wrg_fgr_image), HTML_WRAP_WIDTH))
            except:
                print 'Image(wrong_product_fgr) not found: ' + str(wrong_product_fgr)

            try:
                wrg_par_image = urllib2.urlopen(path + str(wrong_product_par).replace(' ', '%20') + str('.png')).read()
                wrg_par_string = '\r\n'.join(textwrap.wrap(base64.b64encode(wrg_par_image), HTML_WRAP_WIDTH))
            except:
                print 'Image(wrong_product_par) not found: ' + str(wrong_product_par)

            try:
                wrg_loc_image = urllib2.urlopen(path + str(wrong_product_loc).replace(' ', '%20') + str('.png')).read()
                wrg_loc_string = '\r\n'.join(textwrap.wrap(base64.b64encode(wrg_loc_image), HTML_WRAP_WIDTH))
            except:
                print 'Image(wrong_product_loc) not found: ' + str(wrong_product_loc)

            try:
                prod_image = urllib2.urlopen(path + str(product[0]).replace(' ', '%20') + str('.png')).read()
                product_string = '\r\n'.join(textwrap.wrap(base64.b64encode(prod_image), HTML_WRAP_WIDTH))
            except:
                print 'Image not found: ' + str(product[0])

            f = open("../xml/miss_prod_multichoice.xml", "a")
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
            f.write('MultiChoice: ' + tag.remove_tag(str(reagents[0])))
            f.write('</text>\n')
            f.write('</name>\n')
            f.write('<questiontext format=\"html\">\n')
            f.write('<text>')
            f.write('<![CDATA[<table border=\"0\">' + '<tbody>' + '<tr>' + '<td rowspan=\"3\">' +
                    '<img src="data:image/png;base64,' + '\n' + str(reactant_string) + '"/>' +
                    '</center></td>' + '<td style=\"vertical-align: bottom; height: 60px;\"><center>' + str(reagents[0]) +
                    '</center></td>' + '<td rowspan=\"3\" style=\"width:60px\"><center>' +
                    '<p style=\"font-size:400%;\">?</p>' + '</center></td>' + '</tr>' + '<tr>' +
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
            f.write('<![CDATA[<p>' + '<img src="data:image/png;base64,' + str(product_string) + '"/></p>]]>\n')
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
            f.write('<text>' + str(feedback_wrong_product_fgr) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>')
            f.write('<![CDATA[<p>' + '<img src="data:image/png;base64,' + str(wrg_par_string) + '"/></p>]]>\n')
            f.write('</text>\n')
            f.write('<feedback format=\"html\">\n')
            f.write('<text>' + str(feedback_wrong_product_par) + '</text>\n')
            f.write('</feedback>\n')
            f.write('</answer>\n')

            f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
            f.write('<text>')
            f.write('<![CDATA[<p>' + '<img src="data:image/png;base64,' + str(wrg_loc_string) + '"/></p>]]>\n')
            f.write('</text>\n')
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

f = open("../xml/miss_prod_multichoice.xml", "a")
f.write('</quiz>\n\n\n')
f.close()

print 'Finished.'