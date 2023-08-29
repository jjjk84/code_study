-- 코드를 입력하세요
/*
1. 보호소에 들어올 당시에는 중성화되지 않았지만(INS, Intact)
2. 보호소를 나갈 당시에는 중성화된 동물(OUTS, Spayed or Neutered)
3. 아이디와 생물 종, 이름을 조회
4. 아이디 순으로 조회
*/
SELECT OUTS.ANIMAL_ID
     , OUTS.ANIMAL_TYPE
     , OUTS.NAME
FROM ANIMAL_OUTS AS OUTS
    LEFT JOIN ANIMAL_INS AS INS ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
WHERE SUBSTRING_INDEX(INS.SEX_UPON_INTAKE, ' ', 1) = 'Intact'
    AND SUBSTRING_INDEX(OUTS.SEX_UPON_OUTCOME, ' ', 1) IN ('Spayed', 'Neutered')
ORDER BY OUTS.ANIMAL_ID;