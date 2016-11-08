# Create by Hanlin Hu
# On Nov 06 2016
# Copyright: All rights reserved

import urllib

# expect: 1-chloro-3-methylbutane
# output: 1-chloro-3-methylbutane
print(urllib.quote('1-chloro-3-methylbutane'))


# expect: 1%20chloro%203%20methylbutane
# output: 1%20chloro%203%20methylbutane
print(urllib.quote('1 chloro 3 methylbutane'))

# expect: 2,3-dimethyl-1-butanol
# output: 2%2C3-dimethyl-1-butanol
print(urllib.quote('2,3-dimethyl-1-butanol'))


# expect: 1%20chloro%203%20methylbutane
# output: 1%20chloro%203%20methylbutane
print(str('1 chloro 3 methylbutane').replace(' ','%20'))