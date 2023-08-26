-- 코드를 입력하세요
/*
1. 자동차 종류가 '세단'인 자동차들
2. 10월에 대여를 시작한 기록이 있는 자동차 ID 리스트를 출력
3. 자동차 ID 리스트는 중복이 없어야
4. 자동차 ID를 기준으로 내림차순 정렬
*/

SELECT DISTINCT(CAR.CAR_ID)
FROM CAR_RENTAL_COMPANY_CAR AS CAR
    JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY AS HIS
        ON CAR.CAR_ID = HIS.CAR_ID
WHERE CAR.CAR_TYPE = '세단' AND START_DATE >= '2022-10-01'
ORDER BY CAR.CAR_ID DESC;