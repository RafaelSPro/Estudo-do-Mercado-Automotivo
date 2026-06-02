USE PrecoCarros;

SELECT TOP 5
	Brand,
	FORMAT(AVG(TRY_CONVERT(DECIMAL(10,2), Price)), 'C', 'PT-BR') AS [PRECO MEDIO]
FROM car_price_prediction_
GROUP BY Brand
ORDER BY FORMAT(AVG(TRY_CONVERT(DECIMAL(10,2), Price)), 'C', 'PT-BR') DESC

SELECT 
    Brand,
    CASE 
        WHEN Mileage < 20000 THEN 'Baixa KM'
        WHEN Mileage BETWEEN 20000 AND 60000 THEN 'Média KM'
        ELSE 'Alta KM'
    END AS Quilometragem,
    FORMAT(AVG(TRY_CONVERT(DECIMAL(10,2), Price)), 'C', 'PT-BR') AS [PRECO MEDIO],
    COUNT(*) AS Quantidade,
	Model
FROM car_price_prediction_
GROUP BY Brand, Model,
    CASE 
        WHEN Mileage < 20000 THEN 'Baixa KM'
        WHEN Mileage BETWEEN 20000 AND 60000 THEN 'Média KM'
        ELSE 'Alta KM'
    END
ORDER BY
		CASE 
        WHEN CASE 
            WHEN Mileage < 20000 THEN 'Baixa KM'
            WHEN Mileage BETWEEN 20000 AND 60000 THEN 'Média KM'
            ELSE 'Alta KM'
        END = 'Baixa KM' THEN 1
        WHEN CASE 
            WHEN Mileage < 20000 THEN 'Baixa KM'
            WHEN Mileage BETWEEN 20000 AND 60000 THEN 'Média KM'
            ELSE 'Alta KM'
        END = 'Média KM' THEN 2
        ELSE 3
    END;