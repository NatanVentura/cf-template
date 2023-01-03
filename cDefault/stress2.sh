make a gen || exit -1
for (( i = 1; ; i += 1)) do
	./gen $i > input
	./1701d < input > output
	if [ $? -ne 0 ]; then
		echo "Failed on input:"
		cat input
		break
	fi
	echo $i
done