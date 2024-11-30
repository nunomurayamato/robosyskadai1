#!/bin/bash 
# SPDX-FileCopyrightText: 2024 Yamato Nunomura

ng () {
        echo ${1}行目が違うよ
	res=1
}

res=0

out=$( echo 45 | ./timeconversion)
[ "${out}" = "45秒"  ] || ng "$LINENO"

out=$( echo 3600 | ./timeconversion)
[ "${out}" = "1時間0分0秒"  ] || ng "$LINENO"

out=$( echo 3601 | ./timeconversion)
[ "${out}" = "1時間0分1秒"  ] || ng "$LINENO"

out=$( echo 121 | ./timeconversion)
[ "${out}" = "2分1秒"  ] || ng "$LINENO"

out=$( echo 0 | ./timeconversion)
[ "${out}" = "0秒"  ] || ng "$LINENO"

out=$( echo あ | ./timeconversion)
[ "${out}" = ""  ] || ng "$LINENO"

out=$( echo a | ./timeconversion)
[ "${out}" = ""  ] || ng "$LINENO"

out=$( echo 2.1 | ./timeconversion)
[ "${out}" = ""  ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
