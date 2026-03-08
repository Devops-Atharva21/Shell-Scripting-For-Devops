#!/bin/bash

<<usage 
Create function for system information
-RAM used
-Storage used
-Top processes
usage

check_memory() {
       free -h | awk 'NR==2 {print $7}'
}

check_storage () {
	df -h | awk 'NR==2 {print $4}'
}

check_most_mem_consuming_process(){
	ps aux --sort=-%mem | awk 'NR==2 {print $1,$2,$4}'
}

show_details () {

	echo "============== SYSTEM DETAIL ==============="
	echo "Available memory"
	check_memory
	echo "Available Storage"
	check_storage
	echo "Most Consuming process"
	check_most_mem_consuming_process
}
show_details
