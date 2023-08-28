create database goservice_db;

USE goservice_db;

SHOW TABLES;

SELECT * FROM usuarios;
SELECT * FROM servicos;

DROP TABLE agendamentos;
DROP TABLE prestadores_servicos;
DROP TABLE  servico;

INSERT INTO usuarios (dtype, nome, email, perfil, senha, habilitado)
VALUE ( 
	"Administrador",
	"Lucas Kawasaki",
    "lucas.kawasaki@hotmail.com",
    "ADMIN",
    "$2a$10$r3r9V682sIhE/61jZjqkauT.08pxrBx.GE1T.yEogN5r8Ly2S8eTK",
    1
); # 123456

UPDATE usuarios SET habilitado = 0 WHERE id IN(1, 2, 4); 

SELECT * FROM servicos;

INSERT INTO servicos (categoria, descricao, nome) 
VALUES 
    ('Limpeza', 'Serviço de limpeza residencial', 'Limpeza Residencial'),
    ('Treinamento', 'Treinamento corporativo em liderança', 'Treinamento em Liderança'),
    ('Saúde', 'Consulta médica de clínico geral', 'Consulta Clínico Geral'),
    ('Desenvolvimento', 'Desenvolvimento de aplicativo móvel', 'Desenvolvimento de App'),
    ('Design', 'Design de logotipo para empresas', 'Design de Logotipo'),
    ('Limpeza', 'Limpeza de escritórios comerciais', 'Limpeza Comercial'),
    ('Treinamento', 'Treinamento em habilidades de comunicação', 'Treinamento em Comunicação'),
    ('Saúde', 'Sessão de fisioterapia para reabilitação', 'Fisioterapia de Reabilitação'),
    ('Desenvolvimento', 'Desenvolvimento de site institucional', 'Desenvolvimento de Site Institucional'),
    ('Design', 'Design de interface de usuário para aplicativos', 'Design de Interface de Aplicativo');
    
SELECT * FROM prestadores_servicos;
SELECT * FROM servicos;
SELECT * FROM usuarios;
SELECT * FROM agendamentos;

INSERT INTO prestadores_servicos (servico_id, prestador_id)
VALUES
    (1, 5), (2, 5), (3, 5), (4, 5), (5, 5),
    (6, 5), (7, 5), (9, 5), (10, 5), (11, 5),
    (1, 6), (2, 6), (3, 6), (4, 6), (5, 6),
    (6, 6), (7, 6), (9, 6), (10, 6), (11, 6),
    (1, 5), (2, 5), (3, 5), (4, 5), (5, 5),
    (6, 5), (7, 5), (9, 5), (10, 5), (11, 5);
