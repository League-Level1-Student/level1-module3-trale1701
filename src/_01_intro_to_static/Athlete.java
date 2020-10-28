package _01_intro_to_static;

public class Athlete {

	static int nextBibNumber = 1;
	static String raceLocation = "New York";
	static String raceStartTime = "9.00am";

	String name;
	int speed;
	int bibNumber;

	Athlete(String name, int speed) {
		this.name = name;
		this.speed = speed;
		this.bibNumber = nextBibNumber;
		nextBibNumber++;
	}

	public static void main(String[] args) {
		// create two athletes 
		//print their names, bibNumbers, and the location of
		// their race. }
		Athlete Tra = new Athlete("Tra", 69);
		Athlete Rando = new Athlete("Rando", 70);
		System.out.println(Tra.name);
		System.out.println(Tra.bibNumber);
		System.out.println(Tra.raceLocation);
		System.out.println(Rando.name);
		System.out.println(Rando.bibNumber);
		System.out.println(Rando.raceLocation);

	}
}
