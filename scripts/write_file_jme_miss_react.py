# Create by Hanlin Hu
# On May 15 2016
# Copyright: All rights reserved

# Generate moodle xml file (JME)

import urllib2
import base64
import textwrap
import lib.cirpy as cir    # ref: http://cirpy.readthedocs.io/en/latest/
import lib.functions as func
import lib.remove_tag as tag

# width fot text wrap
HTML_WRAP_WIDTH = 79

courseName = "$course$/Default for Chemistry/Product/"
path = "http://opsin.ch.cam.ac.uk/opsin/"

question_count = 1
products_all = func.get_molecules()

# Open a file to write
f = open("../xml/miss_react_jme.xml", "w")

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

        try:
            react_smi = cir.resolve(str(reactant[0]), 'smiles')
        except:
            print 'SMILES not found: ' + str(reactant[0])
            continue

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
            react_image = urllib2.urlopen(path + str(reactant[0]).replace(' ', '%20') + str('.png')).read()
            reactant_string = '\r\n'.join(textwrap.wrap(base64.b64encode(react_image), HTML_WRAP_WIDTH))
        except:
            print 'Image not found: ' + str(reactant[0])

        f = open("../xml/miss_react_jme.xml", "a")
        # print content to xml
        f.write('<!-- question: 0  -->\n')
        f.write('<question type=\"category\">\n')
        f.write('<category>\n')
        f.write('<text>' + str(courseName) + str(q_type).title() + '</text>')
        f.write('</category>\n')
        f.write('</question>\n\n')
        f.write('<!-- question: 70300  -->\n')
        f.write('<question type=\"jme\">\n')
        f.write('<name>\n')
        f.write('<text>')
        f.write('JME: ' + tag.remove_tag(str(reagents[0])))
        f.write('</text>\n')
        f.write('</name>\n')
        f.write('<questiontext format=\"html\">\n')
        f.write('<text>')
        f.write('<![CDATA[<table border=\"0\">' + '<tbody>' + '<tr>' + '<td rowspan=\"3\">' +
                '<p style=\"font-size:400%;\">?</p>' +
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
        f.write('<jmeoptions></jmeoptions>\n')
        f.write('<width>360</width>\n')
        f.write('<height>315</height>\n')
        f.write('<answer fraction=\"100\" format=\"moodle_auto_format\">\n')
        f.write('<text>')
        f.write('<![CDATA[' + str(react_smi) + ']]>')
        f.write('</text>\n')
        f.write('<feedback format=\"html\">\n')
        f.write('<text></text>\n')
        f.write('</feedback>\n')
        f.write('</answer>\n')
        f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
        f.write('<text>*</text>\n')
        f.write('<feedback format=\"html\">\n')
        f.write('<text>')
        f.write('<![CDATA[<p>' + '<img src="data:image/png;base64,' + '\n' + str(reactant_string) + '"/></p>]]>\n')
        f.write('</text>\n')
        f.write('</feedback>\n')
        f.write('</answer>\n')
        f.write('</question>\n\n')
        f.close()
        question_count += 1

f = open("../xml/miss_react_jme.xml", "a")
f.write('</quiz>\n\n\n')
f.close()

print 'Finished.'