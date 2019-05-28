#!/bin/bash

# Learningデータの保存ディレクトリ
directory="${HOME}/Learn"

# ディレクトリがなければ作る
if [ ! -d "$directory" ]; then
  mkdir "$directory"
fi

# ファイルパスの組み立て
learnfile="${directory}/$(date '+%Y-%m-%d').md"

# ファイルがなければ、日付と見出しを書く
if [ ! -e "$learnfile" ]; then
  echo "# $(date '+%Y/%m/%d')の学び" >> "$learnfile"
fi

vim "${directory}/$(date '+%Y-%m-%d').md"
