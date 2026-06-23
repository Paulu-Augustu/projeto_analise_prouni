SELECT 
    [uf_busca] AS [estado]
    ,sum([bolsa_integral_ampla] + [bolsa_integral_cotas]) AS [total_bolsas_integrais]
FROM 
    [cursos_prouni]
GROUP BY 
    [uf_busca]
ORDER BY 
    [total_bolsas_integrais] DESC
LIMIT 10;