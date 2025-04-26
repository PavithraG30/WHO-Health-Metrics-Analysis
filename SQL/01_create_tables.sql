CREATE TABLE IF NOT EXISTS countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(52),
    development_stage VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS health_metrics (
    metric_id INT PRIMARY KEY,
    country_id INT,
    year INT,
    life_expectancy NUMERIC(3, 1),
    adult_mortality INT,
    infant_deaths INT,
    under_five_deaths INT,
    hiv_aids NUMERIC(3, 1),
    schooling NUMERIC(3, 1),
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

CREATE TABLE IF NOT EXISTS health_factors (
    factor_id INT PRIMARY KEY,
    metric_id INT,
    alcohol NUMERIC(4, 2),
    percentage_expenditure NUMERIC(14, 9),
    hepatitis_b INT,
    measles INT,
    bmi NUMERIC(3, 1),
    polio INT,
    total_expenditure NUMERIC(4, 2),
    diphtheria INT,
    gdp VARCHAR(9),
    population VARCHAR(10),
    income_composition_resources VARCHAR(5),
    FOREIGN KEY (metric_id) REFERENCES health_metrics(metric_id)
);
