# 問題
## 1列目の文字列の出現頻度を求め、出現頻度と名前を出現頻度の多い順に並べて表示せよ。確認にはcut, uniq, sortコマンドを用いよ。

cut -d $'\t' -f 1 人気の名前.txt | sort | uniq -c | sort -nr