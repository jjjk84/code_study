-- 코드를 입력하세요
/*
1. 2022-8 ~ 2022-10 총 대여 횟수가 5회 이상(대여 시작일 기준)
2. 해당 기간 동안의 월별, ID 별 총 대여 횟수
4. 월 기준 오름차순, ID 내림차순
5. 특정 월의 총 대여횟수가 0인 경우 결과 제외
*/

SELECT MONTH(START_DATE) AS MONTH
     , CAR_ID
     , COUNT(*) AS RECORDS   
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE CAR_ID IN (SELECT CAR_ID
                 FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                 WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
                 GROUP BY CAR_ID
                    HAVING COUNT(*) >= 5)
    AND START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
GROUP BY MONTH(START_DATE), CAR_ID
ORDER BY MONTH ASC, CAR_ID DESC;

