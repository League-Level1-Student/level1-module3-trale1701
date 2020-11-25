package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	public static void main(String[] args) {
		World world = new World();
		world.show();
		
		Flower flower1 = new Flower();
		for (int i = 0; i < 10; i++) {
			for (int j = 0; j < 10; j++) {
				Location location = new Location(i,j);
				
					world.add(location, flower1);
				
			}
		}
		
		Bug bug1 = new Bug();
		Location bug1l = new Location(1,1);
		world.add(bug1l, bug1);
		
		Random ran = new Random();
		Bug bug2 = new Bug(Color.BLUE);
		int bug2r = ran.nextInt(10);
		int bug2c = 1+ ran.nextInt(8);
		Location bug2l = new Location(bug2r,bug2c);
		world.add(bug2l, bug2);
		bug2.turn();
		bug2.turn();
			
		Flower flower2 = new Flower();
		Location flower1l = new Location(bug2r,bug2c - 1);
		Location flower2l = new Location(bug2r,bug2c + 1);
		world.add(flower1l, flower1);
		world.add(flower2l, flower2);
		
		
		
		
	}

}
