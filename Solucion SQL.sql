--1 count  
select MAX(case when t.lugarrsidencia = 1 then t.c end) chuquisca,
MAX(case when t.lugarrsidencia = 2 then t.c end) as 'La Paz',
MAX(case when t.lugarrsidencia = 6 then t.c end) Tarija
from (select lugarrsidencia,count(lugarrsidencia) c 
	from nota n, identificador i 
	where n.ci = i.ci
	and nota >= 51
	group by lugarrsidencia) t 

-- 2
select 
sum(case when t.lugarrsidencia = 1 then 1 else 0 end) Chuquisca,
sum(case when t.lugarrsidencia = 2 then 1 else 0 end) LaPaz,
sum(case when t.lugarrsidencia = 6 then 1 else 0 end) Tarija
from (select lugarrsidencia
	from nota n, identificador i 
	where n.ci = i.ci
	and nota >= 51) t

-- funcion pivot para SQLServer	
FROM (
select count(lugarrsidencia) cantidad,
case lugarrsidencia when 1 then 'Chuquisca'
					when 2 then 'La Paz'
					when 6 then 'Tarija'
					end as Departamento
from nota n, identificador i 
where n.ci = i.ci
and nota >= 51
group by lugarrsidencia
) up
PIVOT 
(Sum([cantidad]) 
 for Departamento in ([Chuquisca],[La Paz], [Tarija])) p