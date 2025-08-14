# 問題
## 1列目の文字列の異なり（文字列の種類）を求めよ。確認にはcut, sort, uniqコマンドを用いよ。

cut -d $'\t' -f 1 人気の名前.txt | sort | uniq