# 問題
## ファイルの先頭10行に対して、タブ1文字につきスペース1文字に置換して出力せよ。確認にはsedコマンド、trコマンド、もしくはexpandコマンドなどを用いよ。

### sed
head -n 10 人気の名前.txt | sed 's/\t/ /g'

### tr
head -n 10 人気の名前.txt | tr '\t' ' '


### expand
head -n 10 人気の名前.txt | expand -t 1



# 1. sed（stream editor）
# 略：stream editor（ストリームエディタ）

# 用途：テキストの置換・削除・抽出など行単位で編集

# 基本構文：
# sed 's/検索文字/置換文字/オプション' ファイル名
# よく使う例：

# sed 's/猫/犬/' file.txt     # 1行につき最初の猫を犬に置換
# sed 's/猫/犬/g' file.txt   # 1行の全ての猫を犬に置換
# sed -n '3p' file.txt       # 3行目だけ表示
# sed '2d' file.txt          # 2行目を削除


# 2. tr（translate / transliterate）
# 略：translate または transliterate（文字変換）

# 用途：文字単位での変換・削除（正規表現は使えない）

# 基本構文：
# tr '変換前文字集合' '変換後文字集合'
# tr -d '削除したい文字集合'
# よく使う例：

# cat file.txt | tr 'a-z' 'A-Z'   # 小文字 → 大文字
# cat file.txt | tr -d '0-9'      # 数字を削除
# cat file.txt | tr '\t' ' '      # タブ → スペース


# 3. expand（英語の "拡張する"）
# 略：略語ではなく英単語の expand

# 用途：タブ文字をスペースに変換

# 基本構文：
# expand [オプション] ファイル名
# よく使う例：

# expand file.txt         # タブ → 8スペース
# expand -t 4 file.txt    # タブ → 4スペース
# head -n 10 file.txt | expand -t 1   # 先頭10行だけタブを1スペースに変換
# ※ 逆の操作は unexpand

# 比較早見表
# コマンド	略/由来	主な用途	単位	書き方のポイント
# sed	stream editor	行単位の編集（置換・削除・抽出）	行・文字列	's/検索/置換/オプション'
# tr	translate/transliterate	文字単位の変換・削除	文字	'変換前' '変換後' または -d
# expand	expand（拡張する）	タブをスペースに変換	タブ	-t 数字 で幅指定

