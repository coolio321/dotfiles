while true; do
	xsetroot -name "  $(date | sed -e 's/\<EDT\>//g' | sed -e 's/\<AM\>//g' | sed -e 's/\<PM\>//g')  $(upower -i $(upower -e | grep '/battery') | grep --color=never -E percentage|xargs|cut -d' ' -f2) 🔊 $(amixer sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }')" 
	sleep 0.1
done
