create database movego;

use movego;

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    email VARCHAR(30),
    senha VARCHAR(20),
    possui_deficiencia boolean,
    nome VARCHAR(50)
);

CREATE TABLE Onibus (
    id_onibus INT PRIMARY KEY,
    placa TEXT,
    capacidade INT,
    status TEXT,
    acessivel boolean
);

CREATE TABLE Linha (
    trajeto TEXT,
    numero INT,
    nome VARCHAR(50),
    id_linha INT PRIMARY KEY,
    acessivel boolean,
    fk_Onibus_id_onibus INT
);

CREATE TABLE Parada (
    id_parada INT PRIMARY KEY,
    nome VARCHAR(50),
    localizacao VARCHAR(50),
    acessivel boolean
);

CREATE TABLE Horario (
    id_horario INT PRIMARY KEY,
    hora_partida INT,
    hora_chegada INT
);

CREATE TABLE Rota (
    id_rota INT PRIMARY KEY,
    id_linha INT,
    id_parada INT
);

CREATE TABLE Veiculo (
    id_veiculo INT PRIMARY KEY,
    placa TEXT,
    modelo TEXT,
    ano INT,
    capacidade INT,
    status TEXT
);

CREATE TABLE Motorista (
    id_motorista INT PRIMARY KEY,
    nome VARCHAR(50),
    data_nascimento DATE,
    status TEXT,
    CNH INT
);

CREATE TABLE Possui_paradas (
    fk_Linha_id_linha INT,
    fk_Rota_id_rota INT
);

CREATE TABLE Favorita (
    fk_Usuario_id_usuario INT,
    fk_Linha_id_linha INT
);

CREATE TABLE Esta_na_rota (
    fk_Rota_id_rota INT,
    fk_Parada_id_parada INT
);

CREATE TABLE Favorita (
    fk_Usuario_id_usuario INT,
    fk_Parada_id_parada INT
);

CREATE TABLE Opera_em (
    fk_Rota_id_rota INT,
    fk_Veiculo_id_veiculo INT
);

CREATE TABLE Opera_em (
    fk_Linha_id_linha INT,
    fk_Horario_id_horario INT
);

CREATE TABLE Tem_horario (
    fk_Horario_id_horario INT,
    fk_Parada_id_parada INT
);

CREATE TABLE Dirige (
    fk_Rota_id_rota INT,
    fk_Motorista_id_motorista INT
);

CREATE TABLE Passa_por (
    fk_Parada_id_parada INT,
    fk_Linha_id_linha INT
);

CREATE TABLE Utiliza (
    fk_Usuario_id_usuario INT,
    fk_Rota_id_rota INT
);
 
ALTER TABLE Linha ADD CONSTRAINT FK_Linha_2
    FOREIGN KEY (fk_Onibus_id_onibus)
    REFERENCES Onibus (id_onibus)
    ON DELETE CASCADE;
 
ALTER TABLE Possui_paradas ADD CONSTRAINT FK_Possui_paradas_1
    FOREIGN KEY (fk_Linha_id_linha)
    REFERENCES Linha (id_linha)
    ON DELETE RESTRICT;
 
ALTER TABLE Possui_paradas ADD CONSTRAINT FK_Possui_paradas_2
    FOREIGN KEY (fk_Rota_id_rota)
    REFERENCES Rota (id_rota)
    ON DELETE RESTRICT;
 
ALTER TABLE Favorita ADD CONSTRAINT FK_Favorita_1
    FOREIGN KEY (fk_Usuario_id_usuario)
    REFERENCES Usuario (id_usuario)
    ON DELETE SET NULL;
 
ALTER TABLE Favorita ADD CONSTRAINT FK_Favorita_2
    FOREIGN KEY (fk_Linha_id_linha)
    REFERENCES Linha (id_linha)
    ON DELETE SET NULL;
 
ALTER TABLE Esta_na_rota ADD CONSTRAINT FK_Esta_na_rota_1
    FOREIGN KEY (fk_Rota_id_rota)
    REFERENCES Rota (id_rota)
    ON DELETE RESTRICT;
 
