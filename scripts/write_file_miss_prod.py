# Create by Hanlin Hu
# On Nov 07 2016
# Copyright: All rights reserved

# Generate moodle xml file

import urllib2
import base64
import textwrap
import lib.cirpy as cir    # ref: http://cirpy.readthedocs.io/en/latest/
import lib.functions as func

# width fot text wrap
HTML_WRAP_WIDTH = 79

path = "http://opsin.ch.cam.ac.uk/opsin/"

question_count = 1
reactants_all = func.get_molecules()

# Open a file to write
f = open("../xml/miss_prod.xml", "w")

print "Name of the file: ", f.name

f.write('<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n')
f.write('<quiz>\n')
f.close()

for reactants in reactants_all:
    reagents_all = func.get_reagents_prod(reactants[4])
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

        # canonical SMILES code
        try:
            prod_smi = cir.resolve(str(product[0]), 'smiles')
        except:
            print 'SMILES not found: ' + str(product[0])
            continue

        # base64 encoding image
        try:
            # Here we need to replace blank space with %20
            # Cannot use module urllib. e.g.: urllib.quote(str(product[0]))
            # The reason see 'url_string_test.py' result in test folder
            react_image = urllib2.urlopen(path + str(reactants[0]).replace(' ', '%20') + str('.png')).read()
            reactant_string = '\r\n'.join(textwrap.wrap(base64.b64encode(react_image), HTML_WRAP_WIDTH))
        except:
            print 'Image not found: ' + str(reactants[0])
            continue

        try:
            prod_image = urllib2.urlopen(path + str(product[0]).replace(' ', '%20') + str('.png')).read()
            product_string = '\r\n'.join(textwrap.wrap(base64.b64encode(prod_image), HTML_WRAP_WIDTH))
        except:
            print 'Image not found: ' + str(product[0])
            continue

        f = open("../xml/miss_prod.xml", "a")
        # print content to xml
        f.write('<!-- question: 0  -->\n')
        f.write('<question type=\"category\">\n')
        f.write('<category>\n')
        f.write('<text>$course$/Default for Chemistry/Product/' + str(q_type).title() + '</text>')
        f.write('</category>\n')
        f.write('</question>\n\n')
        f.write('<!-- question: 70300  -->\n')
        f.write('<question type=\"jme\">\n')
        f.write('<name>\n')
        f.write('<text>')
        f.write('Question Name (SMILES_rxn_aa_1a_2)')
        f.write('</text>\n')
        f.write('</name>\n')
        f.write('<questiontext format=\"html\">\n')
        f.write('<text>')
        f.write('<![CDATA[<table border=\"0\">' + '<tbody>' + '<tr>' + '<td rowspan=\"3\">' +
                '<img src="data:image/png;base64,' + '\n' + str(reactant_string) + '" ' + ' />' +
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
        f.write('<jmeoptions></jmeoptions>\n')
        f.write('<width>360</width>\n')
        f.write('<height>315</height>\n')
        f.write('<answer fraction=\"100\" format=\"moodle_auto_format\">\n')
        f.write('<text>')
        f.write('<![CDATA[' + str(prod_smi) + ']]>')
        f.write('</text>\n')
        f.write('<feedback format=\"html\">\n')
        f.write('<text></text>\n')
        f.write('</feedback>\n')
        f.write('</answer>\n')
        f.write('<answer fraction=\"0\" format=\"moodle_auto_format\">\n')
        f.write('<text>*</text>\n')
        f.write('<feedback format=\"html\">\n')
        f.write('<text>')
        f.write('<![CDATA[<p>' + '<img src="data:image/png;base64,' + '\n' + str(product_string) + '"/></p>]]>\n')
        f.write('</text>\n')
        f.write('</feedback>\n')
        f.write('</answer>\n')
        f.write('</question>\n\n')
        f.close()
        question_count += 1

f = open("../xml/miss_prod.xml", "a")
f.write('</quiz>\n\n\n')
f.close()

print 'Finished.'
