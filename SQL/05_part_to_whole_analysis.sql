#02_Part-to-Whole Analysis


#1. Deaths by development stage
SELECT 
  c.development_stage,
  SUM(m.adult_mortality) AS adult_deaths,
  SUM(m.infant_deaths) AS infant_deaths,
  SUM(m.under_five_deaths) AS u5_deaths
FROM countries c
JOIN health_metrics m ON c.country_id = m.country_id
GROUP BY c.development_stage;

/* Insights : Developed countries show better health outcomes, 
              while developing nations still report higher 
              mortality.This underlines the need for enhanced 
              healthcare infrastructure in developing countries.
              Strategic investment in child and maternal healthcare 
              can further reduce mortality in developing regions.*/

#2. Country-wise average adult mortality (Top 5)
SELECT 
  c.country_name,
  ROUND(AVG(m.adult_mortality), 2) AS avg_adult_deaths
FROM countries c
JOIN health_metrics m ON c.country_id = m.country_id
GROUP BY c.country_name
ORDER BY avg_adult_deaths DESC
LIMIT 5;

/* Insights : The top 5 countries with the highest average adult mortality are
              Madagascar,Kiribati, Luxembourg, Bahrain, and Iraq. This suggests 
              a need for deeper investigation into health risks or conditions in these 
              areas */
              
              
#3.How much are developing countries spending on healthcare each year?

SELECT 
  c.country_name, m.year,
  AVG(h.total_expenditure) AS avg_expenditure
FROM countries c
JOIN health_metrics m ON c.country_id = m.country_id
JOIN health_factors h ON m.metric_id = h.metric_id
WHERE c.development_stage = 'Developing'
GROUP BY c.country_name, m.year
ORDER BY avg_expenditure DESC;

/* Insights : Vietnam consistently ranked among the top healthcare spenders in developing nations,
              with a peak expenditure of 17.37% of GDP in 2007. */
--------------------------------------------------------------------------------------------------------------
                                       /*Summary
				This analysis focuses on how different groups and countries contribute to overall global health 
                patterns.It helps uncover disparities in mortality and healthcare investment, emphasizing where 
                efforts should be concentrated.
---------------------------------------------------------------------------------------------------------------