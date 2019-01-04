class Obstacle {
  
  // Global class variables
  
  int x; 
  int y;
  int r;
  int movementSpeed = 2;
  int lowerObstacleBoundary = 300;
  int upperObstacleBoundary = 400;
  boolean inContact;
  int maxColor = 255;
  int zeroColor = 0;

  
  // Constructor

  Obstacle(int tempX, int tempY, int tempR) {
   
    x = tempX;
    y = tempY;
    r = tempR;
    
  }

  // Function for displaying the Obstacle objects (graphical output)

  void display() {
    rectMode(CENTER);
    fill(zeroColor, zeroColor, maxColor);
    rect(x, y, r, r);
  }
  
  // Function for downward obstacle movement
  
  void moveDown() {
    y = y + movementSpeed;
    
  }
  
  // Function for upward obstacle movement
  
  void moveUp() {
    y = y - movementSpeed;
  }
  
  // Changes direction of obstacles at given height
  
  void changeDirection() {
    if ( y <= lowerObstacleBoundary || y >= upperObstacleBoundary) {
      movementSpeed = -movementSpeed;
    }
  }
  
  // Checks if Player object is in contact with obstacles
  
  boolean inContact(Player other) {
    float d = dist(x, y, other.x, other.y);
    if ( d < other.r) {
      return true;
    } else {
      return false;
    }
  }

}
