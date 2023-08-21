-- 코드를 입력하세요
/*
1. 동물의 생물 종, 이름, 성별 및 중성화 여부 조회
2. 아이디 순 조회
3. 이름이 없는 동물의 이름은 "No name"
*/
SELECT ANIMAL_TYPE
     , IFNULL(NAME, 'No name') AS NAME
     , SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;