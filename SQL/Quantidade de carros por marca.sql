USE PrecoCarros;

SELECT TOP 5 *
FROM car_price_prediction_;

SELECT TOP 5 
	Brand,
	COUNT(*) AS 'TOTAL CARROS'
FROM car_price_prediction_
GROUP BY Brand
ORDER BY [TOTAL CARROS] DESC;