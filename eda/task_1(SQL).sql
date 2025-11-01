# Create Database
CREATE DATABASE eda_summary;
# Use the same Database and Perform given eda in the Dataset
USE eda_summary;
#  Measures of central tendency (mean, median, mode)cleaned_data
# Mean
SELECT
    AVG(Coal_RB_4800_FOB_London_Close_USD) AS avg_Coal_RB_4800_FOB_London_Close_USD,
    AVG(Coal_RB_5500_FOB_London_Close_USD) AS avg_Coal_RB_5500_FOB_London_Close_USD,
    AVG(Coal_RB_5700_FOB_London_Close_USD) AS avg_Coal_RB_5700_FOB_London_Close_USD,
    AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS avg_Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
    AVG(Coal_India_5500_CFR_London_Close_USD) AS avg_Coal_India_5500_CFR_London_Close_USD,
    AVG(Price_WTI) AS avg_Price_WTI,
    AVG(Price_Brent_Oil) AS avg_Price_Brent_Oil,
    AVG(Price_Dubai_Brent_Oil) AS avg_Price_Dubai_Brent_Oil,
    AVG(Price_ExxonMobil) AS avg_Price_ExxonMobil,
    AVG(Price_Shenhua) AS avg_Price_Shenhua,
    AVG(Price_Mining) AS avg_Price_Mining,
    AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS avg_Price_LNG_Japan_Korea_Marker_PLATTS,
    AVG(Price_ZAR_USD) AS avg_Price_ZAR_USD,
    AVG(Price_Dutch_TTF) AS avg_Price_Dutch_TTF,
    AVG(Price_ICE) AS avg_Price_ICE,
    AVG(Price_Indian_en_exg_rate) AS avg_Price_Indian_en_exg_rate
FROM cleaned_data;

# Median
SELECT 
  AVG(Coal_RB_4800_FOB_London_Close_USD) AS median_Coal_RB_4800
FROM (
  SELECT 
    Coal_RB_4800_FOB_London_Close_USD,
    ROW_NUMBER() OVER (ORDER BY Coal_RB_4800_FOB_London_Close_USD) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Coal_RB_5500_FOB_London_Close_USD) AS median_Coal_RB_5500
FROM (
  SELECT 
    Coal_RB_5500_FOB_London_Close_USD,
    ROW_NUMBER() OVER (ORDER BY Coal_RB_5500_FOB_London_Close_USD) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Coal_RB_5700_FOB_London_Close_USD) AS median_Coal_RB_5700
FROM (
  SELECT 
    Coal_RB_5700_FOB_London_Close_USD,
    ROW_NUMBER() OVER (ORDER BY Coal_RB_5700_FOB_London_Close_USD) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Coal_RB_5500_FOB_London_Close_USD) AS median_Coal_RB_5500
