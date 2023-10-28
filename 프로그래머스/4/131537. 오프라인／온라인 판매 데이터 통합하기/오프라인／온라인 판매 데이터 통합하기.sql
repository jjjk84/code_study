/*
1. 2022년 3월의 오프라인/온라인 상품 판매 데이터
2. 판매 날짜, 상품ID, 유저ID, 판매량
3. OFFLINE_SALE 테이블의 판매 데이터의 USER_ID 값은 NULL 로 표시
4. 판매일을 기준으로 오름차순, 상품 ID를 기준으로 오름차순, 유저 ID를 기준으로 오름차순 정렬
*/

WITH ON_ AS (
    SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE
         , PRODUCT_ID
         , USER_ID
         , SALES_AMOUNT
    FROM ONLINE_SALE
    WHERE SALES_DATE BETWEEN '2022-03-01' AND '2022-03-31'
), OFF_ AS(
    SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE
         , PRODUCT_ID
         , NULL AS USER_ID
         , SALES_AMOUNT
    FROM OFFLINE_SALE
    WHERE SALES_DATE BETWEEN '2022-03-01' AND '2022-03-31'
)

SELECT *
FROM ON_

UNION ALL

SELECT *
FROM OFF_

ORDER BY SALES_DATE, PRODUCT_ID, USER_ID