-- 코드를 입력하세요
/*
1. 보호소에 들어왔으나, 입양은 되지 않은 동물
2. 가장 오래 보호소에 있었던 동물 3마리
3. 이름, 보호 시작일 조회
4. 보호 시작일 기준 정렬
*/
SELECT INS.NAME
     , INS.DATETIME
FROM ANIMAL_INS AS INS
    LEFT JOIN ANIMAL_OUTS AS OUTS
        ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE OUTS.ANIMAL_ID IS NULL
ORDER BY INS.DATETIME
LIMIT 3;