FROM (
  SELECT 
    Coal_RB_5500_FOB_London_Close_USD,
    ROW_NUMBER() OVER (ORDER BY Coal_RB_5500_FOB_London_Close_USD) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS median_Coal_RB_6000_FOB_CurrentWeek_Avg_USD
FROM (
  SELECT 
    Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
    ROW_NUMBER() OVER (ORDER BY Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Coal_India_5500_CFR_London_Close_USD) AS median_Coal_India_5500_CFR_London_Close_USD
FROM (
  SELECT 
    Coal_India_5500_CFR_London_Close_USD,
    ROW_NUMBER() OVER (ORDER BY Coal_India_5500_CFR_London_Close_USD) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_WTI) AS median_Price_WTI
FROM (
  SELECT 
    Price_WTI,
    ROW_NUMBER() OVER (ORDER BY Price_WTI) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));


SELECT 
  AVG(Price_Brent_Oil) AS median_Price_Brent_Oil
FROM (
  SELECT 
    Price_Brent_Oil,
    ROW_NUMBER() OVER (ORDER BY Price_Brent_Oil) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_Dubai_Brent_Oil) AS median_Price_Dubai_Brent_Oil
FROM (
  SELECT 
    Price_Dubai_Brent_Oil,
    ROW_NUMBER() OVER (ORDER BY Price_Dubai_Brent_Oil) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_ExxonMobil) AS median_Price_ExxonMobil
FROM (
  SELECT 
    Price_ExxonMobil,
    ROW_NUMBER() OVER (ORDER BY Price_ExxonMobil) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_Shenhua) AS median_Price_Shenhua
FROM (
  SELECT 
    Price_Shenhua,
    ROW_NUMBER() OVER (ORDER BY Price_Shenhua) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_All_Share) AS median_Price_All_Share
FROM (
  SELECT 
    Price_All_Share,
    ROW_NUMBER() OVER (ORDER BY Price_All_Share) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_Mining) AS median_Price_Mining
FROM (
  SELECT 
    Price_Mining,
    ROW_NUMBER() OVER (ORDER BY Price_Mining) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS median_Price_LNG_Japan_Korea_Marker_PLATTS
FROM (
  SELECT 
    Price_LNG_Japan_Korea_Marker_PLATTS,
    ROW_NUMBER() OVER (ORDER BY Price_LNG_Japan_Korea_Marker_PLATTS) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_ZAR_USD) AS median_Price_ZAR_USD
FROM (
  SELECT 
    Price_ZAR_USD,
    ROW_NUMBER() OVER (ORDER BY Price_ZAR_USD) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_Natural_Gas) AS median_Price_Natural_Gas
FROM (
  SELECT 
    Price_Natural_Gas,
    ROW_NUMBER() OVER (ORDER BY Price_Natural_Gas) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_ICE) AS median_Price_ICE
FROM (
  SELECT 
    Price_ICE,
    ROW_NUMBER() OVER (ORDER BY Price_ICE) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_Dutch_TTF) AS median_Price_Dutch_TTF
FROM (
  SELECT 
    Price_Dutch_TTF,
    ROW_NUMBER() OVER (ORDER BY Price_Dutch_TTF) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

SELECT 
  AVG(Price_Indian_en_exg_rate) AS median_Price_Indian_en_exg_rate
FROM (
  SELECT 
    Price_Indian_en_exg_rate,
    ROW_NUMBER() OVER (ORDER BY Price_Indian_en_exg_rate) AS rn,
    COUNT(*) OVER () AS total_rows
  FROM cleaned_data
) AS sub
WHERE rn IN (FLOOR((total_rows + 1)/2), CEIL((total_rows + 1)/2));

# Mode 
SHOW DATABASES;
USE eda_summary;

SELECT 
    Coal_RB_4800_FOB_London_Close_USD AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY Coal_RB_4800_FOB_London_Close_USD
ORDER BY frequency DESC
LIMIT 1;

SELECT 
    Coal_RB_5500_FOB_London_Close_USD AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY Coal_RB_5500_FOB_London_Close_USD
ORDER BY frequency DESC
LIMIT 1;

SELECT 
    Coal_RB_5700_FOB_London_Close_USD AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY Coal_RB_5700_FOB_London_Close_USD
ORDER BY frequency DESC
LIMIT 1;

SELECT 
    Coal_RB_6000_FOB_CurrentWeek_Avg_USD AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY  Coal_RB_6000_FOB_CurrentWeek_Avg_USD
ORDER BY frequency DESC
LIMIT 1;
 
 SELECT 
    Coal_India_5500_CFR_London_Close_USD AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY  Coal_India_5500_CFR_London_Close_USD
ORDER BY frequency DESC
LIMIT 1;
 
SELECT 
    Price_WTI AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY  Price_WTI
ORDER BY frequency DESC
LIMIT 1; 

SELECT 
    Price_Brent_Oil AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY  Price_Brent_Oil
ORDER BY frequency DESC
LIMIT 1; 

SELECT 
    Price_ExxonMobil AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY  Price_ExxonMobil
ORDER BY frequency DESC
LIMIT 1; 

SELECT 
    Price_Shenhua AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY  Price_Shenhua
ORDER BY frequency DESC
LIMIT 1; 
 
SELECT 
    Price_All_Share AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY  Price_All_Share
ORDER BY frequency DESC
LIMIT 1; 

SELECT 
    Price_Mining AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY  Price_Mining
ORDER BY frequency DESC
LIMIT 1; 

SELECT 
    Price_LNG_Japan_Korea_Marker_PLATTS AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY  Price_LNG_Japan_Korea_Marker_PLATTS
ORDER BY frequency DESC
LIMIT 1; 

SELECT 
    Price_ZAR_USD AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY  Price_ZAR_USD
ORDER BY frequency DESC
LIMIT 1; 

SELECT 
    Price_Natural_Gas AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY Price_Natural_Gas
ORDER BY frequency DESC
LIMIT 1; 

SELECT 
    Price_ICE AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY Price_ICE
ORDER BY frequency DESC
LIMIT 1; 

SELECT 
    Price_Dutch_TTF AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY Price_Dutch_TTF
ORDER BY frequency DESC
LIMIT 1; 

SELECT 
    Price_Indian_en_exg_rate AS mode_value,
    COUNT(*) AS frequency
FROM cleaned_data
GROUP BY Price_Indian_en_exg_rate
ORDER BY frequency DESC
LIMIT 1; 

# Measures of dispersion (variance, standard deviation)
# Variance
SELECT
    VARIANCE(Coal_RB_4800_FOB_London_Close_USD) AS var_Coal_RB_4800_FOB_London_Close_USD,
    VARIANCE(Coal_RB_5500_FOB_London_Close_USD) AS var_Coal_RB_5500_FOB_London_Close_USD,
    VARIANCE(Coal_RB_5700_FOB_London_Close_USD) AS var_Coal_RB_5700_FOB_London_Close_USD,
    VARIANCE(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS var_Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
    VARIANCE(Coal_India_5500_CFR_London_Close_USD) AS var_Coal_India_5500_CFR_London_Close_USD,
    VARIANCE(Price_WTI) AS var_Price_WTI,
    VARIANCE(Price_Brent_Oil) AS var_Price_Brent_Oil,
    VARIANCE(Price_Dubai_Brent_Oil) AS var_Price_Dubai_Brent_Oil,
    VARIANCE(Price_ExxonMobil) AS var_Price_ExxonMobil,
    VARIANCE(Price_Shenhua) AS var_Price_Shenhua,
    VARIANCE(Price_All_Share) AS var_Price_All_Share,
    VARIANCE(Price_Mining) AS var_Price_Mining,
    VARIANCE(Price_LNG_Japan_Korea_Marker_PLATTS) AS var_Price_LNG_Japan_Korea_Marker_PLATTS,
    VARIANCE(Price_ZAR_USD) AS var_Price_ZAR_USD,
    VARIANCE(Price_Natural_Gas) AS var_Price_Natural_Gas,
    VARIANCE(Price_ICE) AS var_Price_ICE,
    VARIANCE(Price_Dutch_TTF) AS var_Price_Dutch_TTF,
    VARIANCE(Price_Indian_en_exg_rate) AS var_Price_Indian_en_exg_rate
FROM cleaned_data;

# Standard Deviation
SELECT
    STDDEV(Coal_RB_4800_FOB_London_Close_USD) AS sd_Coal_RB_4800_FOB_London_Close_USD,
    STDDEV(Coal_RB_5500_FOB_London_Close_USD) AS sd_Coal_RB_5500_FOB_London_Close_USD,
    STDDEV(Coal_RB_5700_FOB_London_Close_USD) AS sd_Coal_RB_5700_FOB_London_Close_USD,
    STDDEV(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS sd_Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
    STDDEV(Coal_India_5500_CFR_London_Close_USD) AS sd_Coal_India_5500_CFR_London_Close_USD,
    STDDEV(Price_WTI) AS sd_Price_WTI,
    STDDEV(Price_Brent_Oil) AS sd_Price_Brent_Oil,
    STDDEV(Price_Dubai_Brent_Oil) AS sd_Price_Dubai_Brent_Oil,
    STDDEV(Price_ExxonMobil) AS sd_Price_ExxonMobil,
    STDDEV(Price_Shenhua) AS sd_Price_Shenhua,
    STDDEV(Price_All_Share) AS sd_Price_All_Share,
    STDDEV(Price_Mining) AS sd_Price_Mining,
    STDDEV(Price_LNG_Japan_Korea_Marker_PLATTS) AS sd_Price_LNG_Japan_Korea_Marker_PLATTS,
    STDDEV(Price_ZAR_USD) AS sd_Price_ZAR_USD,
    STDDEV(Price_Natural_Gas) AS sd_Price_Natural_Gas,
    STDDEV(Price_ICE) AS sd_Price_ICE,
    STDDEV(Price_Dutch_TTF) AS sd_Price_Dutch_TTF,
    STDDEV(Price_Indian_en_exg_rate) AS sd_Price_Indian_en_exg_rate
FROM cleaned_data;

#  Skewness and kurtosis
# Skewness
SELECT
    COUNT(Coal_RB_4800_FOB_London_Close_USD) AS n,
    AVG(Coal_RB_4800_FOB_London_Close_USD) AS mean,
    STDDEV_SAMP(Coal_RB_4800_FOB_London_Close_USD) AS stddev,
    SUM(POWER(Coal_RB_4800_FOB_London_Close_USD - (SELECT AVG(Coal_RB_4800_FOB_London_Close_USD) FROM cleaned_data), 3)) /
        (COUNT(Coal_RB_4800_FOB_London_Close_USD) * POWER(STDDEV_SAMP(Coal_RB_4800_FOB_London_Close_USD), 3)) *
        (COUNT(Coal_RB_4800_FOB_London_Close_USD) / ((COUNT(Coal_RB_4800_FOB_London_Close_USD) - 1) * (COUNT(Coal_RB_4800_FOB_London_Close_USD) - 2))) AS skewness_Coal_RB_4800_FOB_London_Close_USD
FROM cleaned_data;


SELECT
    COUNT(Coal_RB_5500_FOB_London_Close_USD) AS n,
    AVG(Coal_RB_5500_FOB_London_Close_USD) AS mean,
    STDDEV_SAMP(Coal_RB_5500_FOB_London_Close_USD) AS stddev,
    SUM(POWER(Coal_RB_5500_FOB_London_Close_USD - (SELECT AVG(Coal_RB_5500_FOB_London_Close_USD) FROM cleaned_data), 3)) /
        (COUNT(Coal_RB_5500_FOB_London_Close_USD) * POWER(STDDEV_SAMP(Coal_RB_5500_FOB_London_Close_USD), 3)) *
        (COUNT(Coal_RB_5500_FOB_London_Close_USD) / ((COUNT(Coal_RB_5500_FOB_London_Close_USD) - 1) * (COUNT(Coal_RB_5500_FOB_London_Close_USD) - 2))) AS skewness_Coal_RB_5500_FOB_London_Close_USD
FROM cleaned_data;

SELECT
    COUNT(Coal_RB_5700_FOB_London_Close_USD) AS n,
    AVG(Coal_RB_5700_FOB_London_Close_USD) AS mean,
    STDDEV_SAMP(Coal_RB_5700_FOB_London_Close_USD) AS stddev,
    SUM(POWER(Coal_RB_5700_FOB_London_Close_USD - (SELECT AVG(Coal_RB_5700_FOB_London_Close_USD) FROM cleaned_data), 3)) /
        (COUNT(Coal_RB_5700_FOB_London_Close_USD) * POWER(STDDEV_SAMP(Coal_RB_5700_FOB_London_Close_USD), 3)) *
        (COUNT(Coal_RB_5700_FOB_London_Close_USD) / ((COUNT(Coal_RB_5700_FOB_London_Close_USD) - 1) * (COUNT(Coal_RB_5700_FOB_London_Close_USD) - 2))) AS skewness_Coal_RB_5700_FOB_London_Close_USD
FROM cleaned_data;

SELECT
    COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS n,
    AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS mean,
    STDDEV_SAMP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS stddev,
    SUM(POWER(Coal_RB_6000_FOB_CurrentWeek_Avg_USD - (SELECT AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) FROM cleaned_data), 3)) /
        (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) * POWER(STDDEV_SAMP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD), 3)) *
        (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) / ((COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 1) * (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 2))) AS skewness_Coal_RB_6000_FOB_CurrentWeek_Avg_USD
FROM cleaned_data;

SELECT
    COUNT(Coal_India_5500_CFR_London_Close_USD) AS n,
    AVG(Coal_India_5500_CFR_London_Close_USD) AS mean,
    STDDEV_SAMP(Coal_India_5500_CFR_London_Close_USD) AS stddev,
    SUM(POWER(Coal_India_5500_CFR_London_Close_USD - (SELECT AVG(Coal_India_5500_CFR_London_Close_USD) FROM cleaned_data), 3)) /
        (COUNT(Coal_India_5500_CFR_London_Close_USD) * POWER(STDDEV_SAMP(Coal_India_5500_CFR_London_Close_USD), 3)) *
        (COUNT(Coal_India_5500_CFR_London_Close_USD) / ((COUNT(Coal_India_5500_CFR_London_Close_USD) - 1) * (COUNT(Coal_India_5500_CFR_London_Close_USD) - 2))) AS skewness_Coal_India_5500_CFR_London_Close_USD
FROM cleaned_data;

SELECT
    COUNT(Price_WTI) AS n,
    AVG(Price_WTI) AS mean,
    STDDEV_SAMP(Price_WTI) AS stddev,
    SUM(POWER(Price_WTI - (SELECT AVG(Price_WTI) FROM cleaned_data), 3)) /
        (COUNT(Price_WTI) * POWER(STDDEV_SAMP(Price_WTI), 3)) *
        (COUNT(Price_WTI) / ((COUNT(Price_WTI) - 1) * (COUNT(Price_WTI) - 2))) AS skewness_Price_WTI
FROM cleaned_data;

SELECT
    COUNT(Price_Brent_Oil) AS n,
    AVG(Price_Brent_Oil) AS mean,
    STDDEV_SAMP(Price_Brent_Oil) AS stddev,
    SUM(POWER(Price_Brent_Oil - (SELECT AVG(Price_Brent_Oil) FROM cleaned_data), 3)) /
        (COUNT(Price_Brent_Oil) * POWER(STDDEV_SAMP(Price_Brent_Oil), 3)) *
        (COUNT(Price_Brent_Oil) / ((COUNT(Price_Brent_Oil) - 1) * (COUNT(Price_Brent_Oil) - 2))) AS skewness_Price_Brent_Oil
FROM cleaned_data;

SELECT
    COUNT(Price_Dubai_Brent_Oil) AS n,
    AVG(Price_Dubai_Brent_Oil) AS mean,
    STDDEV_SAMP(Price_Dubai_Brent_Oil) AS stddev,
    SUM(POWER(Price_Dubai_Brent_Oil - (SELECT AVG(Price_Dubai_Brent_Oil) FROM cleaned_data), 3)) /
        (COUNT(Price_Dubai_Brent_Oil) * POWER(STDDEV_SAMP(Price_Dubai_Brent_Oil), 3)) *
        (COUNT(Price_Dubai_Brent_Oil) / ((COUNT(Price_Dubai_Brent_Oil) - 1) * (COUNT(Price_Dubai_Brent_Oil) - 2))) AS skewness_Price_Dubai_Brent_Oil
FROM cleaned_data;

SELECT
    COUNT(Price_ExxonMobil) AS n,
    AVG(Price_ExxonMobil) AS mean,
    STDDEV_SAMP(Price_ExxonMobil) AS stddev,
    SUM(POWER(Price_ExxonMobil - (SELECT AVG(Price_ExxonMobil) FROM cleaned_data), 3)) /
        (COUNT(Price_ExxonMobil) * POWER(STDDEV_SAMP(Price_ExxonMobil), 3)) *
        (COUNT(Price_ExxonMobil) / ((COUNT(Price_ExxonMobil) - 1) * (COUNT(Price_ExxonMobil) - 2))) AS skewness_Price_ExxonMobil
FROM cleaned_data;


SELECT
    COUNT(Price_Shenhua) AS n,
    AVG(Price_Shenhua) AS mean,
    STDDEV_SAMP(Price_Shenhua) AS stddev,
    SUM(POWER(Price_Shenhua - (SELECT AVG(Price_Shenhua) FROM cleaned_data), 3)) /
        (COUNT(Price_Shenhua) * POWER(STDDEV_SAMP(Price_Shenhua), 3)) *
        (COUNT(Price_Shenhua) / ((COUNT(Price_Shenhua) - 1) * (COUNT(Price_Shenhua) - 2))) AS skewness_Price_Shenhua
FROM cleaned_data;


SELECT
    COUNT(Price_All_Share) AS n,
    AVG(Price_All_Share) AS mean,
    STDDEV_SAMP(Price_All_Share) AS stddev,
    SUM(POWER(Price_All_Share - (SELECT AVG(Price_All_Share) FROM cleaned_data), 3)) /
        (COUNT(Price_All_Share) * POWER(STDDEV_SAMP(Price_All_Share), 3)) *
        (COUNT(Price_All_Share) / ((COUNT(Price_All_Share) - 1) * (COUNT(Price_All_Share) - 2))) AS skewness_Price_All_Share
FROM cleaned_data;


SELECT
    COUNT(Price_Mining) AS n,
    AVG(Price_Mining) AS mean,
    STDDEV_SAMP(Price_Mining) AS stddev,
    SUM(POWER(Price_Mining - (SELECT AVG(Price_Mining) FROM cleaned_data), 3)) /
        (COUNT(Price_Mining) * POWER(STDDEV_SAMP(Price_Mining), 3)) *
        (COUNT(Price_Mining) / ((COUNT(Price_Mining) - 1) * (COUNT(Price_Mining) - 2))) AS skewness_Price_Mining
FROM cleaned_data;

SELECT
    COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) AS n,
    AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS mean,
    STDDEV_SAMP(Price_LNG_Japan_Korea_Marker_PLATTS) AS stddev,
    SUM(POWER(Price_LNG_Japan_Korea_Marker_PLATTS - (SELECT AVG(Price_LNG_Japan_Korea_Marker_PLATTS) FROM cleaned_data), 3)) /
        (COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) * POWER(STDDEV_SAMP(Price_LNG_Japan_Korea_Marker_PLATTS), 3)) *
        (COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) / ((COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) - 1) * (COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) - 2))) AS skewness_Price_LNG_Japan_Korea_Marker_PLATTS
