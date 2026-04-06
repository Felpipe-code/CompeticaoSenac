create table users(
  id int primary key auto_increment,
  nome varchar(255) not null,
  email varchar(100) not null, 
  cpf varchar(11) not null,
  senha varchar(255) not null, 
  tipo enum('administracao', 'recepcionista'),
  criacao_dia timestamp DEFAULT current_timestamp,
  atualizacao_dia timestamp DEFAULT current_timestamp ON UPDATE current_timestamp,
  user_creator int,
  FOREIGN KEY (user_creator) REFERENCES users(id)
);


create table convidados(
  id int primary key auto_increment,
  nome varchar(255) not null,
  email varchar(100) not null,
  cpf varchar(11) not null,
  numero varchar(11) not null,
  presenca enum('presente', 'ausente') default 'ausente',
  mesa int,
  criacao_dia timestamp default current_timestamp
);


create table checkin(
  id int primary key auto_increment,
  id_convidado int,
  id_responsavel int, 
  hora_chegada timestamp DEFAULT current_timestamp,
  FOREIGN KEY (id_convidado) REFERENCES convidados(id),
  FOREIGN KEY (id_responsavel) REFERENCES users(id)
);


INSERT INTO users (nome, email, cpf, senha, tipo, user_creator) VALUES
('Admin Sistema', 'admin@evento.com', '12345678901', 'hash_senha_1', 'administracao', 1),
('Mariana Costa', 'mariana.c@evento.com', '23456789012', 'hash_senha_2', 'recepcionista', 1),
('Ricardo Lopes', 'ricardo.l@evento.com', '34567890123', 'hash_senha_3', 'recepcionista', 1),
('Ana Beatriz', 'ana.b@evento.com', '45678901234', 'hash_senha_4', 'administracao', 1),
('Carlos Magno', 'carlos.m@evento.com', '56789012345', 'hash_senha_5', 'recepcionista', 1),
('Julia Paiva', 'julia.p@evento.com', '67890123456', 'hash_senha_6', 'recepcionista', 1),
('Bruno Alves', 'bruno.a@evento.com', '78901234567', 'hash_senha_7', 'recepcionista', 1),
('Fernanda Lima', 'fernanda.l@evento.com', '89012345678', 'hash_senha_8', 'administracao', 1),
('Gustavo Reis', 'gustavo.r@evento.com', '90123456789', 'hash_senha_9', 'recepcionista', 1),
('Helena Souza', 'helena.s@evento.com', '01234567890', 'hash_senha_10', 'recepcionista', 1),
('Igor Guimarães', 'igor.g@evento.com', '11223344556', 'hash_senha_11', 'recepcionista', 4),
('Larissa Melo', 'larissa.m@evento.com', '22334455667', 'hash_senha_12', 'recepcionista', 4),
('Mauro Silva', 'mauro.s@evento.com', '33445566778', 'hash_senha_13', 'administracao', 1),
('Nádia Farias', 'nadia.f@evento.com', '44556677889', 'hash_senha_14', 'recepcionista', 13),
('Otávio Neto', 'otavio.n@evento.com', '55667788990', 'hash_senha_15', 'recepcionista', 13),
('Paula Tejano', 'paula.t@evento.com', '66778899001', 'hash_senha_16', 'recepcionista', 13),
('Quezia Lima', 'quezia.l@evento.com', '77889900112', 'hash_senha_17', 'recepcionista', 1),
('Rodrigo Sá', 'rodrigo.s@evento.com', '88990011223', 'hash_senha_18', 'administracao', 1),
('Sonia Abrão', 'sonia.a@evento.com', '99001122334', 'hash_senha_19', 'recepcionista', 18),
('Tiago Orochi', 'tiago.o@evento.com', '00112233445', 'hash_senha_20', 'recepcionista', 18),
('Ulysses Guimaraes', 'ulysses.g@evento.com', '12123234245', 'hash_senha_21', 'recepcionista', 1),
('Vitor Hugo', 'vitor.h@evento.com', '54321678909', 'hash_senha_22', 'recepcionista', 1),
('Wagner Moura', 'wagner.m@evento.com', '98765432100', 'hash_senha_23', 'administracao', 1),
('Xuxa Meneghel', 'xuxa.m@evento.com', '10101010101', 'hash_senha_24', 'recepcionista', 23),
('Yuri Gagarin', 'yuri.g@evento.com', '20202020202', 'hash_senha_25', 'recepcionista', 23),
('Zeca Pagodinho', 'zeca.p@evento.com', '30303030303', 'hash_senha_26', 'recepcionista', 1),
('Aline Moraes', 'aline.m@evento.com', '40404040404', 'hash_senha_27', 'recepcionista', 1),
('Bento XVI', 'bento.x@evento.com', '50505050505', 'hash_senha_28', 'administracao', 1),
('Caio Castro', 'caio.c@evento.com', '60606060606', 'hash_senha_29', 'recepcionista', 28),
('Diana Prince', 'diana.p@evento.com', '70707070707', 'hash_senha_30', 'recepcionista', 28);

