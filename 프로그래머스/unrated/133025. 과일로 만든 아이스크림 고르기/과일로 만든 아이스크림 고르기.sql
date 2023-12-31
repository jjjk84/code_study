-- 코드를 입력하세요
/*
1. 아이스크림 총주문량이 3000 초과
2. 아이스크림 주성분 과일
3. 총주문량이 큰 순서대로
4. 아이스크림 맛 조회
*/
SELECT FH.FLAVOR
FROM FIRST_HALF AS FH
    JOIN ICECREAM_INFO AS INFO
        ON FH.FLAVOR = INFO.FLAVOR
WHERE FH.TOTAL_ORDER > 3000 AND INFO.INGREDIENT_TYPE = 'fruit_based'
ORDER BY FH.TOTAL_ORDER DESC;