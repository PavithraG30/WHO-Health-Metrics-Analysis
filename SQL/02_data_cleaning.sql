#01_data_cleaning.sql

#Trim whitespace from important text columns
SELECT 
  TRIM(country_name) AS cleaned_country_name,
  TRIM(development_stage) AS cleaned_development_stage
FROM countries;

#Checking for null or missing values
SELECT *
FROM countries
WHERE country_name IS NULL OR development_stage IS NULL; 

SELECT *
FROM health_metrics
WHERE life_expectancy IS NULL OR adult_mortality IS NULL;

SELECT *
FROM health_factors
WHERE total_expenditure IS NULL OR polio IS NULL;