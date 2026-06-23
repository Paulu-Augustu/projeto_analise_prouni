SELECT
    [universidade_nome] AS [universidade]
    ,count([nome]) AS [curso]
FROM
    [cursos_prouni]

GROUP BY
    [universidade]
ORDER BY
    [curso] DESC

LIMIT 5;

