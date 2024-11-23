-- criação do banco de dados para oficina mecânica

DROP DATABASE oficina_mecanica;

SHOW TABLES;

CREATE DATABASE oficina_mecanica;
USE oficina_mecanica;

-- criar tabela clientes
CREATE TABLE clientes(
    cliente_id INT NOT NULL AUTO_INCREMENT,
    cliente_primeiro_nome VARCHAR(100) NOT NULL,
    cliente_nome_meio VARCHAR(3),
    cliente_sobrenome VARCHAR(100) NOT NULL,
    cliente_cpf CHAR(11) NOT NULL,
    cliente_endereco VARCHAR(255) NOT NULL,
    cliente_telefone CHAR(11) NOT NULL,
    CONSTRAINT pk_cliente PRIMARY KEY (cliente_id),
    CONSTRAINT unique_cliente_cpf UNIQUE (cliente_cpf)
) AUTO_INCREMENT=1;

DESC clientes;



-- criar tabela veiculos
CREATE TABLE veiculos(
    veiculo_id INT NOT NULL AUTO_INCREMENT,
    veiculo_cliente_id INT NOT NULL,
    veiculo_marca VARCHAR(45) NOT NULL,
    veiculo_modelo VARCHAR(45) NOT NULL,
    veiculo_placa CHAR(7) NOT NULL,
    veiculo_tipo VARCHAR(45) NOT NULL,
    veiculo_ano_fabricacao CHAR(4) NOT NULL,
    veiculo_renavam CHAR(11) NOT NULL,
    veiculo_combustivel VARCHAR(45) NOT NULL,
    veiculo_cor VARCHAR(45) NOT NULL,
    CONSTRAINT pk_veiculo PRIMARY KEY (veiculo_id),
    CONSTRAINT fk_veiculo_cliente FOREIGN KEY (veiculo_cliente_id) REFERENCES clientes(cliente_id),
    CONSTRAINT unique_veiculo_placa UNIQUE (veiculo_placa),
    CONSTRAINT unique_veiculo_renavam UNIQUE (veiculo_renavam)
) AUTO_INCREMENT=1;

DESC veiculos;

-- criar tabela equipe_mecanicos
CREATE TABLE equipe_mecanicos(
    equipe_mecanico_id INT NOT NULL AUTO_INCREMENT,
    equipe_mecanico_nome VARCHAR(45) NOT NULL,
    CONSTRAINT pk_equipe_mecanico PRIMARY KEY (equipe_mecanico_id),
    CONSTRAINT unique_equipe_mecanico_nome UNIQUE (equipe_mecanico_nome)
) AUTO_INCREMENT=1;

DESC equipe_mecanicos;



-- criar tabela mecanicos
CREATE TABLE mecanicos(
    mecanico_id INT NOT NULL AUTO_INCREMENT,
    mecanico_equipe_mec_id INT NOT NULL,
    mecanico_primeiro_nome VARCHAR(45) NOT NULL,
    mecanico_nome_meio VARCHAR(45),
    mecanico_sobrenome VARCHAR(45) NOT NULL,
    mecanico_endereco VARCHAR(255) NOT NULL,
    mecanico_telefone CHAR(11) NOT NULL,
    mecanico_especialidade ENUM('Motores','Suspensão e Freios','Transmissões'),
    CONSTRAINT pk_mecanico PRIMARY KEY (mecanico_id),
    CONSTRAINT fk_mecanico_equipe_mec FOREIGN KEY (mecanico_equipe_mec_id) REFERENCES equipe_mecanicos(equipe_mecanico_id)
) AUTO_INCREMENT=1;

DESC mecanicos;



-- criar tabela ordens_servico
CREATE TABLE ordens_servico(
    ordem_servico_id INT NOT NULL AUTO_INCREMENT,
    ordem_servico_veiculo_id INT NOT NULL,
    ordem_servico_equipe_mecanico_id INT NOT NULL,
    ordem_servico_tipo_servico ENUM('Revisão','Conserto') NOT NULL,
    ordem_servico_data_emissao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ordem_servico_data_conclusao DATE,
    ordem_servico_status ENUM('Em Andamento','Finalizada','Cancelada'),
    ordem_servico_valor DECIMAL(10,2) NOT NULL,
    ordem_servico_autorizado BOOLEAN DEFAULT FALSE,
    CONSTRAINT pk_ordem_servico PRIMARY KEY (ordem_servico_id),
    CONSTRAINT fk_ordem_servico_veiculo FOREIGN KEY (ordem_servico_veiculo_id) REFERENCES veiculos(veiculo_id),
    CONSTRAINT fk_ordem_servico_equipe_mecanico FOREIGN KEY (ordem_servico_equipe_mecanico_id) REFERENCES equipe_mecanicos(equipe_mecanico_id)
) AUTO_INCREMENT=1;

DESC ordens_servico;



-- criar tabela pecas
CREATE TABLE pecas(
    peca_id INT NOT NULL AUTO_INCREMENT,
    peca_descricao VARCHAR(255) NOT NULL,
    peca_valor DECIMAL(10,2) NOT NULL,
    CONSTRAINT pk_peca PRIMARY KEY (peca_id)
) AUTO_INCREMENT=1;

DESC pecas;



-- criar tabela ordens_servico_pecas_utilizadas
CREATE TABLE ordens_servico_pecas_utilizadas(
    ordem_servico_pecas_utilizadas_os_id INT NOT NULL,
    ordem_servico_pecas_utilizadas_peca_id INT NOT NULL,
    CONSTRAINT pk_ordem_servico_pecas_utilizadas PRIMARY KEY (ordem_servico_pecas_utilizadas_os_id, ordem_servico_pecas_utilizadas_peca_id),
    CONSTRAINT fk_ordem_servico_pecas_utilizadas_os FOREIGN KEY (ordem_servico_pecas_utilizadas_os_id) REFERENCES ordens_servico(ordem_servico_id),
    CONSTRAINT fk_ordem_servico_pecas_utilizadas_peca FOREIGN KEY (ordem_servico_pecas_utilizadas_peca_id) REFERENCES pecas(peca_id) 
);

DESC ordens_servico_pecas_utilizadas;



-- criar tabela mao_de_obra
CREATE TABLE mao_de_obra(
    mao_de_obra_id INT NOT NULL AUTO_INCREMENT,
    mao_de_obra_descricao VARCHAR(255) NOT NULL,
    mao_de_obra_valor DECIMAL(10,2) NOT NULL,
    CONSTRAINT pk_mao_de_obra PRIMARY KEY (mao_de_obra_id)
) AUTO_INCREMENT=1;

DESC mao_de_obra;



-- criar tabela ordens_servico_mao_de_obra
CREATE TABLE ordens_servico_mao_de_obra(
    ordem_servico_mao_de_obra_os_id INT NOT NULL,
    ordem_servico_mao_de_obra_id INT NOT NULL,
    CONSTRAINT pk_ordem_servico_mao_de_obra PRIMARY KEY (ordem_servico_mao_de_obra_os_id, ordem_servico_mao_de_obra_id),
    CONSTRAINT fk_ordem_servico_mao_de_obra_os FOREIGN KEY (ordem_servico_mao_de_obra_os_id) REFERENCES ordens_servico(ordem_servico_id),
    CONSTRAINT fk_ordem_servico_mao_de_obra FOREIGN KEY (ordem_servico_mao_de_obra_id) REFERENCES mao_de_obra(mao_de_obra_id)
);

DESC ordens_servico_mao_de_obra;