SET FEEDBACK OFF 

TTITLE 'ȸ��id�� ���� ȸ���� �Ǹ��ϴ� �۹� ����'
COLUMN ȸ��ID HEADING 'ȸ�� ID' FORMAT A15
COLUMN �̸� HEADING 'ȸ�� �̸�' FORMAT A15
COLUMN �۹��� HEADING '�۹�' FORMAT A15
COLUMN ��ϳ�¥ HEADING '��ϳ�¥' FORMAT A15
COLUMN ��ϰ��� HEADING '����' FORMAT 99
COLUMN �ǸŴ��� HEADING '����' FORMAT A15
COLUMN �ǸŰ��� HEADING '�ǸŰ�' FORMAT A15
BREAK ON ȸ��ID ON �̸�

select ȸ��.ȸ��ID, ȸ��.�̸�, �۹�.�۹���, �Ǹ��ϴ�.��ϳ�¥, �Ǹ��ϴ�.��ϰ���, �Ǹ��ϴ�.�ǸŴ���, �Ǹ��ϴ�.�ǸŰ���
from ȸ��, �۹�, �Ǹ��ϴ�
where ȸ��.ȸ��ID = '&ȸ��ID'
and �۹�.�۹�ID = �Ǹ��ϴ�.�۹�ID
and ȸ��.ȸ��ID = �Ǹ��ϴ�.ȸ��ID
order by  �Ǹ��ϴ�.��ϳ�¥;

TTITLE OFF
CLEAR COLUMN
CLEAR BREAK