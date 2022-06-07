 #!/bin/bash

mkdir ./png
mkdir ./cursors

find ./svg -name "*.svg" | parallel inkscape {} -o {}24.png -h 24 -w 24
find ./svg -name "*.svg" | parallel inkscape {} -o {}36.png -h 36 -w 36
find ./svg -name "*.svg" | parallel inkscape {} -o {}48.png -h 48 -w 48

rm ./png/*.conf
rm ./png/*.png
mv svg/*.png ./png
mv svg/animations/*.png ./png


echo "24 0 0 alias.svg24.png 10 replace" >>  ./png/alias.conf
echo "36 0 0 alias.svg36.png 10 replace" >>  ./png/alias.conf
echo "48 0 0 alias.svg48.png 10 replace" >>  ./png/alias.conf
echo "24 8 15 all-scroll.svg24.png 10 replace" >>  ./png/all-scroll.conf
echo "36 12 22 all-scroll.svg36.png 10 replace" >>  ./png/all-scroll.conf
echo "48 16 30 all-scroll.svg48.png 10 replace" >>  ./png/all-scroll.conf
echo "24 12 12 cell.svg24.png 10 replace" >>  ./png/cell.conf
echo "36 18 18 cell.svg36.png 10 replace" >>  ./png/cell.conf
echo "48 24 24 cell.svg48.png 10 replace" >>  ./png/cell.conf
echo "24 10 9 col-resize.svg24.png 10 replace" >>  ./png/col-resize.conf
echo "36 15 13 col-resize.svg36.png 10 replace" >>  ./png/col-resize.conf
echo "48 20 18 col-resize.svg48.png 10 replace" >>  ./png/col-resize.conf
echo "24 0 0 copy.svg24.png 10 replace" >>  ./png/copy.conf
echo "36 0 0 copy.svg36.png 10 replace" >>  ./png/copy.conf
echo "48 0 0 copy.svg48.png 10 replace" >>  ./png/copy.conf
echo "24 11 11 crosshair.svg24.png 10 replace" >>  ./png/crosshair.conf
echo "36 16 16 crosshair.svg36.png 10 replace" >>  ./png/crosshair.conf
echo "48 22 22 crosshair.svg48.png 10 replace" >>  ./png/crosshair.conf
echo "24 0 0 default.svg24.png 10 replace" >>  ./png/default.conf
echo "36 0 0 default.svg36.png 10 replace" >>  ./png/default.conf
echo "48 0 0 default.svg48.png 10 replace" >>  ./png/default.conf
echo "24 0 0 no-drop.svg24.png 10 replace" >>  ./png/no-drop.conf
echo "36 0 0 no-drop.svg36.png 10 replace" >>  ./png/no-drop.conf
echo "48 0 0 no-drop.svg48.png 10 replace" >>  ./png/no-drop.conf
echo "24 12 12 not-allowed.svg24.png 10 replace" >> ./png/not-allowed.conf
echo "36 18 18 not-allowed.svg36.png 10 replace" >> ./png/not-allowed.conf
echo "48 24 24 not-allowed.svg48.png 10 replace" >> ./png/not-allowed.conf
echo "24 7 12 row-resize.svg24.png 10 replace" >>  ./png/row-resize.conf
echo "36 10 18 row-resize.svg36.png 10 replace" >>  ./png/row-resize.conf
echo "48 14 24 row-resize.svg48.png 10 replace" >>  ./png/row-resize.conf
echo "24 5 10 text.svg24.png 10 replace" >  ./png/text.conf
echo "36 7 15 text.svg36.png 10 replace" >  ./png/text.conf
echo "48 10 20 text.svg48.png 10 replace" >>  ./png/text.conf
echo "24 10 3 vertical-text.svg24.png 10 replace" >>  ./png/vertical-text.conf
echo "36 15 4 vertical-text.svg36.png 10 replace" >>  ./png/vertical-text.conf
echo "48 20 6 vertical-text.svg48.png 10 replace" >>  ./png/vertical-text.conf
echo "24 0 0 help.svg24.png 10 replace" >>  ./png/help.conf
echo "36 0 0 help.svg36.png 10 replace" >>  ./png/help.conf
echo "48 0 0 help.svg48.png 10 replace" >>  ./png/help.conf
echo "24 0 0 move.svg24.png 10 replace" >>  ./png/move.conf
echo "36 0 0 move.svg36.png 10 replace" >>  ./png/move.conf
echo "48 0 0 move.svg48.png 10 replace" >>  ./png/move.conf
echo "24 8 0 pointer.svg24.png 10 replace" >>  ./png/pointer.conf
echo "36 12 0 pointer.svg36.png 10 replace" >>  ./png/pointer.conf
echo "48 16 0 pointer.svg48.png 10 replace" >>  ./png/pointer.conf

# Cursors from "nice to have" and "up for discussion" entries
echo "24 0 0 context-menu.svg24.png 10 replace" >>  ./png/context-menu.conf
echo "36 0 0 context-menu.svg36.png 10 replace" >>  ./png/context-menu.conf
echo "48 0 0 context-menu.svg48.png 10 replace" >>  ./png/context-menu.conf
echo "24 17 3 up-arrow.svg24.png 10 replace" >>  ./png/up-arrow.conf
echo "36 17 3 up-arrow.svg36.png 10 replace" >>  ./png/up-arrow.conf
echo "48 34 6 up-arrow.svg48.png 10 replace" >>  ./png/up-arrow.conf
echo "24 8 19 down-arrow.svg24.png 10 replace" >>  ./png/down-arrow.conf
echo "36 8 19 down-arrow.svg36.png 10 replace" >>  ./png/down-arrow.conf
echo "48 16 38 down-arrow.svg48.png 10 replace" >>  ./png/down-arrow.conf
echo "24 4 17 left-arrow.svg24.png 10 replace" >>  ./png/left-arrow.conf
echo "36 4 17 left-arrow.svg36.png 10 replace" >>  ./png/left-arrow.conf
echo "48 8 34 left-arrow.svg48.png 10 replace" >>  ./png/left-arrow.conf
echo "24 18 8 right-arrow.svg24.png 10 replace" >>  ./png/right-arrow.conf
echo "36 18 8 right-arrow.svg36.png 10 replace" >>  ./png/right-arrow.conf
echo "48 36 34 right-arrow.svg48.png 10 replace" >>  ./png/right-arrow.conf
echo "24 10 9 ew-resize.svg24.png 10 replace" >>  ./png/ew-resize.conf
echo "36 10 9 ew-resize.svg36.png 10 replace" >>  ./png/ew-resize.conf
echo "48 20 18 ew-resize.svg48.png 10 replace" >>  ./png/ew-resize.conf
echo "24 10 8 nesw-resize.svg24.png 10 replace" >>  ./png/nesw-resize.conf
echo "36 10 8 nesw-resize.svg36.png 10 replace" >>  ./png/nesw-resize.conf
echo "48 20 16 nesw-resize.svg48.png 10 replace" >>  ./png/nesw-resize.conf
echo "24 7 12 ns-resize.svg24.png 10 replace" >>  ./png/ns-resize.conf
echo "36 7 12 ns-resize.svg36.png 10 replace" >>  ./png/ns-resize.conf
echo "48 14 24 ns-resize.svg48.png 10 replace" >>  ./png/ns-resize.conf
echo "24 8 8 nwse-resize.svg24.png 10 replace" >>  ./png/nwse-resize.conf
echo "36 8 8 nwse-resize.svg36.png 10 replace" >>  ./png/nwse-resize.conf
echo "48 16 16 nwse-resize.svg48.png 10 replace" >>  ./png/nwse-resize.conf
echo "24 1 1 color-picker.svg24.png 10 replace" >>  ./png/color-picker.conf
echo "36 1 1 color-picker.svg36.png 10 replace" >>  ./png/color-picker.conf
echo "48 2 2 color-picker.svg48.png 10 replace" >>  ./png/color-picker.conf
echo "24 24 0 right-ptr.svg24.png 10 replace" >>  ./png/right-ptr.conf
echo "36 24 0 right-ptr.svg36.png 10 replace" >>  ./png/right-ptr.conf
echo "48 48 0 right-ptr.svg48.png 10 replace" >>  ./png/right-ptr.conf
echo "24 2 18 color-picker.svg24.png 10 replace" >>  ./png/color-picker.conf
echo "36 2 18 color-picker.svg36.png 10 replace" >>  ./png/color-picker.conf
echo "48 4 26 color-picker.svg48.png 10 replace" >>  ./png/color-picker.conf
echo "24 9 9 zoom-in.svg24.png 10 replace" >>  ./png/zoom-in.conf
echo "36 9 9 zoom-in.svg36.png 10 replace" >>  ./png/zoom-in.conf
echo "48 18 18 zoom-in.svg48.png 10 replace" >>  ./png/zoom-in.conf
echo "24 9 9 zoom-out.svg24.png 10 replace" >>  ./png/zoom-out.conf
echo "36 9 9 zoom-out.svg36.png 10 replace" >>  ./png/zoom-out.conf
echo "48 18 18 zoom-out.svg48.png 10 replace" >>  ./png/zoom-out.conf
echo "24 8 15 dnd-move.svg24.png 10 replace" >>  ./png/dnd-move.conf
echo "36 8 15 dnd-move.svg36.png 10 replace" >>  ./png/dnd-move.conf
echo "48 16 30 dnd-move.svg48.png 10 replace" >>  ./png/dnd-move.conf
echo "24 8 15 dnd-copy.svg24.png 10 replace" >>  ./png/dnd-copy.conf
echo "36 8 15 dnd-copy.svg36.png 10 replace" >>  ./png/dnd-copy.conf
echo "48 16 30 dnd-copy.svg48.png 10 replace" >>  ./png/dnd-copy.conf
echo "24 8 15 dnd-link.svg24.png 10 replace" >>  ./png/dnd-link.conf
echo "36 8 15 dnd-link.svg36.png 10 replace" >>  ./png/dnd-link.conf
echo "48 16 30 dnd-link.svg48.png 10 replace" >>  ./png/dnd-link.conf
echo "24 8 15 dnd-ask.svg24.png 10 replace" >>  ./png/dnd-ask.conf
echo "36 8 15 dnd-ask.svg36.png 10 replace" >>  ./png/dnd-ask.conf
echo "48 16 30 dnd-ask.svg48.png 10 replace" >>  ./png/dnd-ask.conf
echo "24 8 15 dnd-none.svg24.png 10 replace" >>  ./png/dnd-none.conf
echo "36 8 15 dnd-none.svg36.png 10 replace" >>  ./png/dnd-none.conf
echo "48 16 30 dnd-none.svg48.png 10 replace" >>  ./png/dnd-none.conf

# Cursors not in the spec, but nice to have for completeness
echo "24 8 15 grabbing.svg24.png 10 replace" >>  ./png/grabbing.conf
echo "36 8 15 grabbing.svg36.png 10 replace" >>  ./png/grabbing.conf
echo "48 16 30 grabbing.svg48.png 10 replace" >>  ./png/grabbing.conf
echo "24 8 15 grab.svg24.png 10 replace" >>  ./png/grab.conf
echo "36 8 15 grab.svg36.png 10 replace" >>  ./png/grab.conf
echo "48 16 30 grab.svg48.png 10 replace" >>  ./png/grab.conf
echo "24 1 18 pencil.svg24.png 10 replace" >>  ./png/pencil.conf
echo "36 1 18 pencil.svg36.png 10 replace" >>  ./png/pencil.conf
echo "48 2 36 pencil.svg48.png 10 replace" >>  ./png/pencil.conf
echo "24 18 18 pirate.svg24.png 10 replace" >>  ./png/pirate.conf
echo "36 18 18 pirate.svg36.png 10 replace" >>  ./png/pirate.conf
echo "48 36 36 pirate.svg48.png 10 replace" >>  ./png/pirate.conf
echo "24 18 18 X-cursor.svg24.png 10 replace" >>  ./png/X-cursor.conf
echo "36 18 18 X-cursor.svg36.png 10 replace" >>  ./png/X-cursor.conf
echo "48 36 36 X-cursor.svg48.png 10 replace" >>  ./png/X-cursor.conf

#making cursors
cd ./png

for file in *.conf
do
    cat $file | xcursorgen - ../cursors/${file%.*}
done


# Animated cursors
echo "Making animated cursors..."
cat > progress.conf <<EOF
24 0 0 wait1.svg24.png 50
24 0 0 wait2.svg24.png 50
24 0 0 wait3.svg24.png 50
24 0 0 wait4.svg24.png 50
24 0 0 wait5.svg24.png 50
24 0 0 wait6.svg24.png 50
24 0 0 wait7.svg24.png 50
24 0 0 wait8.svg24.png 50
36 0 0 wait1.svg36.png 50
36 0 0 wait2.svg36.png 50
36 0 0 wait3.svg36.png 50
36 0 0 wait4.svg36.png 50
36 0 0 wait5.svg36.png 50
36 0 0 wait6.svg36.png 50
36 0 0 wait7.svg36.png 50
36 0 0 wait8.svg36.png 50
48 0 0 wait1.svg48.png 50
48 0 0 wait2.svg48.png 50
48 0 0 wait3.svg48.png 50
48 0 0 wait4.svg48.png 50
48 0 0 wait5.svg48.png 50
48 0 0 wait6.svg48.png 50
48 0 0 wait7.svg48.png 50
48 0 0 wait8.svg48.png 50
EOF

cat > wait.conf <<EOF
24 11 11 progress6.svg24.png 50
24 11 11 progress5.svg24.png 50
24 11 11 progress4.svg24.png 50
24 11 11 progress3.svg24.png 50
24 11 11 progress2.svg24.png 50
24 11 11 progress1.svg24.png 50
36 18 18 progress6.svg36.png 50
36 18 18 progress5.svg36.png 50
36 18 18 progress4.svg36.png 50
36 18 18 progress3.svg36.png 50
36 18 18 progress2.svg36.png 50
36 18 18 progress1.svg36.png 50
48 22 22 progress6.svg48.png 50
48 22 22 progress5.svg48.png 50
48 22 22 progress4.svg48.png 50
48 22 22 progress3.svg48.png 50
48 22 22 progress2.svg48.png 50
48 22 22 progress1.svg48.png 50
EOF

xcursorgen wait.conf ../cursors/wait
xcursorgen progress.conf ../cursors/progress

cd ..

# Source links for legacy and hash cursors
echo "Making legacy links..."
cd cursors
source ../links.sh
cd ..
