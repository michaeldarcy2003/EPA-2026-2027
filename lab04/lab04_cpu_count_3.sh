if [ -z "$1" ]; then
    printf "Enter the minimum number of CPU cores required: "
    read  required_cores
else
    required_cores=$1
fi

if [[ ! "$required_cores" =~ ^[0-9]+$ ]]; then
	echo "Usage: lab04_cpu_count.sh [MAX_NUM_CORES]" >&2
	exit 1
fi

num_cpu=$(grep "processor" /proc/cpuinfo | wc -l)

if [ "$num_cpu" -lt "$required_cores" ]; then
	printf "Error: Need %s cores, have %s.\n" "$required_cores" "$num_cpu"
else
	printf "OK: Need %s cores, have %s.\n" "$required_cores" "$num_cpu"
fi


printf "\nBash commands used:\n"
printf "1. printf displays formatted messages and values.\n"
printf "2. read  accepts user input.\n"
