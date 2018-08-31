SET FEEDBACK OFF 

TTITLE '회원id에 따른 회원이 판매하는 작물 정보'
COLUMN 회원ID HEADING '회원 ID' FORMAT A15
COLUMN 이름 HEADING '회원 이름' FORMAT A15
COLUMN 작물명 HEADING '작물' FORMAT A15
COLUMN 등록날짜 HEADING '등록날짜' FORMAT A15
COLUMN 등록개수 HEADING '수량' FORMAT 99
COLUMN 판매단위 HEADING '단위' FORMAT A15
COLUMN 판매가격 HEADING '판매가' FORMAT A15
BREAK ON 회원ID ON 이름

select 회원.회원ID, 회원.이름, 작물.작물명, 판매하다.등록날짜, 판매하다.등록개수, 판매하다.판매단위, 판매하다.판매가격
from 회원, 작물, 판매하다
where 회원.회원ID = '&회원ID'
and 작물.작물ID = 판매하다.작물ID
and 회원.회원ID = 판매하다.회원ID
order by  판매하다.등록날짜;

TTITLE OFF
CLEAR COLUMN
CLEAR BREAK