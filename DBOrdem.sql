create DATABASE ordemServico

CREATE TABLE tdClientes
(
    idCliente INT PRIMARY KEY IDENTITY(1,1),
    nmCliente VARCHAR(50) NOT NULL,
    nmEndereco VARCHAR(50),
    nmCidade VARCHAR(50),
    nmEstado VARCHAR(30),
    nmTelefone1 VARCHAR(15),
);


CREATE TABLE tdTecnicos
(
    idTecnico INT PRIMARY KEY IDENTITY(1,1),
    nmTecnico  VARCHAR(50) NOT NULL,
    nmEndereco VARCHAR(50),
    nmCidade VARCHAR(50),
    nmEstado VARCHAR(30),
    nmTelefone1 VARCHAR(15),
    
);

 create table tdOrdemDeServico
 (
        idOrdem int PRIMARY key IDENTITY(1,1),
        idCliente int FOREIGN KEY REFERENCES tdClientes(idCliente),
        idTecnico int FOREIGN KEY REFERENCES tdTecnicos(idTecnico),
        dtCriacao DATE,
        dtConclusao DATE,
        tipoServico VARCHAR(50),
        descricaoProblema VARCHAR(250),
        descricaoSolucao VARCHAR(250)
 )