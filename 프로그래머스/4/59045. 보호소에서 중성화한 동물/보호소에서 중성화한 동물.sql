-- 코드를 입력하세요
/*
1. 보호소에 들어올 당시에는 중성화되지 않았지만(INS, Intact)
2. 보호소를 나갈 당시에는 중성화된 동물(OUTS, Spayed or Neutered)
3. 아이디와 생물 종, 이름을 조회
4. 아이디 순으로 조회
*/

SELECT INS.ANIMAL_ID
     , INS.ANIMAL_TYPE
     , INS.NAME
FROM ANIMAL_INS AS INS
    JOIN ANIMAL_OUTS AS OUTS ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE INS.SEX_UPON_INTAKE LIKE 'Intact%'
    AND (OUTS.SEX_UPON_OUTCOME LIKE 'Spayed%'
    OR OUTS.SEX_UPON_OUTCOME LIKE 'Neutered%')
ORDER BY ANIMAL_ID