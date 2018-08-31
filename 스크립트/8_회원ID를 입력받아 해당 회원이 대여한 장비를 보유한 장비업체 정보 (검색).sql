SET FEEDBACK OFF

TTITLE '회원ID를 입력받아 해당 회원이 대여한 장비를 보유한 장비업체 정보'
COLUMN 회원ID HEADING '회원ID' FORMAT A15
COLUMN 이름 HEADING '회원이름' FORMAT A15
COLUMN 장비명 HEADING '장비' FORMAT A15
COLUMN 업체명 HEADING '업체' FORMAT A15
COLUMN 업체주소 HEADING '업체주소' FORMAT A15

SELECT 회원.회원ID, 회원.이름, 장비.장비명, 장비업체.업체명, 장비업체.업체주소
FROM 장비업체, 보유하다, 장비, 회원, 대여하다
WHERE 회원.회원ID = '&회원ID'
AND 대여하다.회원ID = 회원.회원ID
AND 장비.장비ID = 대여하다.장비ID
AND 보유하다.장비ID = 장비.장비ID
AND 장비업체.장비업체번호 = 보유하다.장비업체번호;

TTITLE OFF
CLEAR COLUMN