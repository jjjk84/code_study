-- 코드를 입력하세요

-- 2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시하고, 대여 중이지 않은 자동차인 경우 '대여 가능'을 표시
-- 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'으로 표시
-- 자동차 ID를 기준으로 내림차순 정렬

SELECT DISTINCT CAR_ID
     , CASE
        WHEN CAR_ID IN (
            SELECT DISTINCT CAR_ID
            FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
            WHERE START_DATE <= '2022-10-16'
                AND END_DATE >= '2022-10-16'
        ) THEN '대여중'
        ELSE '대여 가능'
       END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
ORDER BY CAR_ID DESC;
        
