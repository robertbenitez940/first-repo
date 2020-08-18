#!/bin/bash
# Bash script that gathers information about my system.

echo "***CURRENT USER @ HOSTNAME***" &&
	whoami;hostname;
echo "***CPU NAME AND SPEED***" &&
	lscpu | grep "CPU MHz:";
echo "***FREE AND TOTAL MEMORY/SWAP SPACE***" &&
	free -h;
echo "***FREE AND TOTAL SPACE ON EXT4 AND XFS PARTITIONS***" &&
	df -hTt ext4 && df -hTt xfs;
echo "***CURRENT IP ADDRESS AND CIDR MASK***" &&
	nmcli -p | grep inet4	
