-- Criação de role
CREATE ROLE operador_role;
CREATE ROLE supervisor_role;
CREATE ROLE admin_role;

-- Criação de logins
CREATE LOGIN [joao.silva] WITH PASSWORD = 'Six_Seven'; -- operadores
CREATE LOGIN [maria.silva] WITH PASSWORD = 'Rule64';
CREATE LOGIN [gilberto.alves] WITH PASSWORD = 'Fortnite_or_PUBG';
CREATE LOGIN [fernanda.rocha] WITH PASSWORD = 'Feijao_com_farinha';
CREATE LOGIN [bruno.costa] WITH PASSWORD = 'ArrozComDesgracaCosmica';
CREATE LOGIN [juliana.martins] WITH PASSWORD = 'Cortisol_High'; -- supervisores
CREATE LOGIN [camila.ferreira] WITH PASSWORD = 'Cortisol_Low';
CREATE LOGIN [larissa.freitas] WITH PASSWORD = 'SAbor_SenhaForte'; -- adms
CREATE LOGIN [rafael.gomes] WITH PASSWORD = 'TUNG_TUNG_TUNG_SAHUR';
CREATE LOGIN [rodrigo.santos] WITH PASSWORD = 'OnlyFans_Do_Goku';
CREATE LOGIN [rodrigo.santos17] WITH PASSWORD = 'KungFU_Bunda';
CREATE LOGIN [pedro.arthur] WITH PASSWORD = 'Pabs@2009';

-- Criação de user
CREATE USER [joao.silva] FOR LOGIN [joao.silva]; -- operadores
CREATE USER [maria.silva] FOR LOGIN [maria.silva];
CREATE USER [gilberto.alves] FOR LOGIN [gilberto.alves];
CREATE USER [fernanda.rocha] FOR LOGIN [fernanda.rocha];
CREATE USER [bruno.costa] FOR LOGIN [bruno.costa];
CREATE USER [juliana.martins] FOR LOGIN [juliana.martins]; -- supervisores
CREATE USER [camila.ferreira] FOR LOGIN [camila.ferreira];
CREATE USER [larissa.freitas] FOR LOGIN [larissa.freitas]; -- adms
CREATE USER [rafael.gomes] FOR LOGIN [rafael.gomes];
CREATE USER [rodrigo.santos] FOR LOGIN [rodrigo.santos];
CREATE USER [rodrigo.santos17] FOR LOGIN [rodrigo.santos17];
CREATE USER [pedro.arthur] FOR LOGIN [pedro.arthur];

-- Inserido permissão nos roles
GRANT INSERT ON usuarios TO operador_role; -- operador
GRANT INSERT ON logs TO operador_role;
GRANT INSERT ON clientes TO operador_role;
GRANT INSERT ON vendas  TO operador_role;
GRANT INSERT ON historicos  TO operador_role;
GRANT INSERT ON backups  TO operador_role;
GRANT INSERT ON sensores  TO operador_role;
GRANT VIEW DEFINITION ON SYMMETRIC KEY::MinhaChave TO operador_role;

GRANT SELECT ON usuarios TO supervisor_role; -- supervisor
GRANT SELECT ON logs TO supervisor_role;
GRANT SELECT ON clientes TO supervisor_role;
GRANT SELECT ON vendas  TO supervisor_role;
GRANT SELECT ON historicos  TO supervisor_role;
GRANT SELECT ON backups  TO supervisor_role;
GRANT SELECT ON sensores  TO supervisor_role;
GRANT VIEW DEFINITION ON SYMMETRIC KEY::MinhaChave TO supervisor_role; 

GRANT CONTROL ON DATABASE::EmpresaDB TO admin_role; -- adm

--Inserido nos funcionarios
ALTER ROLE operador_role ADD MEMBER [joao.silva]; -- operadores
ALTER ROLE operador_role ADD MEMBER [maria.silva];
ALTER ROLE operador_role ADD MEMBER [gilberto.alves];
ALTER ROLE operador_role ADD MEMBER [fernanda.rocha];
ALTER ROLE operador_role ADD MEMBER [bruno.costa];

ALTER ROLE supervisor_role ADD MEMBER [juliana.martins]; -- supervisores
ALTER ROLE supervisor_role ADD MEMBER [camila.ferreira];

ALTER ROLE admin_role ADD MEMBER [larissa.freitas]; -- adms
ALTER ROLE admin_role ADD MEMBER [rafael.gomes];
ALTER ROLE admin_role ADD MEMBER [rodrigo.santos];
ALTER ROLE admin_role ADD MEMBER [rodrigo.santos17];
ALTER ROLE admin_role ADD MEMBER [pedro.arthur];