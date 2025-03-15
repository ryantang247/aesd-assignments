if [ ! "$1" ] || [ ! "$2" ];then
        echo "Missing arguments"
        exit 1
fi

if [ ! -d "$1" ];then
        echo "Not a valid directory"
        exit 1
fi


file_count=$(ls $1 -1| wc -l)
lines_match=$(grep -r "$2" "$1"| wc -l )
echo "The number of files are ${file_count} and the number of matching lines are ${lines_match}\n"

