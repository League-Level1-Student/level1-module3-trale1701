void setup(){
  size(500, 500);
  
}
  int x = 250;
  int y = 250;
void draw(){
  background(100, 200, 220);
  fill(220, 220, 100);
  stroke(0, 0, 0);
  ellipse(x, y, 100, 80);
  fill(200, 50, 50);
  ellipse(x + 45, y + 15, 40, 15);
  ellipse(x + 45, y + 5, 40, 15);
  fill(255, 255, 255);
  ellipse(x + 35, y - 15, 25, 25);
  fill(0, 0, 0);
  ellipse(x + 42, y - 15, 5, 5);
  fill(255, 255, 255);
  ellipse(x - 35, y - 10, 100, 40);
  
  y=y+5;
}
