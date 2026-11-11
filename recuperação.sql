create table investidores(
id serial primary key, 
nome varchar(150) not null,
cpf varchar(11) unique not null,
nivel_experiencia int default(0),


create table carteiras
id serial primary key,  
investidor_id foreign key ref investidores(id),
endereco_wallet unique not null,
rede_blockchain varchar(150) unique, 
saldo_usd value decimal(10 , 2),
status text(values: 'ativa' , 'em analise' , 'bloqueada' , 'pausada' default = 'ativa'),


create table criptomoedas(
id serial primary key,
corretora_id foreign key ref carteiras(id),
nome_moeda varchar(150) not null,
preco_unitario_usd value decimal(10 , 2),,
categoria text(values: 'layer1', 'DeFi', 'memecoin', 'stablecoin' default = 'layer1')
);

create table transacoes_cripto(
id serial primary key
carteira_id foreign key ref criptomoedas(id);
quantidade value decimal(10 , 2); 
valor_pago value decimal(10 , 2); 
data_transacao unique data default current TIMESTAMP; 
);


