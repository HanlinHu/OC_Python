# Create by Hanlin Hu
# On Nov 06 2016
# Copyright: All rights reserved

import lib.functions as func

cursor = func.get_molecules()
for row in cursor:
  print(row)