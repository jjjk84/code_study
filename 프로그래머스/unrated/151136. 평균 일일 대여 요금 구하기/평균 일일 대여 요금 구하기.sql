-- 코드를 입력하세요
/*
1. 자동차 종류 SUV
2. 평균 일일 대여 요금(소수 첫 번째 자리에서 반올림)
3. 컬럼명 AVERAGE_FEE
*/
SELECT ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';