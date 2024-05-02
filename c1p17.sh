
NUMBERS=(2 4 8 7 1 0 3)
highest=${NUMBERS[0]}
second_highest=${NUMBERS[0]}
for number in "${NUMBERS[@]}"; do
if (( number > highest )); then
second_highest=$highest
highest=$number
elif (( number != highest )) && (( number > second_highest )); then
second_highest=$number
fi
done
echo "Second highest number: $second_highest"
