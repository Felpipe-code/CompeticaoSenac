


  
create table users( 
id int primary key auto_increment,
nome varchar(255) not null,
email varchar (30) not null,
cpf varchar (11) not null,
senha varchar (40) not null,
tipo enum ('adm','recepcionista'),
criacao_dia timestamp DEFAULT current_timestamp,
atualizacao_dia timestamp DEFAULT current_timestamp,
user_creator int,
FOREIGN KEY (user_creator) references users(id)
);



create table checkin(
  id int primary key auto_increment,
  id_convidado int,
  hora_chegada timestamp DEFAULT current_timestamp,
  id_responsavel int
);

create table convidados(
  id int primary key auto_increment,
  nome varchar (255) not null,
  email varchar(30) not null,
  cpf varchar(11) not null,
  numero varchar(11) not null,
  presença enum ('presente', 'ausente'),
  mesa int,
  criacao_dia timestamp default current_timestamp
);
   
  select * from checkin
  

INSERT INTO users (nome, email, cpf, senha, tipo, user_creator) VALUES ('Admin Principal', 'adm@exemplo.com', '11122233344', 'AdmSenha2026', 'adm', NULL);
INSERT INTO users (nome, email, cpf, senha, tipo, user_creator) VALUES ('Recepcionista Central', 'recep@exemplo.com', '22233344455', 'RecepSenha2026', 'recepcionista', 1);


INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Ana Beatriz', 'ana.b@ex.com', '33344455566', '51999990001', 'presente', 1);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Bruna Carvalho', 'bruna.c@ex.com', '33344455567', '51999990002', 'presente', 1);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Carolina Dias', 'caro.d@ex.com', '33344455568', '51999990003', 'ausente', 2);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Daniela Esteves', 'dani.e@ex.com', '33344455569', '51999990004', 'presente', 2);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Eliana Farias', 'eliana.f@ex.com', '33344455570', '51999990005', 'presente', 3);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Fabíola Gomes', 'fabi.g@ex.com', '33344455571', '51999990006', 'ausente', 3);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Gabriela Henrique', 'gabi.h@ex.com', '33344455572', '51999990007', 'presente', 4);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Helena Ibarra', 'helena.i@ex.com', '33344455573', '51999990008', 'presente', 4);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Isabela Jardim', 'isa.j@ex.com', '33344455574', '51999990009', 'presente', 5);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Júlia Kuster', 'julia.k@ex.com', '33344455575', '51999990010', 'ausente', 5);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Karina Lopes', 'karina.l@ex.com', '33344455576', '51999990011', 'presente', 6);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Larissa Maia', 'larissa.m@ex.com', '33344455577', '51999990012', 'presente', 6);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Mariana Neto', 'mariana.n@ex.com', '33344455578', '51999990013', 'presente', 7);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Natália Oliveira', 'natalia.o@ex.com', '33344455579', '51999990014', 'ausente', 7);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Olívia Pereira', 'olivia.p@ex.com', '33344455580', '51999990015', 'presente', 8);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Patrícia Queiroz', 'pat.q@ex.com', '33344455581', '51999990016', 'presente', 8);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Quésia Ramos', 'quesia.r@ex.com', '33344455582', '51999990017', 'ausente', 9);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Rafaela Santos', 'rafa.s@ex.com', '33344455583', '51999990018', 'presente', 9);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Sabrina Teixeira', 'sabr.t@ex.com', '33344455584', '51999990019', 'presente', 10);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Tatiana Uchoa', 'tati.u@ex.com', '33344455585', '51999990020', 'presente', 10);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Úrsula Valente', 'ursula.v@ex.com', '33344455586', '51999990021', 'ausente', 1);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Vanessa Xavier', 'van.x@ex.com', '33344455587', '51999990022', 'presente', 2);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Wânia Yamada', 'wania.y@ex.com', '33344455588', '51999990023', 'presente', 3);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Ximena Zorzi', 'ximena.z@ex.com', '33344455589', '51999990024', 'presente', 4);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Yasmin Alves', 'yasmin.a@ex.com', '33344455590', '51999990025', 'ausente', 5);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Zuleica Barbosa', 'zuleica.b@ex.com', '33344455591', '51999990026', 'presente', 6);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Adriana Castro', 'adri.c@ex.com', '33344455592', '51999990027', 'presente', 7);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Beatriz Duarte', 'beatriz.d@ex.com', '33344455593', '51999990028', 'presente', 8);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Clara Estevão', 'clara.e@ex.com', '33344455594', '51999990029', 'ausente', 9);
INSERT INTO convidados (nome, email, cpf, numero, presença, mesa) VALUES ('Leonardo Gomes', 'leonardo.g@ex.com', '33324455594', '51999980029', 'presente', 9);




INSERT INTO checkin (id_convidado, id_responsavel) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2);


