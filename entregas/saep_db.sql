CREATE DATABASE saep_db;
USE saep_db;

create table usuario (
        id bigint not null auto_increment primary key,
        login varchar(255),
        senha varchar(255)
    );

CREATE TABLE categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE material (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    quantidade_estoque INT NOT NULL,
    estoque_minimo INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE movimentacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_material INT NOT NULL,
    id_usuario INT NOT NULL,
    tipo VARCHAR(10) NOT NULL,
    quantidade INT NOT NULL,
    data_movimentacao DATE NOT NULL,
    FOREIGN KEY (id_material) REFERENCES material(id),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);