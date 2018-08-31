SET FEEDBACK OFF 

TTITLE '제철 계절별 작물 명단과 해당 작물에 특화된 지역'
COLUMN 제철계절 HEADING '제철 계절' FORMAT A15
COLUMN 작물명 HEADING '작물 이름' FORMAT A15
COLUMN 지역명 HEADING '특화 지역' FORMAT A15
BREAK ON 제철계절

select 작물.제철계절, 작물.작물명, 지역.지역명
from 작물, 지역, 특화하다
where 작물.제철계절 = '&제철계절'
and 작물.작물ID = 특화하다.작물ID
and 지역.지역ID = 특화하다.지역ID
order by  작물.작물명;

TTITLE OFF
CLEAR COLUMN
CLEAR BREAK