FROM cleaned_data;


SELECT
    COUNT(Price_ZAR_USD) AS n,
    AVG(Price_ZAR_USD) AS mean,
    STDDEV_SAMP(Price_ZAR_USD) AS stddev,
    SUM(POWER(Price_ZAR_USD - (SELECT AVG(Price_ZAR_USD) FROM cleaned_data), 3)) /
        (COUNT(Price_ZAR_USD) * POWER(STDDEV_SAMP(Price_ZAR_USD), 3)) *
        (COUNT(Price_ZAR_USD) / ((COUNT(Price_ZAR_USD) - 1) * (COUNT(Price_ZAR_USD) - 2))) AS skewness_Price_ZAR_USD
FROM cleaned_data;


SELECT
    COUNT(Price_Natural_Gas) AS n,
    AVG(Price_Natural_Gas) AS mean,
    STDDEV_SAMP(Price_Natural_Gas) AS stddev,
    SUM(POWER(Price_Natural_Gas - (SELECT AVG(Price_Natural_Gas) FROM cleaned_data), 3)) /
        (COUNT(Price_Natural_Gas) * POWER(STDDEV_SAMP(Price_Natural_Gas), 3)) *
        (COUNT(Price_Natural_Gas) / ((COUNT(Price_Natural_Gas) - 1) * (COUNT(Price_Natural_Gas) - 2))) AS skewness_Price_Natural_Gas
