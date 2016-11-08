DROP TABLE IF EXISTS Molecules;
CREATE TABLE Molecules (
        name VARCHAR(255) NOT NULL,
        base VARCHAR(255) NOT NULL,
        parent VARCHAR(255) NOT NULL,
        carbons INT NOT NULL,
        fgroup VARCHAR(255) NOT NULL,
        locant INT NOT NULL
);

INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("propyne", "propane", "propane", 3, "alkyne", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("propyl methanoate", "methane", "methane", 1, "propyl ester", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("propene", "propane", "propane", 3, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("propanoyl chloride", "propane", "propane", 3, "acid chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("propanone", "propane", "propane", 3, "ketone", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("propanoic acid", "propane", "propane", 3, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("propane", "propane", "propane", 3, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("propanamide", "propane", "propane", 3, "amide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("propanal", "propane", "propane", 3, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("pentanoic acid", "pentane", "pentane", 5, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("pentane", "pentane", "pentane", 5, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("pentanal", "pentane", "pentane", 5, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("methyl propanoate", "propane", "propane", 3, "methyl ester", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("methyl ethanoate", "ethane", "ethane", 2, "methyl ester", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("methyl butanoate", "butane", "butane", 4, "methyl ester", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("methyl 2-methylpropanoate", "2-methylpropane", "propane", 3, "methyl ester", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-1-methylcyclopentane", "1-methylcyclopentane", "cyclopentane", 50, "3 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-2,2-dimethylbutane", "2,2-dimethylbutane", "butane", 4, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-2,2-dimethylpropane", "2,2-dimethylpropane", "propane", 3, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-2,3-dimethylbutane", "2,3-dimethylbutane", "butane", 4, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-2-methylbutane", "2-methylbutane", "butane", 4, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-2-methylcyclopentane", "2-methylcyclopentane", "cyclopentane", 50, "2 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-2-methylpentane", "2-methylpentane", "pentane", 5, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-2-methylpropane", "2-metylpropane", "propane", 3, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-3,3-dimethylbutane", "3,3-dimethylbutane", "butane", 4, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-3-methylbutane", "3-methylbutane", "butane", 4, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-3-methylcyclopentane", "3-methylcyclopentane", "cyclopentane", 50, "2 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-3-methylpentane", "3-methylpentane", "pentane", 5, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromo-4-methylpentane", "4-methylpentane", "pentane", 5, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromobutane", "butane", "butane", 4, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromohexane", "hexane", "hexane", 6, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromopentane", "pentane", "pentane", 5, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-bromopropane", "propane", "propane", 3, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("butanal", "butane", "butane", 4, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("butanoic acid", "butane", "butane", 4, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-butanol", "butane", "butane", 4, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("butanoyl chloride", "butane", "butane", 4, "acid chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-butene", "butane", "butane", 1, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-butyne", "butane", "butane", 1, "alkyne", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-1-methylcyclopentane", "1-methylcyclopentane", "cyclopentane", 50, "3 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-2,2-dimethylbutane", "2,2-dimethylbutane", "butane", 4, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-2,2-dimethylpropane", "2,2-dimethylpropane", "propane", 3, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-2,3-dimethylbutane", "2,3-dimethylbutane", "butane", 4, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-2-methylbutane", "2-methylbutane", "butane", 4, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-2-methylcyclopentane", "2-methylcyclopentane", "cyclopentane", 50, "2 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-2-methylpentane", "2-methylpentane", "pentane", 5, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-2-methylpropane", "2-metylpropane", "propane", 3, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-3,3-dimethylbutane", "3,3-dimethylbutane", "butane", 4, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-3-methylbutane", "3-methylbutane", "butane", 4, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-3-methylcyclopentane", "3-methylcyclopentane", "cyclopentane", 50, "2 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-3-methylpentane", "3-methylpentane", "pentane", 5, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloro-4-methylpentane", "4-methylpentane", "pentane", 5, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chlorobutane", "butane", "butane", 4, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chlorohexane", "hexane", "hexane", 6, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloropentane", "pentane", "pentane", 5, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-chloropropane", "propane", "propane", 3, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-hexanol", "hexane", "hexane", 6, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-hexene", "hexane", "hexane", 6, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-hexyne", "hexane", "hexane", 6, "alkyne", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-1-methylcyclopentane", "1-methylcyclopentane", "cyclopentane", 50, "3 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-2,2-dimethylbutane", "2,2-dimethylbutane", "butane", 4, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-2,2-dimethylpropane", "2,2-dimethylpropane", "propane", 3, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-2,3-dimethylbutane", "2,3-dimethylbutane", "butane", 4, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-2-methylbutane", "2-methylbutane", "butane", 4, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-2-methylcyclopentane", "2-methylcyclopentane", "cyclopentane", 50, "2 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-2-methylpentane", "2-methylpentane", "pentane", 5, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-2-methylpropane", "2-metylpropane", "propane", 3, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-3,3-dimethylbutane", "3,3-dimethylbutane", "butane", 4, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-3-methylbutane", "3-methylbutane", "butane", 4, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-3-methylcyclopentane", "3-methylcyclopentane", "cyclopentane", 50, "2 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-3-methylpentane", "3-methylpentane", "pentane", 5, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodo-4-methylpentane", "4-methylpentane", "pentane", 5, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodobutane", "butane", "butane", 4, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodohexane", "hexane", "hexane", 6, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodopentane", "pentane", "pentane", 5, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-iodopropane", "propane", "propane", 3, "1 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-methyl-1-cyclopentanol", "1-methylcyclopentane", "cyclopentane", 50, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-methyl-1-cyclopentene", "1-methylcyclopentane", "cyclopentane", 50, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-pentanol", "pentane", "pentane", 5, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-pentene", "pentane", "pentane", 5, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-pentyne", "pentane", "pentane", 5, "alkyne", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("1-propanol", "propane", "propane", 3, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,2-dimethyl-1-butanol", "2,2-dimethylbutane", "butane", 4, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,2-dimethyl-1-propanol", "2,2-dimethylpropane", "propane", 3, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,2-dimethyl-3-butanol", "2,2-dimethylbutane", "butane", 4, "alcohol", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,2-dimethyl-3-butanone", "2,2-dimethylbutane", "butane", 4, "ketone", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,2-dimethylbutanal", "2,2-dimethylbutane", "butane", 4, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,2-dimethylbutane", "2,2-dimethylbutane", "butane", 4, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,2-dimethylpropanal", "2,2-dimethylpropane", "propane", 3, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,2-dimethylpropane", "2,2-dimethylpropane", "propane", 3, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,2-dimethylpropanoic acid", "2,2-dimethylpropane", "propane", 3, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,2-dimethylbutanoic acid", "2,2-dimethylbutane", "butane", 4, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,3-dimethyl-1-butanol", "2,3-dimethylbutane", "butane", 4, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,3-dimethyl-1-butene", "2,3-dimethylbutane", "butane", 4, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,3-dimethyl-2-butanol", "2,3-dimethylbutane", "butane", 4, "alcohol", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,3-dimethyl-2-butene", "2,3-dimethylbutane", "butane", 4, "alkene", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,3-dimethylbutanal", "2,3-dimethylbutane", "butane", 4, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,3-dimethylbutane", "2,3-dimethylbutane", "butane", 4, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2,3-dimethylbutanoic acid", "2,3-dimetylbutane", "butane", 4, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-bromo-2,3-dimethylbutane", "2,3-dimethylbutane", "butane", 4, "3 bromide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-bromo-2-methylbutane", "2-methylbutane", "butane", 4, "3 bromide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-bromo-2-methylpentane", "2-methylpentane", "pentane", 5, "3 bromide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-bromo-2-methylpropane", "2-methylpropane", "propane", 3, "3 bromide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-bromo-3-methylbutane", "3-methylbutane", "butane", 4, "2 bromide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-bromo-3-methylpentane", "3-methylpentane", "pentane", 5, "2 bromide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-bromo-4-methylpentane", "4-methylpentane", "pentane", 5, "2 bromide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-bromobutane", "butane", "butane", 4, "2 bromide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-bromohexane", "hexane", "hexane", 6, "2 bromide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-bromopentane", "pentane", "pentane", 5, "2 bromide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-bromopropane", "propane", "propane", 3, "2 bromide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-butanol", "butane", "butane", 4, "alcohol", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-butyne", "butane", "butane", 4, "alkyne", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-chloro-2,3-dimethylbutane", "2,3-dimethylbutane", "butane", 4, "3 chloride", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-chloro-2-methylbutane", "2-methylbutane", "butane", 4, "3 chloride", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-chloro-2-methylpropane", "2-methylpropane", "propane", 3, "3 chloride", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-chloro-3-methylbutane", "3-methylbutane", "butane", 4, "2 chloride", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-chloro-2-methylpentane", "2-methylpentane", "pentane", 5, "3 chloride", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-chloro-3-methylpentane", "3-methylpentane", "pentane", 5, "2 chloride", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-chloro-4-methylpentane", "4-methylpentane", "pentane", 5, "2 chloride", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-chlorobutane", "butane", "butane", 4, "2 chloride", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-chlorohexane", "hexane", "hexane", 6, "2 chloride", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-chloropentane", "pentane", "pentane", 5, "2 chloride", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-chloropropane", "propane", "propane", 3, "2 chloride", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-ethyl-1-butanol", "2-ethylbutane", "butane", 4, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-ethylbutanal", "2-ethylbutane", "butane", 4, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-ethylbutanoic acid", "2-ethylbutane", "butane", 4, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-hexanol", "hexane", "hexane", 6, "alcohol", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-hexanone", "hexane", "hexane", 6, "ketone", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-hexyne", "hexane", "hexane", 6, "alkyne", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-iodo-2,3-dimethylbutane", "2,3-dimethylbutane", "butane", 4, "3 iodide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-iodo-2-methylbutane", "2-methylbutane", "butane", 4, "3 iodide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-iodo-2-methylpentane", "2-methylpentane", "pentane", 5, "3 iodide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-iodo-2-methylpropane", "2-methylpropane", "propane", 3, "3 iodide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-iodo-3-methylbutane", "3-methylbutane", "butane", 4, "2 iodide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-iodo-4-methylpentane", "4-methylpentane", "pentane", 5, "2 iodide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-iodobutane", "butane", "butane", 4, "2 iodide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-iodopentane", "pentane", "pentane", 5, "2 iodide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-iodohexane", "hexane", "hexane", 6, "2 iodide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-iodopropane", "propane", "propane", 3, "2 iodide", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-1-butanol", "2-methylbutane", "butane", 4, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-1-butene", "2-methylbutane", "butane", 4, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-1-pentanol", "2-methylpentane", "pentane", 5, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-1-pentene", "2-methylpentane", "pentane", 5, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-1-propanol", "2-methylpropane", "propane", 3, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-2-butanol", "2-methylbutane", "butane", 4, "alcohol", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-2-butene", "2-methylbutane", "butane", 4, "alkene", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-2-pentanol", "2-methylpentane", "pentane", 5, "alcohol", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-2-pentene", "2-methylpentane", "pentane", 5, "alkene", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-2-propanol", "2-methylpropane", "propane", 3, "alcohol", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-3-pentanol", "2-methylpentane", "pentane", 5, "alcohol", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-3-pentanone", "2-methylpentane", "pentane", 5, "ketone", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-3-pentene", "2-methylpentane", "pentane", 5, "alkene", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methyl-3-pentyne", "2-methylpentane", "pentane", 5, "alkyne", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylbutanal", "2-methylbutane", "butane", 4, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylbutane", "2-methylbutane", "butane", 4, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylbutanoic acid", "2-methylbutane", "butane", 4, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylcyclopentanol", "2-methylcyclopentane", "cyclopentane", 50, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylcyclopentanone", "2-methylcyclopentane", "cyclopentane", 50, "ketone", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylpentanal", "2-methylpentane", "pentane", 5, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylpentane", "2-methylpentane", "pentane", 5, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylpentanoic acid", "2-methylpentane", "pentane", 5, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylpropanal", "2-methylpropane", "propane", 3, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylpropane", "2-methylpropane", "propane", 3, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylpropanoic acid", "2-methylpropane", "propane", 3, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylpropanoyl chloride", "2-methylpropane", "propane", 3, "acid chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-methylpropene", "2-methylpropane", "propane", 3, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-pentanol", "pentane", "pentane", 5, "alcohol", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-pentanone", "pentane", "pentane", 5, "ketone", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-pentyne", "pentane", "pentane", 5, "alkyne", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("2-propanol", "propane", "propane", 3, "alcohol", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3,3-dimethyl-1-butanol", "3,3-dimethylbutane", "butane", 4, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3,3-dimethyl-1-butene", "3,3-dimethylbutane", "butane", 4, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3,3-dimethyl-1-butyne", "3,3-dimethylbutane", "butane", 4, "alkyne", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3,3-dimethylbutanal", "3,3-dimethylbutane", "butane", 4, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3,3-dimethylbutanoic acid", "3,3-dimethylbutane", "butane", 4, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-bromo-2,2-dimethylbutane", "2,2-dimethylbutane", "butane", 4, "2 bromide", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-bromo-2-methylpentane", "2-methylpentane", "pentane", 5, "2 bromide", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-bromohexane", "hexane", "hexane", 6, "2 bromide", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-bromopentane", "pentane", "pentane", 5, "2 bromide", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-chloro-2,2-dimethylbutane", "2,2-dimethylbutane", "butane", 4, "2 chloride", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-chloro-2-methylpentane", "2-methylpentane", "pentane", 5, "2 chloride", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-chlorohexane", "hexane", "hexane", 6, "2 chloride", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-chloropentane", "pentane", "pentane", 5, "2 chloride", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-hexanol", "hexane", "hexane", 6, "alcohol", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-hexanone", "hexane", "hexane", 6, "ketone", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-hexyne", "hexane", "hexane", 6, "alkyne", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-iodo-2-methylpentane", "2-methylpentane", "pentane", 5, "2 iodide", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-iodohexane", "hexane", "hexane", 6, "2 iodide", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-iodopentane", "pentane", "pentane", 5, "2 iodide", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methyl-1-butanol", "3-methylbutane", "butane", 4, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methyl-1-butene", "3-methylbutane", "butane", 4, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methyl-1-butyne", "3-methylbutane", "butane", 4, "alkyne", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methyl-1-cyclopentene", "3-methylcyclopentane", "cyclopentane", 50, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methyl-1-pentanol", "3-methylpentane", "pentane", 5, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methyl-2-butanol", "3-methylbutane", "butane", 4, "alcohol", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methyl-2-butanone", "3-methylbutane", "butane", 4, "ketone", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methyl-2-pentanol", "3-methylpentane", "pentane", 5, "alcohol", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methyl-2-pentanone", "3-methylpentane", "pentane", 5, "ketone", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methylbutanal", "3-methylbutane", "butane", 4, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methylbutanoic acid", "3-methylbutane", "butane", 4, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methylcyclopentanol", "3-methylcyclopentane", "cyclopentane", 50, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methylcyclopentanone", "3-methylcyclopentane", "cyclopentane", 50, "ketone", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methylpentanal", "3-methylpentane", "pentane", 5, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methylpentane", "3-methylpentane", "pentane", 5, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-methylpentanoic acid", "3-methylpentane", "pentane", 5, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-pentanol", "pentane", "pentane", 5, "alcohol", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("3-pentanone", "pentane", "pentane", 5, "ketone", 3);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("4-methyl-1-pentanol", "4-methylpentane", "pentane", 5, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("4-methyl-1-pentene", "4-methylpentane", "pentane", 5, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("4-methyl-1-pentyne", "4-methylpentane", "pentane", 5, "alkyne", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("4-methyl-2-pentanol", "4-methylpentane", "pentane", 5, "alcohol", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("4-methyl-2-pentanone", "4-methylpentane", "pentane", 5, "ketone", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("4-methylcyclopentene", "4-methylcyclopentane", "cyclopentane", 50, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("4-methylpentanal", "4-methylpentane", "pentane", 5, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("4-methylpentanoic acid", "4-methylpentane", "pentane", 5, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("benzene", "benzene", "benzene", 66, "benzene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("phenol", "benzene", "benzene", 66, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("bromobenzene", "benzene", "benzene", 66, "bromobenzene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("bromocyclohexane", "cyclohexane", "cyclohexane", 60, "2 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("bromocyclopentane", "cyclopentane", "cyclopentane", 50, "2 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("bromoethane", "ethane", "ethane", 2, "1 bromide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("butane", "butane", "butane", 4, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("butanone", "butane", "butane", 4, "ketone", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("chlorobenzene", "benzene", "benzene", 66, "chlorobenzene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("chlorocyclohexane", "cyclohexane", "cyclohexane", 60, "2 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("chlorocyclopentane", "cyclopentane", "cyclopentane", 50, "2 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("chloroethane", "ethane", "ethane", 2, "1 chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("cyclohexane", "cyclohexane", "cyclohexane", 60, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("cyclohexanol", "cyclohexane", "cyclohexane", 60, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("cyclohexanone", "cyclohexane", "cyclohexane", 60, "ketone", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("cyclohexene", "cyclohexane", "cyclohexane", 60, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("cyclopentane", "cyclopentane", "cyclopentane", 50, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("cyclopentanecarboxylic acid", "cyclopentane", "cyclopentane", 50, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("cyclopentanol", "cyclopentane", "cyclopentane", 50, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("cyclopentene", "cyclopentane", "cyclopentane", 50, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("ethanal", "ethane", "ethane", 2, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("ethanamide", "ethane", "ethane", 2, "amide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("ethane", "ethane", "ethane", 2, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("ethanoic acid", "ethane", "ethane", 2, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("ethanol", "ethane", "ethane", 2, "alcohol", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("ethanoyl chloride", "ethane", "ethane", 2, "acid chloride", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("ethene", "ethane", "ethane", 2, "alkene", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("ethyl ethanoate", "ethane", "ethane", 2, "ester", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("ethyl methanoate", "methane", "methane", 1, "ester", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("ethyl propanoate", "propane", "propane", 3, "ester", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("ethyne", "ethane", "ethane", 2, "alkyne", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("hexanal", "hexane", "hexane", 6, "aldehyde", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("hexane", "hexane", "hexane", 6, "alkane", 2);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("hexanoic acid", "hexane", "hexane", 6, "carboxylic acid", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("iodocyclohexane", "cyclohexane", "cyclohexane", 60, "2 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("iodocyclopentane", "cyclopentane", "cyclopentane", 50, "2 iodide", 1);
INSERT INTO Molecules (name, base, parent, carbons, fgroup, locant) VALUES ("iodoethane", "ethane", "ethane", 2, "1 iodide", 1);



DROP TABLE IF EXISTS Reagents;
CREATE TABLE Reagents (
       name VARCHAR(255) NOT NULL,
       reactant VARCHAR(255) NOT NULL,
       product VARCHAR(255) NOT NULL,
       solvent VARCHAR(255)
);

-- halide conversion reaction
INSERT INTO Reagents (name, reactant, product, solvent) VALUES 
("NaCl", "1 bromide", "1 chloride", "DSMO");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES 
("NaCl", "2 bromide", "2 chloride", "DSMO");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES 
("NaCl", "1 iodide", "1 chloride", "DSMO");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES 
("NaCl", "2 iodide", "2 chloride", "DSMO");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES 
("NaBr", "1 chloride", "1 bromide", "DMSO");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaBr", "2 chloride", "2 bromide", "DMSO");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES 
("NaBr", "1 iodide", "1 bromide", "DMSO");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaBr", "2 iodide", "2 bromide", "DMSO");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaI", "1 chloride", "1 iodide", "DMSO");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaI", "2 chloride", "2 iodide", "DMSO");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaI", "1 bromide", "1 iodide", "DMSO");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaI", "2 bromide", "2 iodide", "DMSO");

-- alcohol/ether formation
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaOH", "1 chloride", "alcohol", "H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaOH", "1 bromide", "alcohol", "H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaOH", "1 iodide", "alcohol", "H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaOMe", "1 chloride", "methyl ether", "MeOH");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaOMe", "1 bromide", "methyl ether", "MeOH");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaOMe", "1 iodide", "methyl ether", "MeOH");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaOEt", "1 chloride", "alcohol", "EtOH");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaOEt", "1 bromide", "alcohol", "EtOH");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("NaOEt", "1 iodide", "alcohol", "EtOH");

-- halide alcohol transforms
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("H<sub>2</sub>O", "3 chloride", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("H<sub>2</sub>O", "3 bromide", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("H<sub>2</sub>O", "3 iodide", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("MeOH", "3 chloride", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("MeOH", "3 bromide", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("MeOH", "3 iodide", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("EtOH", "3 chloride", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("EtOH", "3 bromide", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("EtOH", "3 iodide", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("H<sub>2</sub>O, heat", "3 chloride", "alkene", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("H<sub>2</sub>O, heat", "3 bromide", "alkene", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("H<sub>2</sub>O, heat", "3 iodide", "alkene", "");

-- alcohol halide transforms
INSERT INTO Reagents (name, reactant, product, solvent) VALUES 
("PBr<sub>3</sub>", "alcohol", "1 bromide", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES 
("PBr<sub>3</sub>", "alcohol", "2 bromide", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES 
("SOCl<sub>2</sub>, pyridine", "alcohol", "1 chloride", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES 
("SOCl<sub>2</sub>, pyridine", "alcohol", "2 chloride", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES 
("HCl, ZnCl<sub>2</sub>", "alcohol", "1 chloride", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("HCl", "alcohol", "1 chloride", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("HCl", "alcohol", "2 chloride", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("HCl", "alcohol", "3 chloride", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("HBr", "alcohol", "1 bromide", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("HBr", "alcohol", "2 bromide", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("HBr", "alcohol", "3 bromide", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("HI", "alcohol", "1 iodide", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("HI", "alcohol", "2 iodide", "");
INSERT INTO Reagents (name, reactant, product, solvent) VALUES
("HI", "alcohol", "3 iodide", "");

-- pseudo-halide reactions
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("TsCl", "alcohol", "toslate", "pyridine");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) TsCl / pyridine <br> 2) NaCl", "alcohol", "1 chloride", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) TsCl / pyridine <br> 2) NaCl", "alcohol", "2 chloride", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) TsCl / pyridine <br> 2) NaBr", "alcohol", "1 bromide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) TsCl / pyridine <br> 2) NaBr", "alcohol", "2 bromide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) TsCl / pyridine <br> 2) NaI", "alcohol", "1 iodide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) TsCl / pyridine <br> 2) NaI", "alcohol", "2 iodide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) TsCl, py <br> 2) NaOMe", "alcohol", "methyl ether", "");

-- ether formations
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("NaH", "alcohol", "alkoxide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) NaH <br> 2) MeI", "alcohol", "methyl ether", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) NaH <br> 2) EtI", "alcohol", "ethyl ether", "");

-- alkene formation E2
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("t-BuOK", "1 chloride", "alkene", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("t-BuOK", "1 bromide", "alkene", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("t-BuOK", "1 iodide", "alkene", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("t-BuOK", "1 chloride", "alkene", "t-BuOH");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("t-BuOK", "1 bromide", "alkene", "t-BuOH");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("t-BuOK", "1 iodide", "alkene", "t-BuOH");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("conc H<sub>2</sub>SO<sub>4</sub>", "alcohol", "alkene", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("conc H<sub>2</sub>SO<sub>4</sub>, heat", "alcohol", "alkene", "");
INSERT INTO Reagents (name, reactant, product, solvent) 

-- miscellaneous?
VALUES ("H<sub>3</sub>O<sup>+</sup>", "alkene", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sub>2</sub> / Pt", "alkene", "alkane", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sub>2</sub> / Pt", "alkyne", "alkane", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sub>2</sub> / Pt", "ketone", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sub>2</sub> / Pd", "alkene", "alkane", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sub>2</sub> / Pd", "alkyne", "alkane", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sub>2</sub> / Pd", "ketone", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sub>2</sub> / Ni", "alkene", "alkane", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sub>2</sub> / Ni", "alkyne", "alkane", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sub>2</sub> / Ni", "ketone", "alcohol", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Cl<sub>2</sub>", "alkene", "dichloride", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Br<sub>2</sub>", "alkene", "dichloride", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) Br<sub>2</sub>, CCl<sub>4</sub> <br> 2) xs NaNH<sub>2</sub>, NH<sub>3(l)</sub> <br> 3) H<sub>2</sub>O", "alkene", "alkyne", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sub>2</sub>SO<sub>4</sub>, H<sub>2</sub>O, HgSO<sub>4</sub>", "alkyne", "ketone", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) R<sub>2</sub>BH <br> 2) H<sub>2</sub>O<sub>2</sub>, NaOH", "alkyne", "aldehyde", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Br<sub>2</sub>, <i>h</i>v", "alkane", "1 bromide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Br<sub>2</sub>, <i>h</i>v", "alkane", "2 bromide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Br<sub>2</sub>, <i>h</i>v", "alkane", "3 bromide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) Br<sub>2</sub>, <i>h</i>v <br> 2) NaOMe", "alkane", "alkene", "");

-- reduction reactions
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("NaBH<sub>4</sub>", "aldehyde", "alcohol", "MeOH");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("NaBH<sub>4</sub>", "ketone", "alcohol", "MeOH");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) LAH", "aldehyde", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) LAH", "ketone", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) LAH", "carboxylic acid", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) xs LAH", "acid chloride", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) xs LAH", "anhydride", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) xs LAH", "methyl ester", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) xs LAH", "ethyl ester", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) xs LAH", "propyl ester", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) xs LAH", "amide", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) xs LAH", "methyl amide", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) xs LAH", "dimethyl amide", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) xs LAH", "ethyl amide", "alcohol", "2) H<sub>2</sub>O");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) xs LAH", "diethyl amide", "alcohol", "2) H<sub>2</sub>O");

-- oxidation reactions
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("CrO<sub>3</sub>, H<sub>3</sub>O<sup>+</sup>", "alcohol", "ketone", "acetone");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("CrO<sub>3</sub>, H<sub>3</sub>O<sup>+</sup>", "alcohol", "carboxylic acid", "acetone");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Na<sub>2</sub>Cr<sub>2</sub>O<sub>7</sub> <br> H<sub>2</sub>SO<sub>4</sub>, H<sub>2</sub>O", "alcohol", "ketone", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Na<sub>2</sub>Cr<sub>2</sub>O<sub>7</sub> <br> H<sub>2</sub>SO<sub>4</sub>, H<sub>2</sub>O", "alcohol", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("PCC", "alcohol", "ketone", "CH<sub>2</sub>Cl<sub>2</sub>");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("PCC", "alcohol", "aldehyde", "CH<sub>2</sub>Cl<sub>2</sub>");

-- reactions of benzene
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) KMnO<sub>4</sub>, H<sub>2</sub>O, heat <br> 2) H<sub>3</sub>O<sup>+</sup>", "benzene", "benzenecarboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Br<sub>2</sub>", "benzene", "bromobenzene", "FeBr<sub>3</sub>");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Br<sub>2</sub>", "benzene", "bromobenzene", "AlBr<sub>3</sub>");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Cl<sub>2</sub>", "benzene", "chlorobenzene", "FeCl<sub>3</sub>");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Cl<sub>2</sub>", "benzene", "chlorobenzene", "AlCl<sub>3</sub>");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("Fuming H2SO4", "benzene", "benzenesulfonic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("HNO<sub>3</sub>, H<sub>2</sub>SO<sub>4</sub>", "benzene", "nitrobenzene", "");

-- carboxylic derivative reactions
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("SOCl<sub>2</sub>", "carboxylic acid", "acid chloride", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sup>+</sup>, H<sub>2</sub>O", "methyl ester", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sup>+</sup>, H<sub>2</sub>O", "ethyl ester", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sup>+</sup>, H<sub>2</sub>O", "propyl ester", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sup>+</sup>, H<sub>2</sub>O, heat", "amide", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sup>+</sup>, H<sub>2</sub>O, heat", "methyl amide", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sup>+</sup>, H<sub>2</sub>O, heat", "dimethyl amide", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sup>+</sup>, H<sub>2</sub>O, heat", "ethyl amide", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sup>+</sup>, H<sub>2</sub>O, heat", "diethyl amide", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sup>+</sup>, MeOH", "carboxylic acid", "methyl ester", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sup>+</sup>, EtOH", "carboxylic acid", "ethyl ester", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H<sub>2</sub>O, pyridine", "acid chloride", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("MeOH, pyridine", "acid chloride", "methyl ester", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("EtOH, pyridine", "acid chloride", "ethyl ester", "");

-- esters to amides
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("NH<sub>3</sub>", "methyl ester", "amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("NH<sub>3</sub>", "ethyl ester", "amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("NH<sub>3</sub>", "propyl ester", "amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("MeNH<sub>2</sub>", "methyl ester", "methyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("MeNH<sub>2</sub>", "ethyl ester", "methyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("MeNH<sub>2</sub>", "propyl ester", "methyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("(Me)<sub>2</sub>NH", "methyl ester", "dimethyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("(Me)<sub>2</sub>NH", "ethyl ester", "dimehtyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("(Me)<sub>2</sub>NH", "propyl ester", "dimethyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("EtNH<sub>2</sub>", "methyl ester", "ethyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("EtNH<sub>2</sub>", "ethyl ester", "ethyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("EtNH<sub>2</sub>", "propyl ester", "ethyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("(Et)<sub>2</sub>NH", "methyl ester", "diethyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("(Et)<sub>2</sub>NH", "ethyl ester", "diehtyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("(Et)<sub>2</sub>NH", "propyl ester", "diethyl amide", "");

-- Acid chlorides to amides
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("xs NH<sub>3</sub>", "acid chloride", "amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("xs MeNH<sub>2</sub>", "acid chloride", "methyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("xs (Me)<sub>2</sub>NH", "acid chloride", "dimethyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("xs EtNH<sub>2</sub>", "acid chloride", "ethyl amide", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("xs (Et)<sub>2</sub>NH", "acid chloride", "diethyl amide", ""); 

-- carboxylic derivative reduction reactions
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) LiAl(t-BuO)<sub>3</sub>H <br> 2) H<sub>2</sub>O", "acid chloride", "aldehyde", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) DIBAH <br> 2) H<sub>2</sub>O", "methyl ester", "aldehyde", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) DIBAH <br> 2) H<sub>2</sub>O", "ethyl ester", "aldehyde", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) DIBAH <br> 2) H<sub>2</sub>O", "propyl ester", "aldehyde", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) NaOH, heat <br> 2) H<sub>3</sub>O<sup>+</sup>", "amide", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) NaOH, heat <br> 2) H<sub>3</sub>O<sup>+</sup>", "methyl amide", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) NaOH, heat <br> 2) H<sub>3</sub>O<sup>+</sup>", "dimethyl amide", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) NaOH, heat <br> 2) H<sub>3</sub>O<sup>+</sup>", "ethyl amide", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) NaOH, heat <br> 2) H<sub>3</sub>O<sup>+</sup>", "diethyl amide", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) NaOH <br> 2) H<sub>3</sub>O<sup>+</sup>", "methyl ester", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) NaOH <br> 2) H<sub>3</sub>O<sup>+</sup>", "ethyl ester", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("1) NaOH <br> 2) H<sub>3</sub>O<sup>+</sup>", "propyl ester", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H3O+, heat ", "methyl ester", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H3O+, heat ", "ethyl ester", "carboxylic acid", "");
INSERT INTO Reagents (name, reactant, product, solvent) 
VALUES ("H3O+, heat ", "propyl ester", "carboxylic acid", "");