echo "Enter mark of the student:"
read mark



get_grade() {
    if [ $1 -ge 90 ]; then
        echo "A"
    elif [ $1 -ge 80 ]; then
        echo "B"
    elif [ $1 -ge 70 ]; then
        echo "C"
    elif [ $1 -ge 60 ]; then
        echo "D"
    else
        echo "F"
    fi
}
grade=$(get_grade $mark)

echo "Student  grade: $grade"
