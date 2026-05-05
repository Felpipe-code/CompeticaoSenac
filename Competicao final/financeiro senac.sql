create database Financeiro;
use Financeiro;
  
create table usuarios(
  id int primary key auto_increment,
  nome varchar(255) not null,
  cpf varchar(11) not null,
  email varchar(100) not null,
  senha varchar(255) not null,
  criacao_dia timestamp DEFAULT current_timestamp,
  atualizacao_dia timestamp DEFAULT current_timestamp ON UPDATE current_timestamp,
  usuario_criador int,
  FOREIGN KEY (usuario_criador) REFERENCES usuarios(id)
);

create table clientes(
  id int primary key auto_increment,
  nome varchar(255) not null,
  cpf varchar(11) not null,
  email varchar(100) not null,
  cargo enum('aluno','funcionario','visitante') default 'visitante'
);

create table dividas(
  id int primary key auto_increment,
  id_cliente int,
  id_usuario int,
  transacao int,
  lancamento_dia timestamp DEFAULT current_timestamp,
  modificacao_dia timestamp DEFAULT current_timestamp on update current_timestamp,
  pagamento_verificacao enum('pago','pendente') default 'pendente'
  FOREIGN KEY (id_cliente) REFERENCES cliente(id),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

INSERT INTO clientes (nome, cpf, email, cargo) VALUES
('Paulo Henrique', '11122233344', 'paulo.henrique@email.com', 'Aluno'),
('Juliana Martins', '55566677788', 'juliana.martins@email.com', 'Funcionario'),
('Ricardo Alves', '99988877766', 'ricardo.alves@email.com', 'Visitante'),
('Sofia Mendes', '12312312399', 'sofia.mendes@email.com', 'Aluno'),
('Bruno Rocha', '32132132155', 'bruno.rocha@email.com', 'Funcionario'),
('Camila Torres', '45645645600', 'camila.torres@email.com', 'Visitante');

INSERT INTO dividas (id_usuario, transacao, pagamento_verificacao)
VALUES (6, 80.00, 'Pago'),
(6, 120.00, 'Pendente');

INSERT INTO dividas (id_usuario, transacao, pagamento_verificacao)
VALUES 
(7, 50.00, 'Pago'),
(7, 200.00, 'Pago'),
(7, 30.00, 'Pago');

INSERT INTO dividas (id_usuario, transacao, pagamento_verificacao)
VALUES (8, 500.00, 'Pendente');

INSERT INTO dividas (id_usuario, transacao, pagamento_verificacao)
VALUES (9, 100.00, 'Pago');

INSERT INTO dividas (id_usuario, transacao, pagamento_verificacao)
VALUES 
(10, 250.00, 'Pendente'),
(10, 150.00, 'Pendente');

INSERT INTO dividas (id_usuario, transacao, pagamento_verificacao)
VALUES (11, 75.00, 'Pago');


SELECT SUM(transacao) AS total_vendas FROM dividas;

SELECT SUM(transacao) AS total_pago FROM dividas WHERE pagamento_verificacao = 'Pago';

SELECT SUM(transacao) AS total_pendente FROM dividas WHERE pagamento_verificacao = 'Pendente';
