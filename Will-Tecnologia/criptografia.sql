-- Criação da chave mestre
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Senha@Forte123'

-- Criação de certificado
CREATE CERTIFICATE MeuCertificado
WITH SUBJECT = 'Proteção dos dados';

-- Criação da chave simétrica
CREATE  SYMMETRIC KEY MinhaChave
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE MeuCertificado;