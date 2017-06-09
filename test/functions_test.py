# Create by Hanlin Hu
# On Nov 06 2016
# Copyright: All rights reserved

#!/usr/bin/env python2.7
import sys
sys.path.append('../')
import lib.functions as func

# Test examples:
# -------------------------------------------------------------------
# data = func.random_molecule(3)
# print data

# Test: get_molecules needs to change codes in functions.py
# data = func.get_molecules()
# print data

# Test: get_reagents needs to change codes in functions.py
# data = func.get_reagents('1 bromide')
# print data

# data = func.get_product('alkane', 'pentane', 2)
# print data

# data = func.get_wrong_fgroup('alkane', 'pentane', 2)
# print data

# data = func.get_wrong_parent('alkane', 'pentane', 2)
# print data

# data = func.get_wrong_locant('alkane', 'pentane',  2 , 'pentane')
# print data

# data = func.get_wrong_locant('alkane', 'propane',  1 , 'propane')
# print data

# data = func.get_wrong_reagent_1('1) LAH')
# print data
#
# data1 = func.get_wrong_reagent_2('1) LAH', data)
# print data1
#
# data2 = func.get_wrong_reagent_3('1) LAH', data, data1)
# print data2
