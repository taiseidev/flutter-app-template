#!/bin/bash

# riverpod_graphのパス
FILE_PATH="./doc/graph.md"

# 一行目に書き込む新しい内容
NEW_LINE="\`\`\`mermaid"

# 一時ファイルを作成し、新しい一行目を追加
echo "$NEW_LINE" > temp_file.txt

# 元のファイルの2行目以降を一時ファイルに追加
tail -n +2 "$FILE_PATH" >> temp_file.txt

# ファイルの最後に ``` を追加
echo "\`\`\`" >> temp_file.txt

# 一時ファイルを元のファイルに上書き
mv temp_file.txt "$FILE_PATH"
