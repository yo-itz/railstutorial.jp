#!/bin/sh

# Download and update HTML files from 'chapter_list.txt'.

for chapter in `cat ../chapter_list.txt`
do
    rm "$chapter".html "$chapter"_fragment.html
    wget -O "./$chapter.html.original" http://ruby.railstutorial.org/chapters/$chapter.html\?version=4.0
done

