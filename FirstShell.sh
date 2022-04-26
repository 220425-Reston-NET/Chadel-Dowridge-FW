# This is a Comment 
# Its a sticky note  for better organziation  in  code.
echo "This is your first shell script!"

# Variables
msg = "Hello World variable"
echo $msg #  $ Syntax is key


# Control Flow
# Basically If/While statements

#If satements
ten=10
five=5
thirteen=13

echo "==First If==="
if [ "$ten" -ge "$five" ]
then
echo "Greater!"
echo "$ten > $five"
fi

echo "This is outside of the then fi"

echo "===Second If==="
if [ "$five" -ge "$ten" ]
then
echo "Greater!"
echo "$ten > $five"
elif [ "$five" -le "$ten" ]
then
echo "Lesser!"
echo "$five < $ten"
fi

echo "===Third If==="
if [ "$five" -ge "$ten" ]
then
echo "Greater!"
echo "$ten > $five"
elif [ "$five" -ge "$thirteen" ]
then
echo "Greater!"
echo "$five" > "$thirteen"
else
echo "Nothing Matches"
fi

# Loops statements
# A way to repeat multiple lines of code

# For Loops statement
# Will repeat x times
# Useful to know the amount of times needed.

echo "===For Loops==="
echo "===First Loop==="
for number in  2 4 6 8 10
do
echo "Hello $number"
echo "World"
echo "Testing"
echo "Line 4"
done

echo "===Second Loop==="
for i in {1..10}
do
echo "$i"
done

echo "===While Loops==="
# While Loop statement
# Will repeat until you tell it not to repeat
# Useful because it keep looping until you say something

while [ "$five" -le "$ten" ]
do 
echo  "Lesser!"
five=$(($five+1)) # $((math operation))
echo "$five"
done

# Input and Output
# Ask the user input for using the shell then output there commands

echo "Whats your Name?"
read  name # reads the name from input

echo "Hello $name Welcome to programming!"

# Making a shell menu
clear # clear command will clear all of the text in the terminal
repeat="true"

while [ "$repeat" == "true" ]
do
echo "Welcome to  shell scripting"
echo "What do you want to do today?"
echo "Enter 1 for adding two numbers?"
echo "Enter 2 to exit"

read answer
if [ "$answer" == "1" ]
then
	echo "Give me number  1"
	read num1
	echo "Give me number 2"
	read num2
	echo "The sum is $(($num1 + $num2))"
elif [ "$answer" == "2" ]
then
	repeat="False"
else

	echo "Please Enter a correct option"
fi

done
