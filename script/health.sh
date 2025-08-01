################
##  settings  ##
################

# durations
WORK_DURATION=$((60 * 25))
REST_DURATION=$((60 * 5))
SESSION_COUNT=$((8))

# refrence at
SOUND="/System/Library/Sounds/Tink.aiff"
FONT="-d $HOME/.figlet -f Georgia11"

#################
##  functions  ##
#################

function render() {
	cols=$(tput cols)
	echo "\033[H"
	echo "$1"
}

function notificate() {
	clear
	output=$(figlet $FONT -w "$cols" "*******")
	render "$output"
	terminal-notifier -title "健康通知" -message "$1"
	afplay "$SOUND"
}

function measure_time() {
	clear
	for ((i = "$1"; i >= 0; i--)); do
		min=$((i / 60))
		sec=$((i % 60))
		TIME=$(printf "%02d:%02d" "$min" "$sec")
		output=$(figlet $FONT -w "$cols" "$2$3 $TIME     ")
		render "$output"
		sleep 1
	done
}

#################
##  operation  ##
#################

for ((count = 0; count < $SESSION_COUNT; count++)); do
	# For work
	measure_time WORK_DURATION "W" "$count"
	notificate "休憩していますか？" 

	if ((count == $SESSION_COUNT - 1)); then
		break
	fi

	# For rest
	measure_time REST_DURATION "R" "$count"
	notificate "休憩時間が終了しました" 
done

osascript -e "display dialog \"半日終了しました。休憩してください\" buttons {\"はい\"} with title \"健康通知\" "
