-- 코드를 입력하세요
/*
1. 진료과코드가 CS, GS
2. 이름, ID, 진료과, 고용일자 조회
3. 고용일자 기준 내림차순, 이름 오름차순 정렬
4. 날짜 포멧
*/

SELECT DR_NAME
     , DR_ID
     , MCDP_CD
     , DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD IN ('CS', 'GS')
ORDER BY HIRE_YMD DESC, DR_NAME;