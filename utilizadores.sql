USE BSN;

-- Criar roles
CREATE ROLE Proprietario;
CREATE ROLE Administrador;
CREATE ROLE Analista;

-- Permissões por role
GRANT ALL PRIVILEGES ON BSN.* TO Proprietario;
GRANT SELECT, INSERT, UPDATE, DELETE ON BSN.* TO Administrador;
GRANT SELECT ON BSN.* TO Analista;

-- Criar utilizadores (passwords fortes)
CREATE USER 'bernardo'@'localhost'
IDENTIFIED BY 'Bernardo#1963';

CREATE USER 'sabrina'@'localhost'
IDENTIFIED BY 'Sabrina@1970';

CREATE USER 'nelson'@'localhost'
IDENTIFIED BY 'Nelson$1965';

CREATE USER 'antonio'@'localhost'
IDENTIFIED BY 'Antonio#1999';

CREATE USER 'ana'@'localhost'
IDENTIFIED BY 'Ana@1989';

-- Atribuir roles
GRANT Proprietario TO 'bernardo'@'localhost';
GRANT Proprietario TO 'sabrina'@'localhost';
GRANT Proprietario TO 'nelson'@'localhost';

GRANT Administrador TO 'antonio'@'localhost';
GRANT Analista TO 'ana'@'localhost';

-- Ativar roles por defeito
SET DEFAULT ROLE ALL TO
'bernardo'@'localhost',
'sabrina'@'localhost',
'nelson'@'localhost',
'antonio'@'localhost',
'ana'@'localhost';


