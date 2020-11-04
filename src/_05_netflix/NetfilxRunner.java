package _05_netflix;

public class NetfilxRunner {
	public static void main(String[] args) {
		Movie TheAvengers = new Movie("The Avengers", 4);
		Movie Avatar = new Movie("Avatar", 4);
		Movie StarWars = new Movie("Star Wars", 3);
		Movie ET = new Movie("E.T", 3);
		Movie ToyStory = new Movie("Toy Story", 3);
		
		System.out.println(Avatar.getTicketPrice());
		
		NetflixQueue list = new NetflixQueue();
		
		list.addMovie(TheAvengers);
		list.addMovie(Avatar);
		list.addMovie(StarWars);
		list.addMovie(ET);
		list.addMovie(ToyStory);
		
		list.printMovies();
		
		System.out.println("The best movie is "+ list.getBestMovie().getTitle());
		
		list.sortMoviesByRating();
		System.out.println("The second best movie is "+ list.getMovie(1).getTitle());
		
	}

}
