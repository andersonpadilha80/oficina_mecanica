-- inserção de dados

USE oficina_mecanica;
SHOW TABLES;



-- inserir dados na tabela clientes
-- cliente_id, cliente_primeiro_nome, cliente_nome_meio, cliente_sobrenome, cliente_cpf_, cliente_endereco, cliente_telefone
INSERT INTO clientes (cliente_primeiro_nome, cliente_nome_meio, cliente_sobrenome, cliente_cpf, cliente_endereco, cliente_telefone)
               VALUES('Anderson', NULL, 'Padilha', 99988877766, 'Rua Leonzio 999, Jardim, Caxias - RS', 5498765432),
                     ('Nubia', 'E', 'Campos', 88877766655, 'Rua Domingos 888, Rizzo, Caxias - RS', 5487654321),
                     ('Heitor','D', 'Padilha', 77766655544, 'Rua Jacob 777, Santa Lúcia, Caxias - RS', 5476543210),
                     ('Alisson', NULL, 'Padilha', 66655544433, 'Avenida Rosseti 666, Pio X, Caxias - RS', 5465432109),
                     ('Neumar', 'B', 'Padilha', 55544433322, 'Rua Julio de Castilho 555, Centro, Caxias - RS', 5454321098),
                     ('Rosa', 'B', 'Borges', 44433322211, 'Rua Garibaldi 444, Centro, Caxias - RS', 5443210987),
                     ('Paulo', 'C', 'Farias', 33322211100, 'Rua Bento 333, Pioneiro, Caxias - RS', 5432109876),
                     ('Viviane', 'S', 'De Campos', 22211100099, 'Avenida Moreira Cesar 222, Pio X, Caxias - RS', 5421098765),
                     ('Eugênio', 'C', 'Farias', 11100099988, 'Rua Rio Branco 111, Centro, Caxias - RS', 5410987654),
                     ('Henrique', NULL, 'Boff', 00099988877, 'Rua Angelo 990, Pioneiro, Caxias - RS', 5409876543),
                     ('Jandira', 'A', 'Campos', 98765432100, 'Rua Domingos 891, Rizzo, Caxias - RS', 5498127634),
                     ('Cintia', 'T', 'Cunha', 87654321001, 'Avenida Michelon 782, Cruzeiro, Caxias - RS', 5487346521),
                     ('Ademir', NULL, 'Picinini', 76543210122, 'Rua Tronca 671, Planalto, Caxias - RS', 5465565409),
                     ('Ana', 'C', 'Barbosa', 65432101233, 'Rua Evaristo 563, São José, Caxias - RS', 5446802465),
                     ('Carlos', 'E', 'Medeiros', 54321012344, 'Rua Julio de Castilho 232, Centro, Caxias - RS', 5412837502),
                     ('Carlos', 'E', 'Gardel', 43210123455, 'Avenida Rubens 541, Planalto, Caxias - RS', 5476084177),
                     ('Thomas', NULL, 'Moreira', 32101234566, 'Rua Machado de Assis 315, Planalto, Caxias - RS', 5499887751),
                     ('Alceu', 'B', 'Padilha', 21012345677, 'Rua Visconde de Mauá 366, São Pelegrino, Caxias - RS', 5488672200),
                     ('Suzi', 'M', 'Cabral', 10123456788, 'Rua Alfredo Chaves 390, São Pelegrino, Caxias - RS', 5499531746),
                     ('Humberto', NULL, 'Martins', 01234567899, 'Rua Marques 541, Galópolis, Caxias - RS', 5467097722);

SELECT * FROM clientes;