ALTER TABLE Esta_na_rota ADD CONSTRAINT FK_Esta_na_rota_2
    FOREIGN KEY (fk_Parada_id_parada)
    REFERENCES Parada (id_parada)
    ON DELETE RESTRICT;
 
ALTER TABLE Favorita ADD CONSTRAINT FK_Favorita_1
    FOREIGN KEY (fk_Usuario_id_usuario)
    REFERENCES Usuario (id_usuario)
    ON DELETE SET NULL;
 
ALTER TABLE Favorita ADD CONSTRAINT FK_Favorita_2
    FOREIGN KEY (fk_Parada_id_parada)
    REFERENCES Parada (id_parada)
    ON DELETE SET NULL;
 
ALTER TABLE Opera_em ADD CONSTRAINT FK_Opera_em_1
    FOREIGN KEY (fk_Rota_id_rota)
    REFERENCES Rota (id_rota)
    ON DELETE SET NULL;
 
ALTER TABLE Opera_em ADD CONSTRAINT FK_Opera_em_2
    FOREIGN KEY (fk_Veiculo_id_veiculo)
    REFERENCES Veiculo (id_veiculo)
    ON DELETE SET NULL;
 
ALTER TABLE Opera_em ADD CONSTRAINT FK_Opera_em_1
    FOREIGN KEY (fk_Linha_id_linha)
    REFERENCES Linha (id_linha)
    ON DELETE RESTRICT;
 
ALTER TABLE Opera_em ADD CONSTRAINT FK_Opera_em_2
    FOREIGN KEY (fk_Horario_id_horario)
    REFERENCES Horario (id_horario)
    ON DELETE SET NULL;
 
ALTER TABLE Tem_horario ADD CONSTRAINT FK_Tem_horario_1
    FOREIGN KEY (fk_Horario_id_horario)
    REFERENCES Horario (id_horario)
    ON DELETE SET NULL;
 
ALTER TABLE Tem_horario ADD CONSTRAINT FK_Tem_horario_2
    FOREIGN KEY (fk_Parada_id_parada)
    REFERENCES Parada (id_parada)
    ON DELETE SET NULL;
 
ALTER TABLE Dirige ADD CONSTRAINT FK_Dirige_1
    FOREIGN KEY (fk_Rota_id_rota)
    REFERENCES Rota (id_rota)
    ON DELETE SET NULL;
 
ALTER TABLE Dirige ADD CONSTRAINT FK_Dirige_2
    FOREIGN KEY (fk_Motorista_id_motorista)
    REFERENCES Motorista (id_motorista)
    ON DELETE SET NULL;
 
ALTER TABLE Passa_por ADD CONSTRAINT FK_Passa_por_1
    FOREIGN KEY (fk_Parada_id_parada)
    REFERENCES Parada (id_parada)
    ON DELETE SET NULL;
 
ALTER TABLE Passa_por ADD CONSTRAINT FK_Passa_por_2
    FOREIGN KEY (fk_Linha_id_linha)
    REFERENCES Linha (id_linha)
    ON DELETE SET NULL;
 
ALTER TABLE Utiliza ADD CONSTRAINT FK_Utiliza_1
    FOREIGN KEY (fk_Usuario_id_usuario)
    REFERENCES Usuario (id_usuario)
    ON DELETE SET NULL;
 
ALTER TABLE Utiliza ADD CONSTRAINT FK_Utiliza_2
    FOREIGN KEY (fk_Rota_id_rota)
    REFERENCES Rota (id_rota)
    ON DELETE SET NULL;
    
CREATE TABLE `cartao` (
  `idcartao` int NOT NULL,
  `numero` varchar(16) NOT NULL,
  `Data` date NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `nometitular` varchar(50) NOT NULL,
  PRIMARY KEY (`idcartao`),
  UNIQUE KEY `idnew_table_UNIQUE` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE cartao ADD COLUMN id_usuario INT NOT NULL;

ALTER TABLE cartao ADD CONSTRAINT FK_cartao_usuario
FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario)
ON DELETE CASCADE;