FROM cleaned_data;

SELECT
    COUNT(Price_ICE) AS n,
    AVG(Price_ICE) AS mean,
    STDDEV_SAMP(Price_ICE) AS stddev,
    SUM(POWER(Price_ICE - (SELECT AVG(Price_ICE) FROM cleaned_data), 3)) /
        (COUNT(Price_ICE) * POWER(STDDEV_SAMP(Price_ICE), 3)) *
        (COUNT(Price_ICE) / ((COUNT(Price_ICE) - 1) * (COUNT(Price_ICE) - 2))) AS skewness_Price_ICE
FROM cleaned_data;

SELECT
    COUNT(Price_Dutch_TTF) AS n,
    AVG(Price_Dutch_TTF) AS mean,
    STDDEV_SAMP(Price_Dutch_TTF) AS stddev,
    SUM(POWER(Price_Dutch_TTF - (SELECT AVG(Price_Dutch_TTF) FROM cleaned_data), 3)) /
        (COUNT(Price_Dutch_TTF) * POWER(STDDEV_SAMP(Price_Dutch_TTF), 3)) *
        (COUNT(Price_Dutch_TTF) / ((COUNT(Price_Dutch_TTF) - 1) * (COUNT(Price_Dutch_TTF) - 2))) AS skewness_Price_Dutch_TTF
