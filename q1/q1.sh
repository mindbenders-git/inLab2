i=0
read N
while [ $i -lt $N ]; do
    let i+=1
    sum=`expr $sum + $(( $i*$i ))`
done
echo $sum
