USE PrecoCarros;

SELECT 
    CASE 
        WHEN Mileage < 20000 THEN '0-20k km (Baixa)'
        WHEN Mileage BETWEEN 20000 AND 60000 THEN '20k-60k km (Média)'
        ELSE 'Acima de 60k km (Alta)'
    END AS Quilometragem,
    FORMAT(AVG(TRY_CONVERT(DECIMAL(10,2), PRICE)), 'C', 'PT-BR') AS [Preco MEDIO],
	COUNT([Car ID]) AS QTD
FROM car_price_prediction_
GROUP BY 
    CASE 
        WHEN Mileage < 20000 THEN '0-20k km (Baixa)'
        WHEN Mileage BETWEEN 20000 AND 60000 THEN '20k-60k km (Média)'
        ELSE 'Acima de 60k km (Alta)'
    END
ORDER BY [Preco MEDIO] DESC;