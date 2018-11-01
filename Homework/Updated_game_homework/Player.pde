class Player {
  
  // Global class variables
  
  int x;
  int y; 
  int r;
  int playerStart = 150;
  int playerHeight = 400;
  int playerSize = 20;
  int movementSpeed = 2;
  int skin;
  
  // Constructor
  
  Player(int chosenSkin) {
    
    x = playerStart;
    y = playerHeight;
    r = playerSize;
    skin = chosenSkin;
  
  }
  
  // Function for displaying the Player object (graphical output)
  
  void display() {
    fill(skin);
    ellipse(x, y, r, r);
  }
  
  // Function for backward movement of player
  
  void moveBack() {
    if (keyPressed) {
      if ( key == 'a' || key == 'A') {
        x = x - movementSpeed;
      }
    }
  }
  
  // Function for forward movement of player
  
  void moveForward() {
    if (keyPressed) {
      if ( key == 'd' || key == 'D') {
        x = x + movementSpeed;
      }
    }
  }
  
}
