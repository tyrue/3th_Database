SET FEEDBACK OFF 

TTITLE '������ ������ ȸ���� ��ܰ� ���� �ּ�'
COLUMN ������ HEADING '���� ����' FORMAT A15
COLUMN �̸� HEADING 'ȸ�� �̸�' FORMAT A15
COLUMN �ּ� HEADING '���� �ּ�' FORMAT A15
BREAK ON ������

select ����.������, ȸ��.�̸�, ȸ��.�ּ�
from �����ϴ�, ȸ��, ����
where  ����.������  = '&����'
and �����ϴ�.����ID = ����.����ID
and ȸ��.ȸ��ID = �����ϴ�.ȸ��ID;

TTITLE OFF
CLEAR BREAK
CLEAR COLUMN