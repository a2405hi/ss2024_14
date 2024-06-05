#!/bin/sh

# 引数が⾜りない場合
# 失敗時： input 2 argments
	# 引数が数値じゃ無い場合
	# 失敗時： input natural number"




# ⼀致判定
# 数値の比較if
if [ $1 -eq $2 ]; then
	echo "$1 is equal to $2" # 同じ場合
else
	echo "$1 is not equal to $2" # 違う場合
fi
# 同じ場合：$1 is equal to $2
# 違う場合：$1 is not equal to $2
