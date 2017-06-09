# Created by Hanlin Hu
# On Nov 20 2016
# Copyright: All rights reserved

# download canonical SMILES code from NCI/NIH

#!/usr/bin/env python2.7
import sys
sys.path.append('../')

import lib.functions as func
import lib.cirpy as cir     # ref: http://cirpy.readthedocs.io/en/latest/

smi_dirc = '../smi/'
extension_name = '.smi'

molecules_all = func.get_molecules()
for molecules in molecules_all:
    molecules_name = molecules[0]   # molecules name
    molecules_smi = cir.resolve(str(molecules_name), 'smiles')

    file_name = molecules_name
    f = open(str(smi_dirc) + str(file_name) + str(extension_name), 'w+')   # w+ : write (overwrite exists)
    f.write(str(molecules_smi))
    f.close()

print "Finish"
