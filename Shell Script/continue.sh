#continue executes the next iteration of the loop skipping the remaining statements in the loop body for the current iteration
for i in 1 2 3 4 5
do
    if [ $i -eq 3 ]
    then
        continue
    fi
    echo "Iteration: $i"
done    