FROM cleaned_data;

SELECT
    COUNT(Price_Indian_en_exg_rate) AS n,
    AVG(Price_Indian_en_exg_rate) AS mean,
    STDDEV_SAMP(Price_Indian_en_exg_rate) AS stddev,
    SUM(POWER(Price_Indian_en_exg_rate - (SELECT AVG(Price_Indian_en_exg_rate) FROM cleaned_data), 3)) /
        (COUNT(Price_Indian_en_exg_rate) * POWER(STDDEV_SAMP(Price_Indian_en_exg_rate), 3)) *
        (COUNT(Price_Indian_en_exg_rate) / ((COUNT(Price_Indian_en_exg_rate) - 1) * (COUNT(Price_Indian_en_exg_rate) - 2))) AS skewness_Price_Indian_en_exg_rate
FROM cleaned_data;

# Kurtosis
SELECT
    COUNT(Coal_RB_4800_FOB_London_Close_USD) AS n,
    AVG(Coal_RB_4800_FOB_London_Close_USD) AS mean,
    STDDEV_SAMP(Coal_RB_4800_FOB_London_Close_USD) AS stddev,
    (
        (COUNT(Coal_RB_4800_FOB_London_Close_USD) * (COUNT(Coal_RB_4800_FOB_London_Close_USD) + 1)) /
        ((COUNT(Coal_RB_4800_FOB_London_Close_USD) - 1) * (COUNT(Coal_RB_4800_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_4800_FOB_London_Close_USD) - 3))
    ) *
    (
        SUM(POWER(Coal_RB_4800_FOB_London_Close_USD - (SELECT AVG(Coal_RB_4800_FOB_London_Close_USD) FROM cleaned_data), 4)) /
        (POWER(STDDEV_SAMP(Coal_RB_4800_FOB_London_Close_USD), 4) * COUNT(Coal_RB_4800_FOB_London_Close_USD))
    )
    - (
        (3 * POWER(COUNT(Coal_RB_4800_FOB_London_Close_USD) - 1, 2)) /
        ((COUNT(Coal_RB_4800_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_4800_FOB_London_Close_USD) - 3))
    )
    AS kurtosis_Coal_RB_4800_FOB_London_Close_USD
