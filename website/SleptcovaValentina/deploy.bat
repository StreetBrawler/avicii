cd ..\..
echo ���������� ��������� ����������, ���������� ��������� 1 ���
git config --global user.name NEFUstudents
git config --global user.email study.svfu@gmail.com
echo ������� ������� ���� ����� ������
git add -A
echo ������ ���� ��������� ���������, �� �������� � ����������� ��������� ���� ��������� ���������
git commit -a -m "comething new"
echo ���������� ��� ��������� �� ���������� ����������� � ��������� �������
git pull origin master
echo ���������� �������, ���� ��������� �������� � ��������� �����������
=======

echo ���������� ��������� ����������, ���������� ��������� 1 ���

git config --global user.name NEFUmasters
git config --global user.email study.svfu@gmail.com

echo ������� ������� ���� ����� ������
git add -A

git commit -a -m "comething new"

echo ���������� ��� ��������� �� ���������� ����������� � ��������� �������

git pull origin master

echo ���������� �������, ���� ��������� �������� � ��������� �����������
>>>>>>> e30bcc3102c6616e6672107619dd40ae2bae515e
git push origin master