INSERT INTO convidados (nome, email, cpf, numero, presenca, mesa) VALUES
('João Silva', 'joao@email.com', '11122233344', '11999998888', 'presente', 1),
('Maria Oliveira', 'maria@email.com', '22233344455', '11988887777', 'ausente', 1),
('Carlos Souza', 'carlos@email.com', '33344455566', '11977776666', 'presente', 2),
('Ana Costa', 'ana.c@email.com', '44455566677', '11966665555', 'presente', 2),
('Lucas Pereira', 'lucas.p@email.com', '55566677788', '11955554444', 'ausente', 3),
('Fernanda Rocha', 'fer.r@email.com', '66677788899', '11944443333', 'presente', 3),
('Roberto Santos', 'roberto@email.com', '77788899900', '11933332222', 'presente', 4),
('Juliana Alves', 'ju.alves@email.com', '88899900011', '11922221111', 'ausente', 4),
('Ricardo Melo', 'ric.melo@email.com', '99900011122', '11911110000', 'presente', 5),
('Camila Diniz', 'camila@email.com', '00011122233', '11900009999', 'presente', 5),
('Bruno Marques', 'bruno.m@email.com', '12121212121', '11912121212', 'ausente', 6),
('Patrícia Lima', 'pat.lima@email.com', '23232323232', '11923232323', 'presente', 6),
('Gabriel Nunes', 'gabriel.n@email.com', '34343434343', '11934343434', 'presente', 7),
('Larissa Farias', 'lari.f@email.com', '45454545454', '11945454545', 'ausente', 7),
('Thiago Mendes', 'thiago.m@email.com', '56565656565', '11956565656', 'presente', 8),
('Sofia Moraes', 'sofia.m@email.com', '67676767676', '11967676767', 'presente', 8),
('André Viana', 'andre.v@email.com', '78787878787', '11978787878', 'ausente', 9),
('Beatriz Ramos', 'bea.ramos@email.com', '89898989898', '11989898989', 'presente', 9),
('Marcelo Pires', 'marcelo.p@email.com', '90909090909', '11909090909', 'presente', 10),
('Letícia Guedes', 'leticia.g@email.com', '01010101010', '11901010101', 'ausente', 10),
('Daniel Campos', 'daniel.c@email.com', '13131313131', '11913131313', 'presente', 11),
('Isabela Freitas', 'isabela.f@email.com', '24242424242', '11924242424', 'presente', 11),
('Hugo Batista', 'hugo.b@email.com', '35353535353', '11935353535', 'ausente', 12),
('Renata Lopes', 'renata.l@email.com', '46464646464', '11946464646', 'presente', 12),
('Felipe Barros', 'felipe.b@email.com', '57575757575', '11957575757', 'presente', 13),
('Vanessa Borges', 'vanessa.b@email.com', '68686868686', '11968686868', 'ausente', 13),
('Eduardo Fontes', 'eduardo.f@email.com', '79797979797', '11979797979', 'presente', 14),
('Tatiana Luz', 'tati.luz@email.com', '80808080808', '11980808080', 'presente', 14),
('Samuel Dias', 'samuel.d@email.com', '91919191919', '11919191919', 'ausente', 15),
('Priscila Cruz', 'priscila.c@email.com', '02020202020', '11902020202', 'presente', 15);

INSERT INTO checkin (id_convidado, id_responsavel) VALUES
(1, 2), (3, 3), (4, 5), (6, 6), (7, 7), (9, 9), (10, 10), (12, 11),
(13, 12), (15, 14), (16, 15), (18, 16), (19, 17), (21, 19), (22, 20), (24, 21),
(25, 22), (27, 24), (28, 25), (30, 26), (1, 27), (3, 29), (4, 30), (6, 2),
(7, 3), (9, 5), (10, 6), (12, 7), (13, 9), (15, 10);







