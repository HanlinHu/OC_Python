# Create by Hanlin Hu
# On Nov 07 2016
# Copyright: All rights reserved

import lib.cirpy as cir

# expect: CC(C)C(C)CO
# output: CC(C)C(C)CO
print cir.resolve('2,3-dimethyl-1-butanol', 'smiles')