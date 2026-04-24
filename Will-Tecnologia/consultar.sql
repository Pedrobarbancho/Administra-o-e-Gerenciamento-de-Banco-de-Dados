-- Consultar as tabelas
OPEN SYMMETRIC KEY MinhaChave 
DECRYPTION BY CERTIFICATE MeuCertificado;
EXECUTE AS USER = 'camila.ferreira';
SELECT nome_usuario,
	CONVERT(VARCHAR, DECRYPTBYKEY(senha)) AS senha,
	email,
	perfil
FROM usuarios;
SELECT * FROM logs;
SELECT * FROM sensores;
SELECT * FROM clientes;
SELECT * FROM vendas;
SELECT * FROM historicos;
SELECT * FROM backups;
SELECT * FROM sensores;

CLOSE SYMMETRIC KEY MinhaChave;
REVERT;