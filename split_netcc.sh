input_file=$1
output_path=$2
output_dir="rubbish"
mkdir -p $output_dir
while read line; do
	if echo $line|egrep --quiet '^#'; then
		output_dir=$(echo $line|sed 's/^# *//')
 		mkdir -p $output_path/$output_dir
 	else
 		echo $line >> $output_path/$output_dir/$input_file
 	fi

#to run the loop 
for i in *.netcc; do echo $i; bash ~/split_netcc.sh $i /data2/heidi/masparcellationresults/schaefer; done 
	