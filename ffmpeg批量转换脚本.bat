@echo off

::���·�����Ҫ�������Ƶ����Ƶ��ʽ�������г���һЩ��Ҫ����Ƶ��ʽ
::set Ext=*.avi,*.mp4,*.wmv,*.flv,*.mkv,*.rmvb,*.rm,*.3gp
set Ext=*.ogg

md output

echo ��ʼ��Ƶת��

::���·����������ʽ�������и���
for %%a in (%Ext%) do (
	echo ����ת����%%a
	ffmpeg -loglevel quiet -i "%%a" "output\%%~na.flac" -y
)

echo ת�����

pause
