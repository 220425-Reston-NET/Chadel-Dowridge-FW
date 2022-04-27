//This is how you create a class by using the class keyword
//Public is just there to make the class avaiable for everyone
public class Car
{
    
        //This is a field 
        //Its used to store information or define the current state of the object
        //By default, fields
        private string _color;
        private string _owner; 
        private int _fuel;
        private int _gallonPerMile;

        // This is a method
        // A way to represent behavior/function and it will run multiple lines of code
        // Void means that the method will not run
        public int TotalDistancePerFuel()
        {
           Console.WriteLine("Current Fuel: " + _fuel + " This is the owner: " + _owner);
           Console.WriteLine($"GallonPerMile Per Mile:  + {_gallonPerMile} This is the owner: {_owner}");

           Console.WriteLine(" This is how many Miles : " +_fuel/_gallonPerMile);


           //Return keyword is the method will give back
           return _fuel/_gallonPerMile;
        }

        //Method can also have parameters
        //Parameters are impemented by adding in datatypes inside of the parenthesis
        //the comma is used
        public void Sum(int num1, int num2)
        {
            Console.WriteLine(num1+num2);
        }

        //This is a Constructor
        //Its is a specail mthod thast will run whenever you create an object

        public Car()
        {
            _color = "Blue";
            _fuel = 100;
            _gallonPerMile = 5;
            _owner = "Chadel";
        }

        public Car(string p_owner)
        {
            _owner = p_owner;
        }

        //This is a Property
        // Gives flexabillty to check that the data being stored is correct, let only certain things access data, make things read or write
        public string Owner 
        {
            //get keyword is this is how the data is going to be stored
            get {return _owner + " is the owner of this car.";}

            //set keyword is how you change the data that is being stored
            set {_owner=value+" Owner";}
        }
        //Fuel can only br from 0 to 100
        public int Fuel
        {
            get{return _fuel;}
            set
            {
                if (value <= 100 && value >= 0)
                {
                    _fuel = value;
                }
                else
                {
                    _fuel = 100;
                    Console.WriteLine("Fuel can only hold from 0 to 100");
                }
            }

        }
    }
