void setup() {
  size(800, 600);
}

int frogX=400;
int frogY=575;
Car car1 = new Car(400, 100, 80, 5);
Car car2 = new Car(400, 250, 80, 5);
Car car3 = new Car(400, 400, 80, 5);
void draw() {
  background(80, 80, 80);

  car1.goLeft();
  car1.display();
  car2.goRight();
  car2.display();
  car3.goLeft();
  car3.display();

  if (car1.intersects(car1) == true) {
    frogX = 400;
    frogY = 575;
  }
  if (car2.intersects(car2) == true) {
    frogX = 400;
    frogY = 575;
  }
  if (car3.intersects(car3) == true) {
    frogX = 400;
    frogY = 575;
  }

  fill(50, 200, 50);
  ellipse(frogX, frogY, 50, 50);
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      //Frog Y position goes up
      if (frogY>0+25) {
        frogY=frogY-10;
      }
    } else if (keyCode == DOWN)
    {
      //Frog Y position goes down
      if (frogY<600-25) {
        frogY=frogY+10;
      }
    } else if (keyCode == RIGHT)
    {
      //Frog X position goes right
      if (frogX<800-25) {
        frogX=frogX+10;
      }
    } else if (keyCode == LEFT)
    {
      //Frog X position goes left
      if (frogX>0+25) {
        frogX=frogX-10;
      }
    }
  }
}

class Car {
  int carX;
  int carY;
  int carZ;
  int carS;
  Car(int x, int y, int z, int s) {
    carX=x;
    carY=y;
    carZ=z;
    carS=s;
  }
  void display()
  {
    fill(0, 255, 0);
    rect(carX, carY, carZ * 3, carZ);
  }
  void goLeft() {
    if (carX > 0 - carZ*2) {
      carX = carX - carS;
    } else {
      carX=800;
    }
  }
  void goRight() {
    if (carX < 800) {
      carX = carX + carS;
    } else {
      carX=0 - carZ*3;
    }
  }
  int getX() {
    return carX;
  }
  int getY() {
    return carY;
  }
  int getSize() {
    return carZ;
  }
  boolean intersects(Car car) {
    if ((frogY + 25 > car.getY() && frogY - 25 < car.getY()+car.getSize()) &&
      (frogX + 25 > car.getX() && frogX - 25 < car.getX()+car.getSize()*3)) {
      return true;
    } else {
      return false;
    }
  }
}
