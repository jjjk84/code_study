/*
1. 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값
2. 큰 순서대로
3. 상위 3개의 맛
*/

WITH JULY_TABLE AS (
    SELECT FLAVOR
         , SUM(TOTAL_ORDER) AS JULY_ORDER
    FROM JULY
    GROUP BY FLAVOR
)

SELECT FH.FLAVOR
FROM FIRST_HALF AS FH
    LEFT JOIN JULY_TABLE AS J ON FH.FLAVOR = J.FLAVOR
ORDER BY (TOTAL_ORDER + JULY_ORDER) DESC
LIMIT 3;