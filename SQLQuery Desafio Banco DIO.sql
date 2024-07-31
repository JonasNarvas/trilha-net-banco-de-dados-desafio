--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano, Duracao From Filmes ORDER BY Ano

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

--7
SELECT Ano, COUNT(*) As Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade Desc

--8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero ='M'

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero='F' ORDER BY PrimeiroNome

--10
SELECT Filmes.Nome, Generos.Genero FROM Filmes AS Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 

--11
SELECT Filmes.Nome, Generos.Genero 
FROM Filmes AS Filmes
INNER JOIN
FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN 
Generos ON FilmesGenero.IdGenero = Generos.Id 
WHERE Generos.Genero = 'Mistério'
--tive que usar o caractere quebrado pra fazer funcionar

--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, Elenco.Papel
FROM Filmes AS Filmes
INNER JOIN
ElencoFilme AS Elenco
ON Elenco.IdFilme = Filmes.Id
INNER JOIN 
Atores ON Atores.Id = Elenco.IdAtor
