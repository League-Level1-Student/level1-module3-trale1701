package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld2 {
	public static void main(String[] args) {
		World world = new World();
		world.show();

		Flower flower1 = new Flower();
		for (int i = 0; i < 10; i++) {
			Location location = new Location(i, i);
			world.add(location, flower1);

		}
		
		for (int j = 9; j >= 0; j--) {
			Location location = new Location(9 - j, j);
			world.add(location, flower1);

		}

	}

}
