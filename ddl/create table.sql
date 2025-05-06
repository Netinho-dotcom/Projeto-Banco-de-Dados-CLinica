--CRIAÇÃO DAS TABELAS 

CREATE TABLE medicos(
id_medico INT PRIMARY KEY	,
nome VARCHAR(50)NOT NULL,
telefone VARCHAR(11) UNIQUE NOT NULL,
especialidade VARCHAR(40) NOT NULL ,
crm VARCHAR(30) UNIQUE NOT NULL
);

create table pacientes(
id_paciente INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
telefone VARCHAR(11) UNIQUE NOT NULL
);

CREATE TABLE agendamentos(
id_agendamentos INT PRIMARY KEY,
fk_medico_id INT,
fk_paciente_id INT,
data_e_hora TIMESTAMP NOT NULL CHECK(data_e_hora>= CURRENT_DATE),
status VARCHAR(20) NOT NULL,
FOREIGN KEY(fk_medico_id) REFERENCES medicos(id_medico),
FOREIGN KEY(fk_paciente_id) REFERENCES pacientes(id_paciente)
);

CREATE TABLE consultas(
id_consulta INT PRIMARY KEY,
fk_agendamento_id INT,
diagnostico VARCHAR(100) NOT NULL,
data_realizacao DATE NOT NULL
);

CREATE TABLE receitas(
id_receitas INT PRIMARY KEY,
fk_consulta_id INT,
descricao TEXT NOT NULL,
FOREIGN KEY(fk_consulta_id) REFERENCES consultas(id_consulta)
);

CREATE TABLE PAGAMENTOS(
id_pagamento INT PRIMARY KEY,
FK_id_consulta INT,
valor DECIMAL(5,2) CHECK(valor >=0),
metodo VARCHAR(20) NOT NULL,
status VARCHAR(20) NOT NULL
);

ALTER TABLE pacientes
ALTER COLUMN telefone TYPE  VARCHAR(15);

ALTER TABLE pacientes
ALTER COLUMN telefone TYPE  VARCHAR(15);

ALTER TABLE agendamentos
ALTER COLUMN status SET DEFAULT 'AGENDADO';

