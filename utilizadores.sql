USE BSN

CREATE ROLE Proprietario, Administrador, Analista;

GRANT ALL PRIVILEGES ON BSN.* TO Proprietario;
GRANT SELECT, INSERT, UPDATE, DELETE ON BSN.* TO Administrador
GRANT SELECT ON BSN.* TO Analista;

CREATE USER 'bernardo'@'localhost'
    IDENTIFIED BY 'bernardo1963';

CREATE USER 'sabrina'@'localhost'
    IDENTIFIED BY 'sabrina70';

CREATE USER 'nelson'@'localhost'
    IDENTIFIED BY 'nelsonseba65';

GRANT Proprietario TO bernardo, sabrina, nelson;

CREATE USER 'antonio'@'localhost'
    IDENTIFIED BY 'antoniomoreira99';

GRANT Administrador TO antonio;

CREATE USER 'ana'@'localhost'
    IDENTIFIED BY 'anagomes1989';

GRANT Analista TO ana;