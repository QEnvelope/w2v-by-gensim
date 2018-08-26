#!/bin/bash

#preprocess data

#traditional chinese to simplified chinese
echo "opencc: traditional chinese to simplified chinese"
time opencc -i wiki.zh.text -o wiki.zh.text.simple -c zht2zhs.ini

# cut words
echo "jieba: cut words"
time python3 -m jieba -d ' ' wiki.zh.text.simple > wiki.zh.seg.simple

#change encode
echo "iconv: ascii to utf-8"
time iconv -c -t UTF-8 wiki.zh.seg.simple -o wiki.zh.final
