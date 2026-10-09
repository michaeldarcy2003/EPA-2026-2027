if [[ $# -ne 1 || ! $1 =~ ^[0-9]+$ ]]; then
	echo "Usage: lab04_cpu_count.sh [MAX_NUM_CORES]" >&2
	exit 1
fi

num_cpu=$(grep "processor" /proc/cpuinfo | wc -l)

if [ "$num_cpu" -lt "$1" ]; then
	echo "Error: Not enough CPU cores."
	echo "Required: $required_cores, Available: $num_cpu"
else
	echo "OK: Enough CPU cores available."
fi