FROM cleaned_data;

SELECT
    COUNT(Coal_RB_5500_FOB_London_Close_USD) AS n,
    AVG(Coal_RB_5500_FOB_London_Close_USD) AS mean,
    STDDEV_SAMP(Coal_RB_5500_FOB_London_Close_USD) AS stddev,
    (
        (COUNT(Coal_RB_5500_FOB_London_Close_USD) * (COUNT(Coal_RB_5500_FOB_London_Close_USD) + 1)) /
        ((COUNT(Coal_RB_5500_FOB_London_Close_USD) - 1) * (COUNT(Coal_RB_5500_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_5500_FOB_London_Close_USD) - 3))
    ) *
    (
        SUM(POWER(Coal_RB_5500_FOB_London_Close_USD - (SELECT AVG(Coal_RB_5500_FOB_London_Close_USD) FROM cleaned_data), 4)) /
        (POWER(STDDEV_SAMP(Coal_RB_5500_FOB_London_Close_USD), 4) * COUNT(Coal_RB_5500_FOB_London_Close_USD))
    )
    - (
        (3 * POWER(COUNT(Coal_RB_5500_FOB_London_Close_USD) - 1, 2)) /
        ((COUNT(Coal_RB_5500_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_5500_FOB_London_Close_USD) - 3))
    )
    AS kurtosis_Coal_RB_5500_FOB_London_Close_USD
