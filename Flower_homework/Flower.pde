class Flower {
  
  //Variables
  
  float r;
  float x;
  float y;
  int numPetals;
  int petalColor;
  float xSpeed;
  float ySpeed;
  float xDir = 1;
  float yDir = 1;
  
 
  //Constructor
  
  Flower(float tempR, int tempNumPetals, float tempX, float tempY, int tempPetalColor, float tempXSpeed, float tempYSpeed) {
   r = tempR;
   numPetals = tempNumPetals;
   x = tempX;
   y = tempY;
   petalColor = tempPetalColor;
   xSpeed = tempXSpeed;
   ySpeed = tempYSpeed;
  // xdirection=temp_xdirection;
  // ydirection=temp_ydirection;
  }
 
  void display() {
  
  float ballX;
  float ballY;
  

  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/numPetals) {
  ballX = x + r*cos(i);
  ballY = y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(10,200,20);
  ellipse(x,y,r*1.2,r*1.2);
  
}
  
 
 void move() {
 
  x = x + (xSpeed * xDir);
  y = y + (ySpeed * yDir);
  
 }
  
 void bounce() {
  
  if (x > width-r || x < r) {
    xDir *= - 1;
  }
  
  if (y > height-r || y < r) {
    yDir *= - 1;
  }
 }  
 
  
}
