public class Student {

	static int nextId = 0;

	static String School = "Carmel Valley ";

	int id;

	String name;

	int currentLevel;

	Student(String name, int currentLevel) {

		this.name = name;
		this.currentLevel = currentLevel;
		id = nextId;
		nextId++;
	}

	public static void main(String[] args) {

		// create 2 students.
		Student person1 = new Student("person1", 1);
		Student person2 = new Student("person2", 2);
		// print their names, ids and school.
		System.out.println("name: " + person1.name + ", id: " + person1.id +", school: " + person1.School);
		System.out.println("name: " + person2.name + ", id: " + person2.id +", school: " + person2.School);
	}
}