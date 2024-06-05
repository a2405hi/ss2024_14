#!/bin/sh

tmp=/tmp/$$ # 変数を使って表記を短く

ERROR_EXIT () {
	echo "$1" >&2 # エラーメッセージ(引数1)を標準エラー出⼒に表⽰
	rm -f $tmp-* # 作ったファイルの削除
	exit 1 # エラー終了
}



# test1:引き数不足の動作が正しいか
echo "ERROR:input 2 argments" > $tmp-args # 回答準備：引数の数



# test:2 整数出ない場合の動作が正しいか
echo "input natural number" > $tmp-nat # 回答準備：数字じゃない

# test3
echo "1 is equal to 1" > ${tmp}-ans
./same.sh 1 1 > ${tmp}-result
diff ${tmp}-ans ${tmp}-result $$ echo "test3-1: PASS" || ERROR_EXIT "error in test3"

rm -f ${tmp}-*
