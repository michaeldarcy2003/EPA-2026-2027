num_cpu=$(grep "processor" /proc/cpuinfo | wc -l)
if [ "$num_cpu" -lt "$1" ]; then
	echo "Error: Not enough CPU cores."
	echo "Required: $1, Available: $num_cpu"
else
	echo "OK: Enough CPU cores available."
fi
