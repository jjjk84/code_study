-- 코드를 입력하세요
/*
1. 평균 대여 기간 7일 이상
2. 자동차 ID, 평균 대여 기간 출력
3. 평균 대여 기간 소수점 두번째 자리에서 반올림
4. 평균 대여 기간을 기준으로 내림차순 정렬, 자동차 ID를 기준으로 내림차순 정렬
*/

SELECT CAR_ID
     , ROUND(AVG(DATEDIFF(END_DATE, START_DATE) + 1), 1) AS AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
    HAVING AVERAGE_DURATION >= 7
ORDER BY AVERAGE_DURATION DESC, CAR_ID DESC;