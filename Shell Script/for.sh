#For loop 
for i in 1 2 3 4 5
do
    echo "Iteration: $i"
done

for n in {1..10}
do
    echo "Iteration: $n"
done    

for k in {1..10..2}  # increment by 2
do
    echo "Iteration: $k"
done        

for y in {10..1}  # decrement by 1
do
    echo "Iteration: $y"
done    

for t in {10..1..2}  # decrement by 2
do
    echo "Iteration: $t"
done    


for e in {"test1","test2","test3"}
do
    echo "Iteration: $e"
done    

for (( i=1; i<=5; i++ ))
do
    echo "Iteration: $i"
done    
for command in ls pwd date
do
    echo "Executing command: $command"
    $command
done    

for b in *
do
    if [ -f "$b" ]; then
        echo "File: $b"
    elif [ -d "$b" ]; then
        echo "Directory: $b"
    fi
done



