#select loop will display a menu of options and allow the user to select one of them. The loop will continue to run until the user selects a valid option or chooses to exit the menu.  
#syntax
# select variable in list
# do
#     # commands to be executed
# done  
select cmd in ls pwd date
do
    echo "Executing command: $cmd"
    $cmd
    break
done    

select cmd in ls cd pwd date
do
    case $cmd in

        ls)
            echo "Executing command: ls"
            ls
            break
            ;;

        cd)
            echo "Executing command: cd"
            cd
            break
            ;;

        pwd)
            echo "Executing command: pwd"
            pwd
            break
            ;;

        date)
            echo "Executing command: date"
            date
            break
            ;;

        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done    