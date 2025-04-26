#03_Cumulative Analysis

#1.Global average statistics of key health indicators
SELECT
  ROUND(AVG(life_expectancy), 2) AS avg_life_expectancy,
  ROUND(AVG(adult_mortality), 2) AS avg_adult_mortality,
  ROUND(AVG(infant_deaths), 2) AS avg_infant_deaths,
  ROUND(AVG(under_five_deaths), 2) AS avg_under_five_deaths,
  ROUND(AVG(hiv_aids), 2) AS avg_hiv_aids_rate,
  ROUND(AVG(alcohol), 2) AS avg_alcohol_consumption
FROM health_metrics m
JOIN health_factors h ON m.metric_id = h.metric_id;

/* Insights : Among the global averages, adult mortality has the highest value at 164.24,
             while HIV/AIDS has the lowest at 1.74, indicating relatively lower HIV-related 
             deaths on a global scale. */
             
             
#2. How has life expectancy changed each year for every country?

SELECT c.country_name, m.year, m.hiv_aids, m.adult_mortality, 
       m.infant_deaths, m.under_five_deaths,
       AVG(m.life_expectancy) OVER(PARTITION BY c.country_name ORDER BY m.year) AS avg_life_expectancy
FROM countries c 
INNER JOIN health_metrics m ON c.country_id = m.country_id;

/* Insights : In Afghanistan, average life expectancy increased steadily from 62 in 2000 to 64 in 2015.
              In contrast, Albania showed a declining trend, with averages dropping from 59.4 (2000) to 52.4 (2014). */
              
 --------------------------------------------------------------------------------------------------------------
                                       /*Summary
				This analysis gives a macro-level view of health trends across countries. It helps identify 
                global patterns,averages, and evolving life expectancy, revealing countries that are improving
                or struggling over time.
---------------------------------------------------------------------------------------------------------------     