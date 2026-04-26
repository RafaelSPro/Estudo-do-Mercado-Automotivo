USE PrecoCarros;

SELECT 
	Transmission,
	Condition,
	FORMAT(AVG(TRY_CONVERT(DECIMAL(10,2),Price)), 'C','pt-br') as [PRECO MEDIO]
FROM car_price_prediction_
GROUP BY Transmission, Condition
ORDER BY Condition, [PRECO MEDIO]