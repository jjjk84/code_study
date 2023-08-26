-- 코드를 입력하세요
/*
1. 자동차 종류가 '트럭'인 자동차의 대여 기록
2. 대여 기록 별로 대여 금액(컬럼명: FEE)을 구하여
3. 기록 ID와 대여 금액 리스트를 출력
4. 대여 금액을 기준으로 내림차순 정렬, 대여 기록 ID를 기준으로 내림차순 정렬
*/
SELECT RH.HISTORY_ID
     , ROUND(CAR.DAILY_FEE * (DATEDIFF(RH.END_DATE, RH.START_DATE) + 1) *
       CASE
        WHEN DATEDIFF(RH.END_DATE, RH.START_DATE) + 1 < 7 
            THEN 1
        WHEN DATEDIFF(RH.END_DATE, RH.START_DATE) + 1 < 30
            THEN 0.95
        WHEN DATEDIFF(RH.END_DATE, RH.START_DATE) + 1 < 90
            THEN 0.92
        ELSE 0.85
       END, 0) AS 'FEE'
FROM CAR_RENTAL_COMPANY_CAR AS CAR
    JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY AS RH ON RH.CAR_ID = CAR.CAR_ID
WHERE CAR.CAR_TYPE = '트럭'
ORDER BY FEE DESC, RH.HISTORY_ID DESC;