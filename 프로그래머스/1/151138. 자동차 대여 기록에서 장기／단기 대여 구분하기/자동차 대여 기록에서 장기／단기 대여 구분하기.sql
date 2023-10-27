-- 코드를 입력하세요
/*
1. 대여 시작일이 2022년 9월
2. 대여 기간이 30일 이상이면 '장기 대여' 그렇지 않으면 '단기 대여' 로 표시하는 컬럼(컬럼명: RENT_TYPE)을 추가
3. 대여기록 출력
4. 대여 기록 ID를 기준으로 내림차순 정렬
*/

SELECT HISTORY_ID
     , CAR_ID
     , DATE_FORMAT(start_date, '%Y-%m-%d') AS START_DATE
     , DATE_FORMAT(end_date, '%Y-%m-%d') AS END_DATE
     , CASE
        WHEN DATEDIFF(END_DATE, START_DATE) + 1 >= 30 THEN '장기 대여'
        ELSE '단기 대여'
       END AS RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE BETWEEN '2022-09-01' AND '2022-09-30'
ORDER BY HISTORY_ID DESC;