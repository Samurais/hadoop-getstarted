#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
cd $baseDir/..
bin/hadoop jar share/hadoop/tools/lib/hadoop-streaming-2.8.1.jar \
	-input data/cite75_99.txt \
	-output cite75_99_sample_4 \
	-mapper "RandomSample.py 10" \
	-file "$baseDir/RandomSample.py"