FROM cleaned_data;


SELECT
    COUNT(Coal_RB_5700_FOB_London_Close_USD) AS n,
    AVG(Coal_RB_5700_FOB_London_Close_USD) AS mean,
    STDDEV_SAMP(Coal_RB_5700_FOB_London_Close_USD) AS stddev,
    (
        (COUNT(Coal_RB_5700_FOB_London_Close_USD) * (COUNT(Coal_RB_5700_FOB_London_Close_USD) + 1)) /
        ((COUNT(Coal_RB_5700_FOB_London_Close_USD) - 1) * (COUNT(Coal_RB_5700_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_5700_FOB_London_Close_USD) - 3))
    ) *
    (
        SUM(POWER(Coal_RB_5700_FOB_London_Close_USD - (SELECT AVG(Coal_RB_5700_FOB_London_Close_USD) FROM cleaned_data), 4)) /
        (POWER(STDDEV_SAMP(Coal_RB_5700_FOB_London_Close_USD), 4) * COUNT(Coal_RB_5700_FOB_London_Close_USD))
    )
    - (
        (3 * POWER(COUNT(Coal_RB_5700_FOB_London_Close_USD) - 1, 2)) /
        ((COUNT(Coal_RB_5700_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_5700_FOB_London_Close_USD) - 3))
    )
    AS kurtosis_Coal_RB_5700_FOB_London_Close_USD
FROM cleaned_data;


SELECT
    COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS n,
    AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS mean,
    STDDEV_SAMP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS stddev,
    (
        (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) * (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) + 1)) /
        ((COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 1) * (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 2) * (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 3))
    ) *
    (
        SUM(POWER(Coal_RB_6000_FOB_CurrentWeek_Avg_USD - (SELECT AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) FROM cleaned_data), 4)) /
        (POWER(STDDEV_SAMP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD), 4) * COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD))
    )
    - (
        (3 * POWER(COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 1, 2)) /
        ((COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 2) * (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 3))
    )
    AS kurtosis_Coal_RB_6000_FOB_CurrentWeek_Avg_USD
FROM cleaned_data;



