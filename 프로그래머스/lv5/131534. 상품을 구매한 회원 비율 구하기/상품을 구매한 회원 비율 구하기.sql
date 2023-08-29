-- 코드를 입력하세요
/*
1. 2021년에 가입한 전체 회원들 중
2. 상품을 구매한 회원수와 상품을 구매한 회원의 비율(=2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)을 년, 월 별로 출력
3. 상품을 구매한 회원의 비율은 소수점 두번째자리에서 반올림
4. 전체 결과는 년을 기준으로 오름차순 정렬해주시고 년이 같다면 월을 기준으로 오름차순 정렬
*/
SELECT YEAR(SALE.SALES_DATE) AS YEAR
     , MONTH(SALE.SALES_DATE) AS MONTH
     , COUNT(DISTINCT(SALE.USER_ID)) AS PUCHASED_USERS
     , ROUND(COUNT(DISTINCT(SALE.USER_ID)) / (SELECT COUNT(*) FROM USER_INFO WHERE YEAR(JOINED) = '2021'), 1) AS PUCHASED_RATIO
FROM ONLINE_SALE AS SALE
    LEFT JOIN USER_INFO AS USER ON SALE.USER_ID = USER.USER_ID
WHERE YEAR(USER.JOINED) = '2021'
GROUP BY YEAR, MONTH
ORDER BY YEAR, MONTH;