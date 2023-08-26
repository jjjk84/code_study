-- 코드를 입력하세요
/*
1. 조회수가 가장 높은 중고거래 게시물에 대한 첨부파일 경로를 조회
2. 파일경로 : /home/grep/src/게시물 ID/파일 ID + 파일 이름. 파일 확장자
*/
SELECT CONCAT('/home/grep/src/', B.BOARD_ID, '/'
              , F.FILE_ID, F.FILE_NAME, F.FILE_EXT) AS FILE_PATH
FROM USED_GOODS_FILE AS F
    JOIN USED_GOODS_BOARD AS B ON F.BOARD_ID = B.BOARD_ID
WHERE F.BOARD_ID = (SELECT BOARD_ID 
                    FROM USED_GOODS_BOARD 
                    ORDER BY VIEWS DESC 
                    LIMIT 1)
ORDER BY FILE_ID DESC;

         