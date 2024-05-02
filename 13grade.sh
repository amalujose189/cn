
#!/bin/bash
#AMALU JOSE rollno: 13
calculate_grade() {
    local marks=$1
    grade=0
    if (( $(echo "$marks >= 90" | bc -l) )); then
        grade="A"
    elif (( $(echo "$marks >= 80" | bc -l) )); then
        grade="B"
    elif (( $(echo "$marks >= 70" | bc -l) )); then
        grade="C"
    elif (( $(echo "$marks >= 60" | bc -l) )); then
        grade="D"
    elif (( $(echo "$marks >= 50" | bc -l) )); then
        grade="E"
    else
        grade="F"
    fi

    echo "$grade"
}
sum=0
read -p "Enter number of subjects: " sub
for ((i=1; i<=$sub; i++))
do
    read -p "Enter marks obtained for subject $i (out of 100): " marks
   
    grade=$(calculate_grade $marks)
    echo "Grade obtained for subject $i is: $grade"
    sum=$(echo "scale=2; $sum+$marks" | bc)
done
per=$(echo "scale=2; $sum/$sub" | bc)
echo "Average marks obtained is $per"
sumgrade=$(calculate_grade $per)
echo "Overall grade is: $sumgrade"