-- inserir dados na tabela veiculos
-- veiculo_id, veiculo_cliente_id, veiculo_marca, veiculo_modelo, veiculo_placa, veiculo_tipo, veiculo_ano_fabricacao, veiculo_renavam, veiculo_combustivel, veiculo_cor
INSERT INTO veiculos (veiculo_cliente_id, veiculo_marca, veiculo_modelo, veiculo_placa, veiculo_tipo, veiculo_ano_fabricacao, veiculo_renavam, veiculo_combustivel, veiculo_cor)
               VALUES(1, 'Volkswagen', 'Fusca 1600', 'IDJ4805', 'automóvel', 1975, 00706521446, 'gasolina', 'branco'),
                     (1, 'Volkswagen', 'Golf 1.8 GL MI', 'IIK1384', 'automóvel', 1998, 00605421335, 'gasolina', 'vermelho'),
                     (2, 'Chevrolet', 'Corsa 1.0', 'IRD3256', 'automóvel', 1996, 01504321232, 'gasolina', 'branco'),
                     (2, 'Honda', 'HR-V EXL 1.5', 'IDR5632', 'SUV', 2023, 01404541232, 'flex', 'azul'),
                     (3, 'Fiat', 'Toro 2.0', 'IBS4521', 'caminhonete', 2022, 02544320965, 'flex', 'preto'),
                     (4, 'Honda', 'Civic 2.0', 'SDJ2310', 'automóvel', 2020, 04322546876, 'flex', 'prata'),
                     (5, 'Ford', 'Fusion 2.5', 'EID4098', 'automóvel', 2015, 45780912512, 'gasolina', 'branco'),
                     (6, 'Hyundai', 'Elantra 2.0', 'IFG4365', 'automóvel', 2020, 52106789123, 'flex', 'prata'),
                     (7, 'Fiat', 'Doblô 1.8', 'RDS3278', 'SUV', 2016, 87561234098, 'gasolina', 'azul'),
                     (7, 'Kia', 'Sorento 3.0', 'TRS9064', 'caminhonete', 2018, 32086781085, 'diesel', 'preto'),
                     (7, 'Renault', 'Scenic 1.6', 'GDF3206', 'SUV', 2012, 17459803418, 'flex', 'cinza'),
                     (8, 'Volkswagen', 'Gol 1.0', 'TES3286', 'automóvel', 1999, 32657843017, 'gasolina', 'azul'),
                     (9, 'Volkswagen', 'Fox 1.0', 'WQA1243', 'automóvel', 2010, 43560961431, 'flex', 'vermelho'),
                     (10, 'Fiat', 'Uno 1.0', 'RDQ2312', 'automóvel', 2015, 10327543854, 'gasolina', 'vermelho'),
                     (11, 'Fiat', 'Palio Adventure 1.6', 'FSA8945', 'automóvel', 2016, 32951234432, 'flex', 'prata'),
                     (12, 'Chevrolet', 'Onix 1.4', 'URA0948', 'automóvel', 2023, 12863421862, 'flex', 'branco'),
                     (13, 'Volkswagen', 'Santana GL 2.0', 'IGS5656', 'automóvel', 1996, 90453212098, 'gasolina', 'prata'),
                     (14, 'Ford', 'Edge 3.0', 'FGS4111', 'SUV', 2020, 45128433777, 'flex', 'azul'),
                     (15, 'Chevrolet', 'Blazer 3.5', 'RES1234', 'SUV', 2000, 87650199012, 'diesel', 'azul'),
                     (15, 'Fiat', 'Palio Weekend 1.6', 'TDA7888', 'automóvel', 2011, 88992375090, 'gasolina', 'bordo'),
                     (15, 'Chevrolet', 'Opala 6cc', 'DFA2333', 'automóvel', 1982, 65666341265, 'álcool', 'preto'),
                     (15, 'Volkswagen', 'Quantum 2.0 turbo', 'IDF9889', 'automóvel', 1993, 54441289032, 'álcool', 'vermelho'),
                     (16, 'Toyota', 'Hilux 3.0', 'YGH0134', 'caminhonete', 2011, 12227809454, 'diesel', 'branco'),
                     (17, 'Ford', 'Focus 2.0', 'HGF7887', 'automóvel', 2017, 55689943093, 'flex', 'branco'),
                     (17, 'Renault', 'Clio 1.0', 'QSR3222', 'automóvel', 2006, 03008999321, 'flex', 'preto'),
                     (17, 'Renault', 'Megane 2.0', 'YYO7766', 'automóvel', 2011, 55566689032, 'flex', 'prata'),
                     (17, 'Honda', 'Civic 2.0', 'IHJ3232', 'automóvel', 2010, 44432311187, 'flex', 'prata'),
                     (17, 'Peugeot', '206 SW 1.6', 'ILL6798', 'automóvel', 2005, 23000534898, 'flex', 'prata'),
                     (18, 'Honda', 'Fit 1.5', 'IMN8111', 'automóvel', 2005, 44445555123, 'flex', 'preto'),
                     (18, 'Honda', 'Fit 1.5', 'YRE3434', 'automóvel', 2006, 55565654321, 'flex', 'prata'),
                     (19, 'Chevrolet', 'Corsa 1.0', 'GDA3289', 'automóvel', 1999, 00008777321, 'gasolina', 'verde'),
                     (20, 'Honda', 'Fit 1.6', 'WAQ9444', 'automóvel', 2007, 99932166643, 'flex', 'azul');

SELECT * FROM veiculos;



-- inserir dados na tabela equipe_mecanicos
-- equipe_mecanico_id, equipe_mecanico_nome
INSERT INTO equipe_mecanicos (equipe_mecanico_nome)
                       VALUES('Equipe_1'),
                             ('Equipe_2'),
                             ('Equipe_3');



-- inserir dados na tabela mecanicos
-- mecanico_id, mecanico_equipe_mec_id, mecanico_primeiro_nome, mecanico_nome_meio, mecanico_sobrenome, mecanico_endereco, mecanico_telefone, mecanico_especialidade
INSERT INTO mecanicos (mecanico_equipe_mec_id, mecanico_primeiro_nome, mecanico_nome_meio, mecanico_sobrenome, mecanico_endereco, mecanico_telefone, mecanico_especialidade)
                VALUES(1, 'Fred', 'B', 'Macedo', 'Rua Visconde de Pelotas 321, Pio X, Caxias - RS', 54987312011, 'Motores'),
                      (2, 'Adelar', 'R', 'Barbosa', 'Rua Bento 211, Centro, Caxias - RS', 5490342222, 'Suspensão e Freios'),
                      (1, 'Gelson', 'A', 'Ribeiro', 'Rua Andreazza 675, Forqueta, Caxias - RS', 54988993209, 'Transmissões'),
                      (3, 'Eduardo', 'D', 'Cabral', 'Rua Visconde de Mauá 222, São Pelegrino, Caxias - RS', 54967894321, 'Transmissões'),
                      (2, 'Rodrigo', 'E', 'Farias', 'Avenida Michelon 444, Cruzeiro, Caxias - RS', 54988880101, 'Motores'),
                      (1, 'Marcelo', NULL, 'Andriguete', 'Rua Julio de Castilho 111, Centro, Caxias - RS', 54971710909, 'Suspensão e Freios'),
                      (2, 'Marcio', NULL, 'Bonatto', 'Rua Marques 333, Galópolis, Caxias - RS', 54932324455, 'Transmissões'),
                      (3, 'André', 'M', 'Stefan', 'Rua Alfredo Chaves 555, São Pelegrino, Caxias - RS', 54988885555, 'Motores'),
                      (3, 'Ronaldo', 'N', 'Parma', 'Rua Domingos 232, Rizzo, Caxias - RS', 54967898989, 'Suspensão e Freios');

SELECT * FROM mecanicos;



