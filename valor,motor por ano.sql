USE PrecoCarros;

SELECT 
	YEAR,
	FORMAT(AVG(TRY_CONVERT(DECIMAL(10,2),Price)),'C', 'PT-BR') AS [PRECO MEDIO],
	[Engine Size]
FROM car_price_prediction_
GROUP BY YEAR, [Engine Size]
ORDER BY Year desc, FORMAT(AVG(TRY_CONVERT(DECIMAL(10,2),Price)),'C', 'PT-BR') desc