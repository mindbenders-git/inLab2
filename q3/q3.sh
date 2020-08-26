
#!/usr/bin/bash
a=0
b=5

function sorting {

	sort -g output.txt>>q3_out.txt
	rm output.txt
}

for word in $(cat q3_in.txt);
do
    if grep -q "$b" <<< "$word"; then
	echo "$word">>output.txt
    fi
done
sorting
