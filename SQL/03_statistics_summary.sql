#04_statistics_summary.sql

#1. Total deaths by cause
SELECT 
  SUM(adult_mortality) AS total_adult_deaths,
  SUM(infant_deaths) AS total_infant_deaths,
  SUM(under_five_deaths) AS total_u5_deaths
FROM health_metrics;

/* Insights : 
Total deaths reported:
                      Adult deaths: 482,524
                      Infant deaths: 89,033
                      Under-5 deaths: 123,501
This indicates a significant focus area in adult healthcare to reduce preventable deaths.*/