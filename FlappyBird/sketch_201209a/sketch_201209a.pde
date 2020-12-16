void setup(){
  size(500, 500);
}
  int birdX = 100;
  int score = 0;
  int birdY = 250;
  int gravity = 1;
  int birdYVelocity = 3 + gravity;
  int upperPipeHeight = (int) random(100, 300);
  int upperPipeX = 500;
  int lowerPipeTop = 500-upperPipeHeight-190;
  boolean check = false;
boolean intersectsPipes() { 
         if (birdY < upperPipeHeight +20 && birdX > upperPipeX && birdX < (upperPipeX+50)){
            return true; }
        else if (birdY>upperPipeHeight + 160 -20 && birdX > upperPipeX && birdX < (upperPipeX+50)) {
            return true; }
        else { return false; }
}
void draw(){
  check = intersectsPipes();
  if (check == true){
    noLoop();
  }
  
  background(100, 200, 220);
  fill(220, 220, 100);
  stroke(0, 0, 0);
  ellipse(birdX, birdY, 100, 80);
  fill(200, 50, 50);
  ellipse(birdX + 45, birdY + 15, 40, 15);
  ellipse(birdX + 45, birdY + 5, 40, 15);
  fill(255, 255, 255);
  ellipse(birdX + 35, birdY - 15, 25, 25);
  fill(0, 0, 0);
  ellipse(birdX + 42, birdY - 15, 5, 5);
  fill(255, 255, 255);
  ellipse(birdX - 35, birdY - 10, 100, 40);
  
  birdY=birdY + birdYVelocity;
  if(upperPipeX < -50){
  upperPipeX=500;
  upperPipeHeight = (int) random(100, 300);
  score = score + 1;
  }
  
  pipe();
  upperPipeX = upperPipeX - 5;
  fill(0,0,0);
  text("score:" + score, 10, 20);
}

void pipe(){
  fill(220, 220, 100);
  rect(upperPipeX,0,50,upperPipeHeight);
  rect(upperPipeX,upperPipeHeight+160,50,500-upperPipeHeight-160);
}
void mousePressed() {
  birdY=birdY-70;
}
