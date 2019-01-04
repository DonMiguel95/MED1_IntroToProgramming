float r = 2;
float theta = 0;
float rCircle = 16;
float c1 = 100;
float c2 = 50;
float c3 = 10;

void setup() {
  size(1000, 500);
  background(255);
}

void draw() {
  float x = r * cos(theta);
  float y = r * sin(theta);

  stroke(0);
  fill(c3,c2,c1);
  //fill(random(0,255),random(0,255),random(0,255));
  ellipse(x+ width/2, y + height/2, rCircle, rCircle);
  
  //increment the angle 
  theta += 0.1;
  //increment radius of the movement:
  r += 0.5;
  
  //increase radius of circle for each loop:
  rCircle +=0.02;
  
  if(c1 > 200) {
    c1 = 50;
  }
  c1 += 0.75;
  c2 += 0.3;
  c3 += 0.5;
 
  
}
