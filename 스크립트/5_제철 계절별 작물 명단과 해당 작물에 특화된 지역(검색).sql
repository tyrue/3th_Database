SET FEEDBACK OFF 

TTITLE '��ö ������ �۹� ��ܰ� �ش� �۹��� Ưȭ�� ����'
COLUMN ��ö���� HEADING '��ö ����' FORMAT A15
COLUMN �۹��� HEADING '�۹� �̸�' FORMAT A15
COLUMN ������ HEADING 'Ưȭ ����' FORMAT A15
BREAK ON ��ö����

select �۹�.��ö����, �۹�.�۹���, ����.������
from �۹�, ����, Ưȭ�ϴ�
where �۹�.��ö���� = '&��ö����'
and �۹�.�۹�ID = Ưȭ�ϴ�.�۹�ID
and ����.����ID = Ưȭ�ϴ�.����ID
order by  �۹�.�۹���;

TTITLE OFF
CLEAR COLUMN
CLEAR BREAK