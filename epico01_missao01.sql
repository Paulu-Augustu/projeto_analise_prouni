SELECT DISTINCT
    [mensalidade]
    ,[nome]
    ,[universidade_nome]
    ,[campus_nome]
    ,[uf]
    ,[municipio]
    ,[bairro]
FROM
    [cursos_prouni] AS [t1]

LEFT JOIN
    [enderecos_campi] AS [t2]
    ON
    [t1].[campus_id] = [t2].[id]

ORDER BY
    [mensalidade] DESC
LIMIT 10;