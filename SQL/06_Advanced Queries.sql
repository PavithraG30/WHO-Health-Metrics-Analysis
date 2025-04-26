#05_Advanced Queries

#1. Which developed country had the highest death rate overall?

SELECT c.country_name, m.year, 
       SUM(m.adult_mortality) AS total_adult_deaths,
       SUM(m.infant_deaths) AS total_infant_deaths,
       SUM(m.under_five_deaths) AS total_under_five_deaths
FROM countries c 
INNER JOIN health_metrics m ON c.country_id = m.country_id
WHERE c.development_stage = 'Developed'
GROUP BY c.country_name, m.year
ORDER BY total_adult_deaths DESC
LIMIT 10;

/*Insights : Croatia, Australia, and Bulgaria had the highest death rates.
			 Croatia ranked the highest overall, especially in the years 2015, 
             2012, and 2003. */
             
#2.Which year recorded the highest impact of health issues?
 
 WITH year_summary AS (
  SELECT m.year,
         SUM(m.adult_mortality) AS total_adult_deaths,
         SUM(m.infant_deaths) AS total_infant_deaths,
         SUM(m.under_five_deaths) AS total_under_five_deaths,
         SUM(h.alcohol) AS alcohol_addiction,
         SUM(h.polio) AS polio_cases,
         SUM(h.measles) AS measles_cases
  FROM health_metrics m
  INNER JOIN health_factors h ON m.metric_id = h.metric_id
  GROUP BY m.year
)
SELECT * FROM year_summary
ORDER BY total_adult_deaths DESC
LIMIT 1;

/* Insights : 2004 recorded the highest number of health-related deaths and disease cases,
			 indicating a peak in healthcare burden during that year. */
              
              
#3. Rank developed countries by the lowest total deaths
WITH cal AS (
  SELECT c.country_name,
         SUM(m.adult_mortality) AS total_adult_deaths
  FROM countries c
  INNER JOIN health_metrics m ON c.country_id = m.country_id
  WHERE c.development_stage = 'Developed'
  GROUP BY c.country_name
)
SELECT country_name, 
       RANK() OVER (ORDER BY total_adult_deaths ASC) AS rank_by_deaths
FROM cal;

/* Insights : Countries like Portugal, Lithuania, Poland, USA, and the UK ranked lowest in 
              total adult deaths, suggesting better healthcare systems or lower mortality trends. */
		
              
-----------------------------------------------------------------------------------------------------------------
 /* Summary:
This file digs deep into specific country and time-based trends, especially among developed nations. It reveals 
contrasts in healthcare effectiveness */
-----------------------------------------------------------------------------------------------------------------