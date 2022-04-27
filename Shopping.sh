# We can ask for inputer from the user that is using the shell scripting and output some sort of response
#read name # Read [wahtever variable name you specify] will store the user input in that variable

repeat="true"
sum=0

while [ "$repeat" == "true" ]
do
	echo "Welcome to The Market"
	echo "Enter 1 for Shopping List?"
	echo "Enter 2 to exit"
	read answer

if [ "$answer" == "1" ]
then
	while [ "$repeat" == "true" ]
	do
	echo "Please choose an option"
	echo "1. Bread"
	echo "2. Cheese"
	echo "3. Fruits"
	echo "4. Bacon"
	echo "5. Salt"
	echo "6. Checkout"
	read choice
	if [ "$choice" == "1" ]
	then
		echo "Bread: 2"
		sum=$(($sum+2))

	elif [ "$choice" == "2" ]
	then
        	echo "Cheese:3"
		sum=$(($sum+2))

	elif [ "$choice" == "3" ]
	then
        	echo "Milk:3"
		sum=$(($sum+2))

	elif [ "$choice" == "4" ]
	then
		echo "Sugar:3"
                sum=$(($sum+2))

	elif [ "$choice" == "5" ]
        then
		echo "Salt:3"
                sum=$(($sum+2))

	elif [ "$choice" == "6" ]
        then
              echo "Your total is $ $sum"
              repeat="false"
	else
		echo "Choose vaild answer"
	fi
	done

elif [ "$answer" == "2" ]
then
	repeat="false"
else
	echo "Enter a correct option"
fi 
done

