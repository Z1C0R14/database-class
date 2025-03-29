CREATE DATABASE Empresa;
USE Empresa;

CREATE TABLE Funcionarios(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento_id INT NOT NULL,
    cargo_id INT NOT NULL,
    FOREIGN KEY (cargo_id) REFERENCES Cargos(id)
);

CREATE TABLE Departamentos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Cargos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nivel VARCHAR(50) NOT NULL
);

INSERT INTO Departamentos(nome) VALUES ('TI'), ('RH'), ('Financeiro'), ('Marketing'), ('Vendas');

INSERT INTO Cargos(nome, nivel) VALUES
('Analista', 'Pleno'),
('Gerente', 'Sênior'),
('Assistente', 'Júnior'),
('Coordenador', 'Sênior'),
('Desenvolvedor', 'Pleno');

INSERT INTO Funcionarios(nome, data_nascimento, salario, departamento_id, cargo_id) VALUES
('Ana Silva', '1985-06-15', 5500.00, 1, 5),
('Carlos Santos', '1990-03-22', 4800.00, 2, 1),
('Bruna Costa', '1987-12-10', 6000.00, 3, 2),
('Daniel Oliveira', '1992-08-05', 5200.00, 1, 5),
('Fernanda Lima', '1995-09-30', 4500.00, 2, 3),
('Gustavo Souza', '1980-01-25', 7000.00, 3, 2),
('Helena Martins', '1983-11-17', 5300.00, 1, 4),
('Igor Ferreira', '1991-07-08', 4900.00, 2, 1),
('Juliana Rocha', '1989-04-19', 5600.00, 3, 2),
('Lucas Mendes', '1993-06-23', 5100.00, 1, 5);

-- Exercício 1:
SELECT MAX(salario) AS MaiorSalario FROM Funcionarios;

-- Exercício 2:
SELECT MIN(salario) AS MenorSalario FROM Funcionarios;

-- Exercício 3:
SELECT COUNT(nome) AS Funcionarios FROM Funcionarios;

-- Exercício 4:
SELECT nome, data_nascimento FROM Funcionarios
WHERE data_nascimento >= 1990-00-00;

-- Exercício 5:
SELECT AVG(salario) AS MediaSalario FROM Funcionarios;

-- Exercício 6:
SELECT SUBSTRING(nome, 1, 3) FROM Funcionarios;

-- Exercício 7:
SELECT COUNT(f.id) AS QtFunc, d.nome AS Dep FROM Funcionarios f
	JOIN Departamentos d ON f.departamento_id = d.id
	GROUP BY d.nome;
    
-- Exercício 8:
SELECT COUNT(f.id) AS QtFunc, c.nome AS Cargo FROM Funcionarios f
JOIN Cargos c ON f.cargo_id = c.id
GROUP BY c.nome;