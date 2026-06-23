SELECT
    [uf_busca] AS [Estado-UF]
    ,sum([bolsa_integral_ampla] + [bolsa_integral_cotas]) AS [Total_Bolsas_Integrais]
FROM
    [cursos_prouni]

WHERE
    [bolsa_integral_ampla] IS NOT NULL
    AND
    [bolsa_integral_cotas] IS NOT NULL

GROUP BY
    [uf_busca];