SET FEEDBACK OFF 

TTITLE '선택한 지역별 회원의 명단과 거주 주소'
COLUMN 지역명 HEADING '선택 지역' FORMAT A15
COLUMN 이름 HEADING '회원 이름' FORMAT A15
COLUMN 주소 HEADING '거주 주소' FORMAT A15
BREAK ON 지역명

select 지역.지역명, 회원.이름, 회원.주소
from 선택하다, 회원, 지역
where  지역.지역명  = '&지역'
and 선택하다.지역ID = 지역.지역ID
and 회원.회원ID = 선택하다.회원ID;

TTITLE OFF
CLEAR BREAK
CLEAR COLUMN