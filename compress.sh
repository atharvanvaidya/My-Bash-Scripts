# Script to compress photos
counter=0
for f in ./*.jpg
do 
	if [[ $f =~ ^\./IMG.* ]]
	then
		ffmpeg -i $f -loglevel 8 -y -q:v 10 $f
		echo "Compressed $f"
		counter=$(( $counter + 1 ))
	fi
done
echo "Compressed a total of $counter images"
