void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  float mouseSpeed = abs(mouseX - pmouseX);
  stroke(255, 0, 0);
  strokeWeight(mouseSpeed);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
