# Created by Hanlin Hu
# On Nov 06 2016
# Copyright: All rights reserved

import sys
import sqlite3

def random_molecule(size):
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(random_molecule) Open database successfully."
    else:
        print "(random_molecule) Fail to open database."
        sys.exit()

    cursor = db.cursor()
    result = cursor.execute("SELECT * FROM Molecules WHERE carbons='" + str(size) + "' ORDER BY RANDOM() LIMIT 1;")
    result = result.fetchone()
    db.close()
    return result[0]

def get_molecules():
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(get_molecules) Open database successfully."
    else:
        print "(get_molecules) Fail to open database."
        sys.exit()

    cursor = db.cursor()
    result = cursor.execute("SELECT * FROM Molecules ORDER BY RANDOM();")
    result = result.fetchall()
    db.close()
    return result

def get_reagents_prod(fgroup):
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(get_reagents_prod) Open database successfully."
    else:
        print "(get_reagents_prod) Fail to open database."
        sys.exit()

    cursor = db.cursor()
    result = cursor.execute("SELECT * FROM Reagents WHERE reactant='" + str(fgroup) + "' ;")
    result = result.fetchall()
    db.close()
    return result

def get_reagents_react(fgroup):
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(get_reagents_react) Open database successfully."
    else:
        print "(get_reagents_react) Fail to open database."
        sys.exit()

    cursor = db.cursor()
    result = cursor.execute("SELECT * FROM Reagents WHERE product='" + str(fgroup) + "' ;")
    result = result.fetchall()
    db.close()
    return result

def get_product(fgroup, base, locant):
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(get_product) Open database successfully."
    else:
        print "(get_product) Fail to open database."
        sys.exit()

    cursor = db.cursor()
    result = cursor.execute("SELECT * FROM Molecules WHERE fgroup='" + str(fgroup) + "' AND base='" + str(base)
                            + "' AND locant='" + str(locant) + "' ;")
    result = result.fetchone()
    db.close()
    return result

def get_reactant(fgroup, base, locant):
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(get_reactant) Open database successfully."
    else:
        print "(get_reactant) Fail to open database."
        sys.exit()

    cursor = db.cursor()
    result = cursor.execute("SELECT * FROM Molecules WHERE fgroup='" + str(fgroup) + "' AND base='" + str(base)
                            + "' AND locant='" + str(locant) + "' ;")
    result = result.fetchone()
    db.close()
    return result

def get_wrong_reagent_1(name):
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(get_reactant) Open database successfully."
    else:
        print "(get_reactant) Fail to open database."
        sys.exit()
    cursor = db.cursor()
    result = cursor.execute("SELECT * FROM Reagents WHERE name !='" + str(name) + "'  ORDER BY RANDOM() LIMIT 1;")
    result = result.fetchone()
    db.close()
    return result[0]

def get_wrong_reagent_2(name1, name2):
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(get_reactant) Open database successfully."
    else:
        print "(get_reactant) Fail to open database."
        sys.exit()
    cursor = db.cursor()
    result = cursor.execute("SELECT * FROM Reagents WHERE name !='" + str(name1) + "' AND name !='" + str(name2) + "'  ORDER BY RANDOM() LIMIT 1;")
    result = result.fetchone()
    db.close()
    return result[0]

def get_wrong_reagent_3(name1, name2, name3):
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(get_reactant) Open database successfully."
    else:
        print "(get_reactant) Fail to open database."
        sys.exit()
    cursor = db.cursor()
    result = cursor.execute("SELECT * FROM Reagents WHERE name !='" + str(name1) + "' AND name !='" + str(name2) +
                "' AND name !='" + str(name3) + "'  ORDER BY RANDOM() LIMIT 1;")
    result = result.fetchone()
    db.close()
    return result[0]

def get_wrong_fgroup(fgroup, base, locant):
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(get_wrong_fgroup) Open database successfully."
    else:
        print "(get_wrong_fgroup) Fail to open database."
        sys.exit()

    cursor = db.cursor()
    result = cursor.execute("SELECT * FROM Molecules WHERE fgroup!='" + str(fgroup) + "' AND base='" + str(base) + "' AND locant='"
                            + str(locant) + "' ORDER BY RANDOM();")
    if result is None:
        db.close()
        print 'No result: Wrong F group'
        return 'no result'
    else:
        result = result.fetchone()
        db.close()
        return result[0]

def get_wrong_parent(fgroup, base, locant):
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(get_wrong_parent) Open database successfully."
    else:
        print "(get_wrong_parent) Fail to open database."
        sys.exit()
    cursor = db.cursor()

    if (fgroup[0:1]).isdigit():
        fgroup = fgroup[2:]

    result = cursor.execute("SELECT * FROM Molecules WHERE fgroup LIKE'" + "%" + str(fgroup) + "' AND base!='" + str(base)
                            + "' AND locant='" + str(locant) + "' ORDER BY RANDOM();")
    if result is None:
        db.close()
        print 'No result: Wrong Parent'
        return 'no result'
    else:
        result = result.fetchone()
        db.close()
        return result[0]

def get_wrong_locant(fgroup, base, locant, parent):
    db = sqlite3.connect('../database/Molecules.db')
    if db:
        print "(get_wrong_locant) Open database successfully."
    else:
        print "(get_wrong_locant) Fail to open database."
        sys.exit()
    cursor = db.cursor()
    result = cursor.execute("SELECT * FROM Molecules WHERE fgroup='" + str(fgroup) + "' AND base='" + str(base)
                            + "' AND locant!='" + str(locant) + "' ORDER BY RANDOM();")

    result = result.fetchall()

    if len(result) == 0:
        result = cursor.execute("SELECT * FROM Molecules WHERE fgroup='" + str(fgroup) + "' AND parent='" + str(parent)
                                + "' AND locant!='" + str(locant) + "' ORDER BY RANDOM();")
        result = result.fetchall()
        if len(result) == 0:
            db.close()
            print 'No Result: Wrong Locant'
            return 'no result'
        else:
            db.close()
            return result[0][0]
    else:
        db.close()
        return result[0][0]
