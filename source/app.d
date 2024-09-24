import std.stdio;
//import std.uni.toUpper;
import std.string;

void main()
{
	string cupOfCoffee = "  ;)( ;\n :----:\nC|====|\n |    |\n `----' ";
	double totalCoffe, cupSize;
	char response;
	writeln("How much coffe do you have in total? (in litres)");
	readf(" %s", totalCoffe);
	writeln("How big is your cup? (in litres)");
	readf(" %s", cupSize);
	bool isDrinking = true;
	if (cupSize > totalCoffe)
	{
		notEnoughCoffeMessage(totalCoffe);
	}
	while(isDrinking)
	{
		writeln("Do you want a cup of coffee???\nI have ", totalCoffe*1000,"mls left. [Y/n]");
		readf(" %s", response);
		if (response.toUpper == 'Y')
		{
			writeln("Here is your cup of coffee:");
			writeln(cupOfCoffee);
			totalCoffe -= cupSize;
		}
		else if (response.toUpper == 'N')  
		{
			isDrinking = false;
			writeln("It's cool. :P");
			writeln("I'll have ", totalCoffe*1000, " mls of coffe for myself! ^^");	
			break;
		}
		else
		{
			writeln("Sorry, what now?? beep-boop?");
		}
		if (totalCoffe <= 0)
		{
			break;
		}
		else if (totalCoffe < cupSize)
		{
			isDrinking = false;
			notEnoughCoffeMessage(totalCoffe);
			break;
		}
		writeln();
	}
	writeln("Sorry, we are all out of coffee for now. Come back next time!\nAnd bring more coffee!");
	rollCredits();
}

void rollCredits()
{
	writeln("\n\n\n");
	writeln("\t\t\t\tCredits: ");
	writeln("\t\t\t\tCoffe cup by Hayley Jane Wakenshaw\n\t\t\t\t\t\thttps://www.asciiart.eu/food-and-drinks/coffee-and-tea");
	writeln("\t\t\t\tCode by me :)");	
}

void notEnoughCoffeMessage(double totalCoffe)
{
	writeln("You don;t have enough coffe for your cup now.");
	writeln("I'll have ", totalCoffe*1000, " mls of coffe for myself! ^^");		
}