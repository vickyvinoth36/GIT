#Function is a block of code that can be reused in a program. It is a way to group a set of statements together to perform a specific task. Functions help in breaking down complex problems into smaller, manageable parts, making the code more organized and easier to read.
function greet() {
    echo "Hello, $1!"
}
#or
 greet() {
    echo "Hello, $1!"
}
#calling the function
greet "John"     #Give the function name and pass the argument to it. The argument can be accessed inside the function using $1, $2, etc. for the first, second, etc. arguments respectively.
