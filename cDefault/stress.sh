P=aviao
for ((i = 1; ; i++)) do
	python3 gen.py $i > in
	python3 ${P}.py < in > out
	python3 ${P}2.py < in > out2
	if (! cmp -s out out2) then
		echo "--> entrada:"
		cat in
		echo "--> saida1:"
		cat out
		echo "--> saida2:"
		cat out2
		break;
	fi
	echo $i
done