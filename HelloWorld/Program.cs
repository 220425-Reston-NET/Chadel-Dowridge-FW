// See https://aka.ms/new-console-template for more information
Console.Clear(); //Will clear the console
Console.WriteLine("Hello, World!"); //Writeline will write something in the terminal

Console.WriteLine("Making a car object!");
//[Class Name] [Name of Object] = new [Class name];
Car carObj1 = new Car();

//Refrence class members within an object
int mile = carObj1.TotalDistancePerFuel();

carObj1.Sum(5,10);

Console.WriteLine(mile);

Console.WriteLine("End of Method");
string owner = "Chadel";

Car carObj2 = new Car(owner);
Console.WriteLine(carObj2.Owner);
carObj2.Owner = "Chadel";
Console.WriteLine(carObj2.Owner);

carObj2.Fuel = 80;
Console.WriteLine(carObj2.Fuel);

bool repeat = true;
while (repeat)
{
    string answer = Console.ReadLine();
    if (answer == "")
    {


    }
    else if (answer == "Exit")
    {
        repeat = false;
    }
    else
    }
    {

    }
}