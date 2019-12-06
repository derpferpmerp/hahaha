echo "Filename of SWF: "
read varname
echo "Your code is 
<object>
    <embed src='${varname}.swf' width='100%'' height='100%'></embed>
</object>"

printf '%s\n' '<object>' '  <embed src='"${varname}.swf"' width="100%" height="100%"></embed>' '</object>' >flash.html

# Open new tabs in same directory
EW=$(xdotool search --onlyvisible --classname Gnome-terminal|head -1)

if [[ -z  $EW ]]
then
 gnome-terminal &
else
 xdotool windowactivate --sync  $EW
 xdotool key --clearmodifiers ctrl+shift+t
fi