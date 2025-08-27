-- Exploratory Data Analysis

SELECT * 
FROM layoffs_staging2;

SELECT company,
SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 desc
;

SELECT MIN(`date`), MAX(`date`)
FROM layoffs_staging2;



SELECT country,
SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 desc
;

SELECT YEAR(`date`),
SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY 2 desc
;

SELECT SUBSTRING(`date`,1,7) as `MONTH`,
SUM(total_laid_off) as total_off
FROM layoffs_staging2
WHERE SUBSTRING(`date`,1,7) IS NOT NULL
GROUP BY `MONTH`
ORDER BY 1 ASC;


WITH Rolling_total AS
(
SELECT SUBSTRING(`date`,1,7) as `MONTH`,
SUM(total_laid_off) as total_off
FROM layoffs_staging2
WHERE SUBSTRING(`date`,1,7) IS NOT NULL
GROUP BY `MONTH`
ORDER BY 1 ASC
)
SELECT `MONTH`, total_off, SUM(total_off) OVER (ORDER BY `MONTH`) as rolling_total
FROM Rolling_total
GROUP BY `MONTH`
;





