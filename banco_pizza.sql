create database tony_pizzaria_ana;

use tony_pizzaria_ana;

create table categorias(
id_categoria int primary key not null,
nome_categoria varchar(40),
descricao_categoria varchar(100)
);

create table endereco(
id_endereco int primary key not null,
logradouro varchar(100),
bairro varchar(100),
cep bigint,
cidade varchar(30),
numero_casa int,
pais varchar(20)
);

create table clientes(
id_cliente int primary key not null,
nome_cliente varchar(100),
email_cliente varchar(60),
telefone bigint,
senha varchar(8),
endereco_id int,

foreign key(endereco_id) references endereco(id_endereco)
);

create table imagens(
id_img int primary key not null,
url varchar(20),
produtos_id int,

foreign key(produtos_id) references produtos(id_produtos)
);

create table avaliacoes(
id_avaliacoes int primary key not null,
quantidade_estrelas int,
comentarios varchar(150),
data_avaliacao date,
clientes_id int,

foreign key(clientes_id) references clientes(id_cliente)
);

create table produtos(
id_produtos int primary key not null,
preco_produto int,
nome_produto varchar(50),
descricao varchar(100),
id_categorias int,
avaliacao_id int,
favoritos_id int,

)












