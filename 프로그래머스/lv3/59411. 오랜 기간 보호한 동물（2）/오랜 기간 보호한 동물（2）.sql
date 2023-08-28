-- 코드를 입력하세요
/*
1. 입양을 간 동물 중
2. 보호 기간이 가장 길었던 동물 두 마리
3. 아이디와 이름 조회
4. 보호기간이 긴 순으로 조회
*/
SELECT OUTS.ANIMAL_ID
     , OUTS.NAME
FROM ANIMAL_OUTS AS OUTS
    LEFT JOIN ANIMAL_INS AS INS ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
ORDER BY (DATEDIFF(OUTS.DATETIME, INS.DATETIME) + 1) DESC
LIMIT 2;
