-- ============================================================
-- Gender Representation in Diplomacy (1968–2021)
-- ============================================================
--
-- Gender distribution overview
SELECT
    gender,
    COUNT(*) AS total
FROM gendipdataset
WHERE gender <> 99
GROUP BY gender
ORDER BY gender;

-- The dataset shows a strong gender imbalance in diplomatic roles,
-- with male diplomats outnumbering female diplomats by approximately 7 to 1.


-- Top 52 countries by number of US diplomatic assignments
SELECT cname_receive,COUNT(*) AS cases
from gendipdataset
WHERE cname_send = 'United States of America'
GROUP BY cname_receive
ORDER BY cases DESC,cname_receive ASC
LIMIT 52;

-- Identifies the countries that have received the highest number of
-- diplomatic assignments from the United States over the observed period.


-- Female representation by diplomatic title
SELECT title,COUNT(*) AS total
FROM gendipdataset
WHERE gender = 1 
GROUP BY title
ORDER BY title ASC;

-- The most represented role among females is Ambassador, followed by other diplomatic positions with lower frequency.


-- Male representation by diplomatic title
SELECT title,COUNT(*) AS total
FROM gendipdataset
WHERE gender = 0 
GROUP BY title
ORDER BY title ASC;

-- Although males are significantly more represented, the distribution
-- of diplomatic titles is broadly similar across genders, with
-- Ambassadors being the most common role.
-- Acting Chargé d’Affaires positions show a relatively higher female
-- representation compared to males, indicating some variation within
-- the overall pattern.


-- Evolution of female-to-male ratio across regions over time
SELECT
    year,
    region_send,
    SUM(CASE WHEN gender = 0 THEN 1 ELSE 0 END) AS males,
    SUM(CASE WHEN gender = 1 THEN 1 ELSE 0 END) AS females,
    SUM(CASE WHEN gender = 1 THEN 1 ELSE 0 END) * 1.0 /
    NULLIF(SUM(CASE WHEN gender = 0 THEN 1 ELSE 0 END), 0) AS ratio
FROM gendipdataset
WHERE gender <> 99
GROUP BY year, region_send
ORDER BY region_send, year;

-- This query analyses the evolution of the female-to-male ratio across
-- world regions over time, highlighting a gradual increase in female
-- diplomatic representation, although regional disparities persist.


--Nordic country focus
SELECT
    year,
    region_send,
    SUM(CASE WHEN gender = 0 THEN 1 ELSE 0 END) AS males,
    SUM(CASE WHEN gender = 1 THEN 1 ELSE 0 END) AS females,
    SUM(CASE WHEN gender = 1 THEN 1 ELSE 0 END) * 1.0 /
    NULLIF(SUM(CASE WHEN gender = 0 THEN 1 ELSE 0 END), 0) AS ratio
FROM gendipdataset
WHERE gender <> 99
  AND region_send = 5
GROUP BY year, region_send
ORDER BY year;

-- Nordic countries (region 5) show a consistently higher female-to-male ratio
-- compared to other regions, indicating lower gender imbalance.


-- Overall global evolution of female-to-male ratio over time
SELECT
    year,
    SUM(CASE WHEN gender = 0 THEN 1 ELSE 0 END) AS males,
    SUM(CASE WHEN gender = 1 THEN 1 ELSE 0 END) AS females,
    SUM(CASE WHEN gender = 1 THEN 1 ELSE 0 END) * 1.0 /
    NULLIF(SUM(CASE WHEN gender = 0 THEN 1 ELSE 0 END), 0) AS ratio
FROM gendipdataset
WHERE year BETWEEN 1968 AND 2021
  AND gender <> 99
GROUP BY year
ORDER BY year;

--  This query highlights the long-term improvement in female representation
-- in diplomacy. Although full gender parity has not yet been achieved,
-- the pace of improvement has accelerated since 2013, with substantial
-- gains occurring over a relatively short period.


-- ============================================================
-- Conclusion
-- ============================================================
--
-- Overall, gender disparity remains a persistent feature of diplomatic representation.
-- However, female participation has increased steadily since 1968, with a
-- noticeably faster pace of improvement after 2013.
--
-- The imbalance appears primarily quantitative rather than qualitative:
-- women remain underrepresented overall, while the distribution of
-- diplomatic roles is broadly similar across genders.