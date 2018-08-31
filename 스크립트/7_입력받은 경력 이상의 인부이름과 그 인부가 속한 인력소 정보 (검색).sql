SET FEEDBACK OFF

TTITLE '입력받은 경력 이상의 인부이름과 그 인부가 속한 인력소'
COLUMN 이름 HEADING '인부이름' FORMAT A15
COLUMN 경력 HEADING '경력' FORMAT 99
COLUMN 인력소명 HEADING '인력소' FORMAT A15
COLUMN 인력소연락처 HEADING '연락처' FORMAT A15
COLUMN 인력소주소 HEADING '주소' FORMAT A15

SELECT 개인인력.이름, 개인인력.경력, 인력소.인력소명, 인력소.인력소연락처, 인력소.인력소주소
FROM 회원, 인력소_계약하다, 인력소, 소속되다, 개인인력
WHERE 개인인력.인력ID = 소속되다.인력ID
AND 소속되다.인력소번호 = 인력소.인력소번호
AND 인력소.인력소번호 = 인력소_계약하다.인력소번호
AND 인력소_계약하다.회원ID = 회원.회원ID
AND 개인인력.경력 >= &경력;

TTITLE OFF
CLEAR COLUMN