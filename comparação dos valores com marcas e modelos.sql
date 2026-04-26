USE PrecoCarros;

SELECT 
	Brand,
	[Engine Size], 
	FORMAT(AVG(TRY_CONVERT(DECIMAL(10,2), Price)), 'C', 'PT-BR') AS [PRECO MEDIO]
FROM car_price_prediction_
WHERE Mileage > 80000
GROUP BY [Engine Size], Brand
ORDER BY FORMAT(AVG(TRY_CONVERT(DECIMAL(10,2), Price)), 'C', 'PT-BR')  DESC;