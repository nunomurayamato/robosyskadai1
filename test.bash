#!/bin/bash 
# SPDX-FileCopyrightText: 2024 Yamato Nunomura

ng () {
        echo ${1}行目が違うよ
	res=1
}

res=0

out=$( echo 45 | ./kadai1.py)
[ "${out}" = "秒数を入力45秒"  ] || ng "$LINENO"

out=$( echo 3600 | ./kadai1.py)
[ "${out}" = "秒数を入力1時間0分0秒"  ] || ng "$LINENO"

out=$( echo 3601 | ./kadai1.py)
[ "${out}" = "秒数を入力1時間0分1秒"  ] || ng "$LINENO"

out=$( echo 121 | ./kadai1.py)
[ "${out}" = "秒数を入力2分1秒"  ] || ng "$LINENO"

out=$( echo 0 | ./kadai1.py)
[ "${out}" = "秒数を入力0秒"  ] || ng "$LINENO"

out=$( echo あ | ./kadai1.py)
[ "$?" = 1 ]                 || ng "$LINENO"
[ "${out}" = "秒数を入力"  ] || ng "$LINENO"

out=$( echo a | ./kadai1.py)
[ "$?" = 1 ]                 || ng "$LINENO"
[ "${out}" = "秒数を入力"  ] || ng "$LINENO"

out=$( echo 2.1 | ./kadai1.py)
[ "$?" = 1 ]                 || ng "$LINENO"
[ "${out}" = "秒数を入力"  ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
