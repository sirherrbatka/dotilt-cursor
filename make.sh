 #!/bin/bash

mkdir ./png
mkdir ./cursors

find ./svg -name "*.svg" | parallel -j8 rsvg-convert {} -o {.}24.png -h 24 -w 24
find ./svg -name "*.svg" | parallel -j8 rsvg-convert {} -o {.}36.png -h 36 -w 36
find ./svg -name "*.svg" | parallel -j8 rsvg-convert {} -o {.}48.png -h 48 -w 48

rm ./png/*.conf
rm ./png/*.png
mv svg/*.png ./png

echo "24 0 0 alias24.png 10 replace" >>  ./png/alias.conf
echo "36 0 0 alias36.png 10 replace" >>  ./png/alias.conf
echo "48 0 0 alias48.png 10 replace" >>  ./png/alias.conf
echo "24 12 12 all-scroll24.png 10 replace" >>  ./png/all-scroll.conf
echo "36 13 13 all-scroll36.png 10 replace" >>  ./png/all-scroll.conf
echo "48 24 24 all-scroll48.png 10 replace" >>  ./png/all-scroll.conf
echo "24 12 12 cell24.png 10 replace" >>  ./png/cell.conf
echo "36 18 18 cell36.png 10 replace" >>  ./png/cell.conf
echo "48 24 24 cell48.png 10 replace" >>  ./png/cell.conf
echo "24 10 9 col-resize24.png 10 replace" >>  ./png/col-resize.conf
echo "36 15 13 col-resize36.png 10 replace" >>  ./png/col-resize.conf
echo "48 20 18 col-resize48.png 10 replace" >>  ./png/col-resize.conf
echo "24 0 0 copy24.png 10 replace" >>  ./png/copy.conf
echo "36 0 0 copy36.png 10 replace" >>  ./png/copy.conf
echo "48 0 0 copy48.png 10 replace" >>  ./png/copy.conf
echo "24 11 11 crosshair24.png 10 replace" >>  ./png/crosshair.conf
echo "36 16 16 crosshair36.png 10 replace" >>  ./png/crosshair.conf
echo "48 22 22 crosshair48.png 10 replace" >>  ./png/crosshair.conf
echo "24 0 0 default24.png 10 replace" >>  ./png/default.conf
echo "36 0 0 default36.png 10 replace" >>  ./png/default.conf
echo "48 0 0 default48.png 10 replace" >>  ./png/default.conf
echo "24 0 0 no-drop24.png 10 replace" >>  ./png/no-drop.conf
echo "36 0 0 no-drop36.png 10 replace" >>  ./png/no-drop.conf
echo "48 0 0 no-drop48.png 10 replace" >>  ./png/no-drop.conf
echo "24 12 12 not-allowed24.png 10 replace" >> ./png/not-allowed.conf
echo "36 18 18 not-allowed36.png 10 replace" >> ./png/not-allowed.conf
echo "48 24 24 not-allowed48.png 10 replace" >> ./png/not-allowed.conf
echo "24 7 12 row-resize24.png 10 replace" >>  ./png/row-resize.conf
echo "36 10 18 row-resize36.png 10 replace" >>  ./png/row-resize.conf
echo "48 14 24 row-resize48.png 10 replace" >>  ./png/row-resize.conf
echo "24 5 10 text24.png 10 replace" >  ./png/text.conf
echo "36 7 15 text36.png 10 replace" >  ./png/text.conf
echo "48 10 20 text48.png 10 replace" >>  ./png/text.conf
echo "24 10 3 vertical-text24.png 10 replace" >>  ./png/vertical-text.conf
echo "36 15 4 vertical-text36.png 10 replace" >>  ./png/vertical-text.conf
echo "48 20 6 vertical-text48.png 10 replace" >>  ./png/vertical-text.conf
echo "24 0 0 help24.png 10 replace" >>  ./png/help.conf
echo "36 0 0 help36.png 10 replace" >>  ./png/help.conf
echo "48 0 0 help48.png 10 replace" >>  ./png/help.conf
echo "24 0 0 move24.png 10 replace" >>  ./png/move.conf
echo "36 0 0 move36.png 10 replace" >>  ./png/move.conf
echo "48 0 0 move48.png 10 replace" >>  ./png/move.conf
echo "24 8 0 pointer24.png 10 replace" >>  ./png/pointer.conf
echo "36 12 0 pointer36.png 10 replace" >>  ./png/pointer.conf
echo "48 16 0 pointer48.png 10 replace" >>  ./png/pointer.conf

# Cursors from "nice to have" and "up for discussion" entries
echo "24 0 0 context-menu24.png 10 replace" >>  ./png/context-menu.conf
echo "36 0 0 context-menu36.png 10 replace" >>  ./png/context-menu.conf
echo "48 0 0 context-menu48.png 10 replace" >>  ./png/context-menu.conf
echo "24 17 3 up-arrow24.png 10 replace" >>  ./png/up-arrow.conf
echo "36 17 3 up-arrow36.png 10 replace" >>  ./png/up-arrow.conf
echo "48 34 6 up-arrow48.png 10 replace" >>  ./png/up-arrow.conf
echo "24 8 19 down-arrow24.png 10 replace" >>  ./png/down-arrow.conf
echo "36 8 19 down-arrow36.png 10 replace" >>  ./png/down-arrow.conf
echo "48 16 38 down-arrow48.png 10 replace" >>  ./png/down-arrow.conf
echo "24 4 17 left-arrow24.png 10 replace" >>  ./png/left-arrow.conf
echo "36 4 17 left-arrow36.png 10 replace" >>  ./png/left-arrow.conf
echo "48 8 34 left-arrow48.png 10 replace" >>  ./png/left-arrow.conf
echo "24 18 8 right-arrow24.png 10 replace" >>  ./png/right-arrow.conf
echo "36 18 8 right-arrow36.png 10 replace" >>  ./png/right-arrow.conf
echo "48 36 34 right-arrow48.png 10 replace" >>  ./png/right-arrow.conf
echo "24 10 9 ew-resize24.png 10 replace" >>  ./png/ew-resize.conf
echo "36 10 9 ew-resize36.png 10 replace" >>  ./png/ew-resize.conf
echo "48 20 18 ew-resize48.png 10 replace" >>  ./png/ew-resize.conf
echo "24 10 8 nesw-resize24.png 10 replace" >>  ./png/nesw-resize.conf
echo "36 10 8 nesw-resize36.png 10 replace" >>  ./png/nesw-resize.conf
echo "48 20 16 nesw-resize48.png 10 replace" >>  ./png/nesw-resize.conf
echo "24 7 12 ns-resize24.png 10 replace" >>  ./png/ns-resize.conf
echo "36 7 12 ns-resize36.png 10 replace" >>  ./png/ns-resize.conf
echo "48 14 24 ns-resize48.png 10 replace" >>  ./png/ns-resize.conf
echo "24 8 8 nwse-resize24.png 10 replace" >>  ./png/nwse-resize.conf
echo "36 8 8 nwse-resize36.png 10 replace" >>  ./png/nwse-resize.conf
echo "48 16 16 nwse-resize48.png 10 replace" >>  ./png/nwse-resize.conf
echo "24 1 1 color-picker24.png 10 replace" >>  ./png/color-picker.conf
echo "36 1 1 color-picker36.png 10 replace" >>  ./png/color-picker.conf
echo "48 2 2 color-picker48.png 10 replace" >>  ./png/color-picker.conf
echo "24 24 0 right-ptr24.png 10 replace" >>  ./png/right-ptr.conf
echo "36 24 0 right-ptr36.png 10 replace" >>  ./png/right-ptr.conf
echo "48 48 0 right-ptr48.png 10 replace" >>  ./png/right-ptr.conf
echo "24 2 18 color-picker24.png 10 replace" >>  ./png/color-picker.conf
echo "36 2 18 color-picker36.png 10 replace" >>  ./png/color-picker.conf
echo "48 4 26 color-picker48.png 10 replace" >>  ./png/color-picker.conf
echo "24 9 9 zoom-in24.png 10 replace" >>  ./png/zoom-in.conf
echo "36 9 9 zoom-in36.png 10 replace" >>  ./png/zoom-in.conf
echo "48 18 18 zoom-in48.png 10 replace" >>  ./png/zoom-in.conf
echo "24 9 9 zoom-out24.png 10 replace" >>  ./png/zoom-out.conf
echo "36 9 9 zoom-out36.png 10 replace" >>  ./png/zoom-out.conf
echo "48 18 18 zoom-out48.png 10 replace" >>  ./png/zoom-out.conf
echo "24 8 15 dnd-move24.png 10 replace" >>  ./png/dnd-move.conf
echo "36 8 15 dnd-move36.png 10 replace" >>  ./png/dnd-move.conf
echo "48 16 30 dnd-move48.png 10 replace" >>  ./png/dnd-move.conf
echo "24 8 15 dnd-copy24.png 10 replace" >>  ./png/dnd-copy.conf
echo "36 8 15 dnd-copy36.png 10 replace" >>  ./png/dnd-copy.conf
echo "48 16 30 dnd-copy48.png 10 replace" >>  ./png/dnd-copy.conf
echo "24 8 15 dnd-link24.png 10 replace" >>  ./png/dnd-link.conf
echo "36 8 15 dnd-link36.png 10 replace" >>  ./png/dnd-link.conf
echo "48 16 30 dnd-link48.png 10 replace" >>  ./png/dnd-link.conf
echo "24 8 15 dnd-ask24.png 10 replace" >>  ./png/dnd-ask.conf
echo "36 8 15 dnd-ask36.png 10 replace" >>  ./png/dnd-ask.conf
echo "48 16 30 dnd-ask48.png 10 replace" >>  ./png/dnd-ask.conf
echo "24 8 15 dnd-none24.png 10 replace" >>  ./png/dnd-none.conf
echo "36 8 15 dnd-none36.png 10 replace" >>  ./png/dnd-none.conf
echo "48 16 30 dnd-none48.png 10 replace" >>  ./png/dnd-none.conf

# Cursors not in the spec, but nice to have for completeness
echo "24 8 15 grabbing24.png 10 replace" >>  ./png/grabbing.conf
echo "36 8 15 grabbing36.png 10 replace" >>  ./png/grabbing.conf
echo "48 16 30 grabbing48.png 10 replace" >>  ./png/grabbing.conf
echo "24 8 15 grab24.png 10 replace" >>  ./png/grab.conf
echo "36 8 15 grab36.png 10 replace" >>  ./png/grab.conf
echo "48 16 30 grab48.png 10 replace" >>  ./png/grab.conf
echo "24 1 18 pencil24.png 10 replace" >>  ./png/pencil.conf
echo "36 1 18 pencil36.png 10 replace" >>  ./png/pencil.conf
echo "48 2 36 pencil48.png 10 replace" >>  ./png/pencil.conf
echo "24 18 18 pirate24.png 10 replace" >>  ./png/pirate.conf
echo "36 18 18 pirate36.png 10 replace" >>  ./png/pirate.conf
echo "48 36 36 pirate48.png 10 replace" >>  ./png/pirate.conf
echo "24 18 18 X-cursor24.png 10 replace" >>  ./png/X-cursor.conf
echo "36 18 18 X-cursor36.png 10 replace" >>  ./png/X-cursor.conf
echo "48 36 36 X-cursor48.png 10 replace" >>  ./png/X-cursor.conf

#making cursors
cd ./png

for file in *.conf
do
    cat $file | xcursorgen - ../cursors/${file%.*}
done


# Animated cursors
echo "Making animated cursors..."
cat > progress.conf <<EOF
24 0 0 wait124.png 50
24 0 0 wait224.png 50
24 0 0 wait324.png 50
24 0 0 wait424.png 50
24 0 0 wait524.png 50
24 0 0 wait624.png 50
36 0 0 wait136.png 50
36 0 0 wait236.png 50
36 0 0 wait336.png 50
36 0 0 wait436.png 50
36 0 0 wait536.png 50
36 0 0 wait636.png 50
48 0 0 wait148.png 50
48 0 0 wait248.png 50
48 0 0 wait348.png 50
48 0 0 wait448.png 50
48 0 0 wait548.png 50
48 0 0 wait648.png 50
EOF

cat > wait.conf <<EOF
24 11 11 progress624.png 50
24 11 11 progress524.png 50
24 11 11 progress424.png 50
24 11 11 progress324.png 50
24 11 11 progress224.png 50
24 11 11 progress124.png 50
36 18 18 progress636.png 50
36 18 18 progress536.png 50
36 18 18 progress436.png 50
36 18 18 progress336.png 50
36 18 18 progress236.png 50
36 18 18 progress136.png 50
48 22 22 progress648.png 50
48 22 22 progress548.png 50
48 22 22 progress448.png 50
48 22 22 progress348.png 50
48 22 22 progress248.png 50
48 22 22 progress148.png 50
EOF

xcursorgen wait.conf ../cursors/wait
xcursorgen progress.conf ../cursors/progress

cd ..

# Source links for legacy and hash cursors
echo "Making legacy links..."
cd cursors
source ../links.sh
cd ..
