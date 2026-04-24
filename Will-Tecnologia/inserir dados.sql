-- inserido dados
OPEN SYMMETRIC KEY MinhaChave 
DECRYPTION BY CERTIFICATE MeuCertificado;
EXECUTE AS USER = 'gilberto.alves';
INSERT INTO usuarios(nome_usuario, senha, perfil) VALUES
('joao.silva',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'Six_Seven'), 'operador'),
('maria.silva',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'Rule64'), 'operador'),
('gilberto.alves',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'Fortnite_or_PUBG'), 'operador'),
('fernanda.rocha',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'Feijao_com_farinha'), 'operador'),
('bruno.costa',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'ArrozComDesgracaCosmica'), 'operador'),
('juliana.martins',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'Cortisol_High'), 'supervisor'),
('camila.ferreira',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'Cortisol_Low'), 'supervisor'),
('larissa.freitas',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'SAbor_SenhaForte'), 'adm'),
('rafael.gomes',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'TUNG_TUNG_TUNG_SAHUR'), 'adm'),
('rodrigo.santos',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'OnlyFans_Do_Goku'), 'adm'),
('rodrigo.santos17',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'KungFU_Bunda'), 'adm'),
('pedro.arthur',ENCRYPTBYKEY(KEY_GUID('MinhaChave'),'Pabs@2009'), 'adm');

INSERT INTO logs(usuario, acao_realizada, ip_maquina) VALUES
('joao.silva', 'DELETE CLIENTE', '192.168.0.49'),
('maria.silva', 'LOGIN FALHO', '192.168.0.41'),
('gilberto.alves', 'LOGIN', '192.168.0.38'),
('fernanda.rocha', 'EXPORTOU RELATORIO', '192.168.0.48'),
('bruno.costa', 'LOGIN FALHO', '192.168.0.24'),
('juliana.martins', 'BACKUP MANUAL', '192.168.0.31'),
('camila.ferreira', 'EXPORTOU RELATORIO', '192.168.0.5'),
('larissa.freitas', 'ALTEROU PRECO', '192.168.0.44'),
('rafael.gomes', 'ALTEROU PRECO', '192.168.0.17'),
('rodrigo.santos', 'LOGIN', '192.168.0.44'),
('rodrigo.santos17', 'BACKUP MANUAL', '192.168.0.7'),
('pedro.arthur', 'LOGIN FALHO', '192.168.0.36');

INSERT INTO clientes (nome_cliente, email, cpf, telefone, cidade, usuario_cadastrado, status_cliente) VALUES 
('João Silva', 'joao@email.com', '111.111.111-11', '(11) 98888-0001', 'São Paulo', 'gilberto.alves', 'Ativo'),
('Maria Oliveira', 'maria@email.com', '222.222.222-22', '(11) 98888-0002', 'São Bernardo', 'gilberto.alves', 'Ativo'),
('Carlos Souza', 'carlos@email.com', '333.333.333-33', '(11) 98888-0003', 'Santo André', 'fernanda.rocha', 'Inativo'),
('Ana Costa', 'ana@email.com', '444.444.444-44', '(21) 97777-0004', 'Rio de Janeiro', 'joao.silva', 'Ativo'),
('Pedro Rocha', 'pedro@email.com', '555.555.555-55', '(31) 96666-0005', 'Belo Horizonte', 'maria.silva', 'Bloqueado'),
('Juliana Lima', 'juliana@email.com', '666.666.666-66', '(11) 98888-0006', 'São Paulo', 'bruno.costa', 'Ativo'),
('Ricardo Ramos', 'ricardo@email.com', '777.777.777-77', '(41) 95555-0007', 'Curitiba', 'juliana.martins', 'Inativo'),
('Fernanda Dias', 'fernanda@email.com', '888.888.888-88', '(51) 94444-0008', 'Porto Alegre', 'camila.ferreira', 'Ativo'),
('Lucas Melo', 'lucas@email.com', '999.999.999-99', '(61) 93333-0009', 'Brasília', 'larissa.freitas', 'Ativo'),
('Beatriz Reis', 'beatriz@email.com', '000.000.000-00', '(71) 92222-0010', 'Salvador', 'rafael.gomes', 'Ativo');

INSERT INTO vendas (id_cliente, quantidade_itens, valor_venda, vendedor_responsavel, data_venda, statos_venda, forma_pagamento) VALUES
(1, 2, 150, 'joao.silva', '20260420 10:30:00', 'Concluída', 'Cartão Crédito'),
(2, 1, 80, 'maria.silva', '20260420 11:15:00', 'Concluída', 'Pix'),
(3, 5, 450, 'gilberto.alves', '20260421 09:00:00', 'Cancelada', 'Boleto'),
(4, 3, 210, 'fernanda.rocha', '20260421 14:20:00', 'Concluída', 'Dinheiro'),
(5, 1, 1200, 'bruno.costa', '20260421 16:45:00', 'Pendente', 'Cartão Crédito'),
(6, 2, 300, 'juliana.martins', '20260422 10:00:00', 'Concluída', 'Pix'),
(7, 4, 180, 'camila.ferreira', '20260422 13:10:00', 'Concluída', 'Cartão Débito'),
(8, 1, 55, 'larissa.freitas', '20260422 15:30:00', 'Concluída', 'Pix'),
(9, 6, 890, 'rafael.gomes', '20260423 08:45:00', 'Cancelada', 'Cartão Crédito'),
(10, 2, 400, 'rodrigo.santos', '20260423 11:20:00', 'Concluída', 'Dinheiro');

INSERT INTO historicos (id_cliente, nome_cliente, email, data_arquivo, motivo_arquivo, tempo_cliente) VALUES
(3, 'Carlos Souza', 'carlos@email.com', '20260424 10:00:00', 'Inatividade Prolongada', '8 anos e 8 meses'),
(6, 'Juliana Lima', 'juliana@email.com', '20260424 10:05:00', 'Inatividade Prolongada', '3 anos');

INSERT INTO backups (nome_arquivo, tamanho_arquivo, status_backup) VALUES
('backup_diario_20260420.bak', '1.2 GB', 'Sucesso'),
('backup_incremental_20260420_18h.bak', '250 MB', 'Sucesso'),
('backup_diario_20260421.bak', '1.3 GB', 'Sucesso');

INSERT INTO sensores (id_sensor, setor, temperatura, umidade) VALUES
('SENS-SRV-01', 'TI/Servidores', 21.5, 45.2),
('SENS-SRV-01', 'TI/Servidores', 22.1, 44.8),
('SENS-EST-05', 'Estoque A', 18.2, 60.5);

CLOSE SYMMETRIC KEY MinhaChave;
REVERT;