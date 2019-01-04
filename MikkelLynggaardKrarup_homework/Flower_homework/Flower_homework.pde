Flower flowerOne = new Flower(30, 8, 100, 100, #0E87ED, 2, 2);
Flower flowerTwo = new Flower(50, 12, 450, 300, #E01414, 1, 1);

void setup() {
  size(600,400);
}

void draw() {
  background(200, 200, 0);
  flowerOne.display();
  flowerOne.move();
  flowerOne.bounce();
  flowerTwo.display();
  flowerTwo.move();
  flowerTwo.bounce();
}
 
 
 
