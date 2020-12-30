void setup(){
  size(800,600);
}

int frogX=400;
int frogY=575;
Car car1 = new Car(400,100,100,5);
Car car2 = new Car(400,250,100,5);
Car car3 = new Car(400,400,100,5);
void draw(){
  background(80,80,80);
  
  car1.display();
  car2.display();
  car3.display();
  
  fill(50,200,50);
  ellipse(frogX,frogY,50,50);
  
}

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            //Frog Y position goes up
            if(frogY>0+25){
            frogY=frogY-10;}
        }
        else if(keyCode == DOWN)
        {
            //Frog Y position goes down
            if(frogY<600-25){
            frogY=frogY+10;}
        }
        else if(keyCode == RIGHT)
        {
            //Frog X position goes right
            if(frogX<800-25){
            frogX=frogX+10;}
        }
        else if(keyCode == LEFT)
        {
            //Frog X position goes left
            if(frogX>0+25){
            frogX=frogX-10;}
        }
    }
}

class Car{
  int carX;
  int carY;
  int carZ;
  int carS;
  Car(int x, int y, int z, int s){
    carX=x;
    carY=y;
    carZ=z;
    carS=s;
  }
  void display()
  {
    fill(0,255,0);
    rect(carX , carY, carZ, carS);
  }
}
