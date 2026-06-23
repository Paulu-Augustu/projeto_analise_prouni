SELECT 
    CAST([mensalidade] / 1000 AS INT) * 1000 AS [faixa_preco]
    ,count([curso_id]) AS [quantidade_cursos]
FROM 
    [cursos_prouni]
WHERE 
    [mensalidade] <= 5000
    
GROUP BY 
    CAST([mensalidade] / 1000 AS INT)
ORDER BY 
    [faixa_preco] ASC;
