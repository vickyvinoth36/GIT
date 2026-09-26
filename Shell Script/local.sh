#Local variable is a variable which is defined inside a function and can only be accessed within that function. It is not visible outside the function.
function example() {
    local local_var= $1
    echo $local_var
}
name = "John"
example Max
echo -n "Local variable: $local_var"  # Output: Local variable:  (local_var is not accessible outside the function)
echo $name  # Output: John (name is accessible outside the function)

# File script to demonstrate the use of local variables in functions

usage() {
    echo "Usage: $0 <name>"

}

file_exists() {
    local file=$1
    [[ -f "$file" ]] && return 0 || return 1
}

[[ $# -ne 1 ]] && usage

 if file_exists "$1"; then
        echo "File  exists."
    else
          echo "File  does not exist."
    fi
# this script defines a function called file_exists that takes a filename as an argument and checks if the file exists. The local variable file is used to store the filename within the function, and it is not accessible outside the function. The script also includes a usage function to display how to use the script if the user does not provide the correct number of arguments.