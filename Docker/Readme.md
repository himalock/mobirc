Docker-mobirc

## �R���͉��H

mobirc��Docker�ɕ������߂ė��p���邽�߂̉����B
�ȒP�Ɏd���߂܂��B
�Ƃ肠���������܂��B


## �d���ݕ�

docker���C���X�g�[�����Ďg�������p�ӂ��܂��B

config�͐�ɒ������Ă����K�v������܂��B

conf/config.json

���̃t�@�C���̓}�E���g���p����̂ł��ł��ύX�ł��܂��B

## �r���h
�f�B���N�g���ňȉ��Ƃ��̃R�}���h�ŘB��

docker build -t mobirc-img .

�G���[�Ȃ����������玟�̂悤�Ȋ����Ŏ��s�ł��B

docker run -p 16667:16667 -v ./conf:/etc/mobirc --name=mobirc-myuser -d mobirc-img

�u���E�U��
 http://IP:16667 �ɃA�N�Z�X����ƃ��O�C����ʂɂ����܂�

���Ƃ�docker�̏ڂ����g�����̓O�O���Ă��������B
