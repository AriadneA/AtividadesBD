/* Consultas na linguagem SQL*/
create database AulaSQLBDAriadne;
show databases;
use AulaSQLBDAriadne;
create table Pilotos(
  codigo int,
  nome varchar(255),
  pais varchar(255),
  idade int,
  equipe varchar(255),
  motor varchar(255),
  pontos int,
  primary key(codigo)
);
desc Pilotos;
INSERT INTO PILOTOS (codigo, nome, pais, idade, equipe, motor, pontos)
VALUES (111,'Sebastian Vettel','Alemanha',25,'RedBull','Renault',256),
	(112,'Fernando Alonso','Espanha',28,'Ferrari','Ferrari',252),
	(113,'Mark Alan Weber','Austria',26,'RedBull','Renault',242),
	(114,'Lewis Hamilton','Inglaterra',22,'McLaren','Mercedes',240),
	(115,'Janson Button','Inglaterra',21,'McLaren','Mercedes',214),
	(116,'Felipe Massa','Brasil',27,'Ferrari','Ferrari',144),
	(117,'Nico Rosberg','Alemanha',24,'Mercedes','Mercedes',142),
	(118,'Robert Kubica','Polonia',21,'Renault','Renault',136),
	(119,'Michael Schumacher','Alemanha',23,'Mercedes','Mercedes',72),
	(120,'Rubens Barrichello','Brasil',29,'Williams','Cosworth',47),
	(121,'Adrian Sutil','Alemanha',24,'ForceIndia','Mercedes',47),
	(122,'Kamui Kobayashi','Japão',23,'Sauber','Ferrari',32),
	(123,'Vitaly Petrov','Russia',22,'Renault','Renault',27),
	(124,'Nico Hulkenberg','Alemanha',20,'Williams','Cosworth',22),
	(125,'Vitanlonio Liuzzi','Italia',25,'ForceIndia','Mercedes',21),
	(126,'Sebastien Buemi','Suíça',18,'ToroRosso','Ferrari',8),
	(127,'Pedro de la Rosa','Espanha',22,'Sauber','Ferrari',6),
	(128,'Nick Heidfeld','Alemanha',22,'Sauber','Ferrari',6),
	(129,'Jaime Alquersuari','Espanha',27,'ToroRosso','Ferrari',5),
	(130,'Sakon Yamamoto','Japão',20,'Hispania','Cosworth',0),
	(131,'Lucas Tucci di Grassi','Brasil',25,'Virgin','Cosworth',0),
	(132,'Jarno Trulli','Italia',18,'Lotus','Cosworth',0),
	(133,'Heikki Kovalainen','Finlandia',19,'Lotus','Cosworth',0),
	(134,'Timo Glock','Alemanha',24,'Virgin','Cosworth',0),
	(135,'Christian Klien','Australia',20,'Hispania','Cosworth',0),
	(136,'Bruno Sena','Brasil',21,'Hispania','Cosworth',0),
	(137,'Karun Chandnok','India',20,'Hispania','Cosworth',0);
   select*from Pilotos;
   
   select nome, pais, idade from Pilotos;
   
   select nome as Piloto, pais as Nação, equipe as Equipe from Pilotos Limit 10;
   
   select distinct pais as Nação from Pilotos;
   
   select nome as Nome, idade as Idade , pais as País, equipe as Equipe from Pilotos order by nome;
   
   select nome as Nome, idade as Idade , pais as País, equipe as Equipe , pontos as Pontuação from Pilotos order by idade desc;
   
   select distinct pais as País from Pilotos order by pais asc;
   
   select nome as Pilotos, equipe as Equipe, pontos as PontosAtuais,((pontos-3)*1.5) 
   as PontosAlterados from Pilotos order by pontos desc limit 10;
   
   select nome as Pilotos, equipe as Equipe, pontos as Pontuação, pais as País from Pilotos 
   where pais = 'Alemanha' order by equipe;
   
   select nome as Pilotos, equipe as Equipe, pontos as Pontuação, pais as Nação 
   from Pilotos where pontos <> 0 order by pontos desc;
   
   select nome as Pilotos, idade as Idade, equipe as Equipe, pontos as Pontuação, pais as Nação from Pilotos
   where idade >= 25 order by idade;
   
   select nome as Pilotos, equipe as Equipe, pais as Nação, pontos as Pontuação from Pilotos where idade < 50;
   
   select nome as Pilotos, equipe as Equipe, pais as Nação, pontos as Pontuação from Pilotos where pontos > 100;
   
   select nome as Pilotos, idade as Idade, equipe as Equipe, pontos as Pontuação, pais as Nação from Pilotos
   where idade <= 20 order by idade;
   
   select nome as Pilotos, equipe as Equipe, pais as Nação , pontos as Pontuação from Pilotos 
   where motor like 'Ferrari' order by equipe;
   
   select nome as Pilotos, equipe as Equipe, pais as Nação, pontos as Pontuação from Pilotos 
   where pais like 'A%' order by pais;
   
   select nome as Pilotos, equipe as Equipe, pais as Nação, pontos as Pontuação from Pilotos 
   where equipe like '_auber' order by equipe;
   
   select nome as Pilotos, equipe as Equipe, pais as Nação, pontos as Pontuação from Pilotos 
   where pais not like '%an%' order by pais;
   
   select nome as Pilotos, idade as Idade, equipe as Equipe, pais as Nação, pontos as Pontuação from Pilotos 
   where idade > 25 and idade <=30;
   
   select nome as Pilotos, equipe as Equipe, pais as Nação, pontos as Pontuação from Pilotos 
   where equipe like 'F%' or motor like 'R%';
   
   select nome as Pilotos, idade as Idade, equipe as Equipe, motor as Motor from Pilotos 
   where (equipe like 'R%' or motor like '%m%') and idade < 25;
   
   select nome, idade, pais, equipe, pontos from Pilotos where pontos between 136 and 252;
   
   select nome, idade, pais, equipe, pontos from Pilotos where pontos not between 0 and 136;
   
   select nome , idade, pais, equipe from Pilotos where idade in (22,24,29) order by idade;
   
   select nome, idade, pais, equipe from Pilotos where pais not in ('Alemanha','Inglaterra','Espanhya') order by pais;
   
   select * from Pilotos where pontos is null;
   
   select * from Pilotos where pontos is not null and pontos < 10;
   
   select count(*) as NumeroPilotos from Pilotos;

   select count(*) as NumeroPilotos from Pilotos where idade >= 21;
    
   select avg (idade) as MediaIdadePilotos from Pilotos where  pais in ('Alemanha', 'Inglaterra', 'Brasil');
   
   select avg (pontos) as MediaPontosPilotos from Pilotos;
   
   select min(idade) as IdadeMinima from Pilotos;
   
   select max(pontos) as PontuacaoMaxima from Pilotos;
   
   select sum(pontos) as SomaDosPilotos from Pilotos where pais = 'Inglaterra';
   
   select sum(pontos) as SomaDosPontos, pais as País from Pilotos group by pais order by SomadosPontos;
   
   select avg(idade) as MediaDaIdade, pais as País from Pilotos group by pais having avg (idade) > 20;
   
   select count(*) as NumeroDePilotos, pais as País from Pilotos group by pais;
   
   
   
   
   
   
   
   
   
   