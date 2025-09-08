CREATE DATABASE empresa_consultoria

USE empresa_consultoria


CREATE TABLE Empresa (
    id_empresa INT IDENTITY(1,1) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    PRIMARY KEY (id_empresa)
)

CREATE TABLE Consultor (
    id_consultor INT IDENTITY(1,1) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    especializacao VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_consultor)
)

CREATE TABLE Projeto (
    id_projeto INT IDENTITY(1,1) NOT NULL,
    id_empresa INT NOT NULL,
    numero_projeto CHAR(12) UNIQUE NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    valor NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (id_projeto),
    FOREIGN KEY (id_empresa) REFERENCES Empresa(id_empresa)
)

CREATE TABLE Projeto_Consultor (
    id_consultor INT NOT NULL,
    id_projeto INT NOT NULL,
    horas_consultor NUMERIC(5,2) NOT NULL,
    funcao_consultor CHAR(1) NOT NULL CHECK (funcao_consultor IN ('L', 'M')),
    PRIMARY KEY (id_consultor, id_projeto),
    FOREIGN KEY (id_consultor) REFERENCES Consultor(id_consultor),
    FOREIGN KEY (id_projeto) REFERENCES Projeto(id_projeto)
)

SELECT *
FROM sys.tables