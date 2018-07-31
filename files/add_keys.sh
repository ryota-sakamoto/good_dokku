count=1
cat $2 | while read line
do
    echo $line | dokku ssh-keys:add $1_$count
    let ++count
done
