if not exists (select * from sysobjects where name='klienci' and xtype='U')
create table [klienci]
(
  [idklienta] [int] NOT NULL PRIMARY KEY identity(1,1), 
  [imie] [varchar](30) NOT NULL,
  [nazwisko] [varchar](30) NOT NULL,
  [miejscowosc] [varchar](30) NOT NULL,
  
  )
  insert into [klienci] (imie,nazwisko,miejscowosc)
  values
  ('£ukasz', 'Lewandowski', 'Poznañ'),
('Jan', 'Nowak', 'Katowice'),
('Maciej', 'Wójcik', 'Bydgoszcz'),
('Agnieszka', 'Jankowska', 'Lublin'),
('Tomasz', 'Mazur', 'Jelenia Góra'),
('Micha³', 'Zieliñski', 'Kraków'),
('Artur', 'Rutkowski', 'Kielce'),
('Mateusz', 'Skorupa', 'Gdañsk'),
('Jerzy', 'Rutkowski', 'Rybnik'),
('Anna', 'Karenina', 'Pu³tusk'),
('Adam','Tadama','Czestochowa');

if not exists (select * from sysobjects where name='ksiazki' and xtype='U')
create table [ksiazki]
(
[idksiazki] int not null identity(1,1) primary key,
[imieautora] varchar(30) not null,
[nazwiskoautora] varchar(30) not null,
[tytul] varchar(80) not null,
[cena] float not null
)

insert into [ksiazki] (imieautora,nazwiskoautora,tytul,cena)
values
('Jan', 'Michalak', 'Zaawansowane programowanie w PHP', 47.29),
('Andrzej', 'Krawczyk', 'Windows 8 PL. Zaawansowana administracja systemem', 49.99),
('Pawe³', 'Jakubowski', 'HTML5. Tworzenie witryn', 53.65),
('Tomasz', 'Kowalski', 'Urz¹dzenia techniki komputerowej', 34.15),
('£ukasz', 'Pasternak', 'PHP. Tworzenie nowoczesnych stron WWW', 29.99);

if not exists (select * from sysobjects where name='zamowienia' and xtype='U')
create table [zamowienia]
(
[idzamowienia] int not null identity(1,1) primary key,
[idklienta] int not null,
[idksiazki] int not null,
[data] date not null,
[status] varchar(30) not null
);

insert into [zamowienia] (idklienta,idksiazki,data,status)
values
(2, 4, '2014-10-08', 'oczekiwanie'),
(7, 1, '2014-09-05', 'wyslano'),
(9, 1, '2014-10-11', 'wyslano'),
(2, 2, '2014-10-15', 'oczekiwanie'),
(2, 5, '2014-08-12', 'oczekiwanie'),
(3, 2, '2014-10-20', 'wyslano'),
(4, 3, '2014-08-14', 'wyslano'),
(8, 1, '2014-08-19', 'wyslano'),
(3, 5, '2014-11-19', 'wyslano'),
(9, 2, '2014-12-28', 'oczekiwanie');
