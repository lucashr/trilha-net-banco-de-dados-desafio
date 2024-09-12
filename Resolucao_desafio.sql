-- 1
select Nome, ano from Filmes

-- 2
select * from Filmes order by Duracao

-- 3
select * from Filmes where Nome = 'De Volta para o Futuro'

-- 4
select * from Filmes where Ano = 1997

-- 5
select * from Filmes where Ano > 2000

-- 6
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao

-- 7
select Ano, count(*) Quantidade from Filmes group by Ano order by Quantidade desc

-- 8
select * from Atores where Genero = 'M'

-- 9
select * from Atores where Genero = 'F' order by PrimeiroNome

-- 10
select 
	f.Nome, 
	g.Genero 
	from Filmes f
	join FilmesGenero fg on f.Id = fg.IdFilme
	join Generos g on fg.IdGenero = g.Id

-- 11
select 
	f.Nome, 
	g.Genero 
	from Filmes f
		join FilmesGenero fg on f.Id = fg.IdFilme
		join Generos g on fg.IdGenero = g.Id
		where g.Genero = 'Mistério'

-- 12
select 
	f.Nome, 
	a.PrimeiroNome, 
	a.UltimoNome, 
	ef.Papel 
	from Filmes f
		join ElencoFilme ef on f.Id = ef.IdFilme
		join Atores a on ef.IdAtor = a.Id
