  // Import sound library for theme song

  // import processing.sound.*;
  // Song theme;

  // Object variable declarations

  Player player1;
  Obstacle obs0;
  Obstacle obs1;
  Obstacle obs2;

  // Global variables

  int sketchSizeX = 800;
  int sketchSizeY = 600;
  int passX0 = 400;
  int passX1 = 500;
  int passX2 = 600;
  int passR = 25;
  int division = 2;
  int increment0 = 50;
  int increment1 = 100;
  int playerStart;
  int wins = 0;
  int losses = 0;
  int arraySize = 5;
  int skin;
  int level = 0;

void setup() {
  
  // Creating the objects and setting the size of the window once in setup()
  
  size(800, 600);
  
  /* NOTICE: This is where the user can input their own value (0-4) 
  into the createSkin function that creates an array of 5 int values 
  that represent different skins for the Player object. This will then be
  passed to the Player constructor that displays the player based on this 
  input.
  */
  
  createSkin(0);
  player1 = new Player(skin);
  obs0 = new Obstacle(passX0, height/division, passR);
  obs1 = new Obstacle(passX1, height/division+increment0, passR);
  obs2 = new Obstacle(passX2, height/division+increment1, passR);
  // theme = new Song(this, "Ducktales.mp3");
}

void draw() {
  
  // Calling the class functions repeatedly in draw()
  everyLevel();
  
  if (level == 0) {
  obs0.display();
  obs0.moveDown();
  obs0.changeDirection();
  } else if (level == 1) {
  obs1.display();
  obs1.moveUp();
  obs1.changeDirection();
  obs2.display();
  obs2.moveUp();
  obs2.changeDirection();
  }

  // Checks if Player object collides with any of the Obstacle objects

  if (level == 0) {
    if (obs0.inContact(player1)) {
      player1.x = player1.playerStart;
      losses++;
      println("You've lost this level " + losses + " time(s).");
    }
  } else if (level == 1) {
      if (obs1.inContact(player1) || obs2.inContact(player1)) {
    player1.x = player1.playerStart;
      losses++;
      println("You've lost this level " + losses + " time(s).");
      }
  }
  
  // Win condition
  
  if (player1.x >= width-95) {
      wins++;
      level++;
      println("You've won this level " + wins + " time(s).");
      player1.x = player1.playerStart;
    }
      
}   
  
  // Draws the background and static elements of the level design
  
  void everyLevel() {
    background(#D3961A);
    player1.display();
    player1.moveForward();
    player1.moveBack();
    fill(0);
    //text("Level: " + currentLevel, width/2, 20);
    text("Wins: " + wins, 10, 20);
    text("Losses: " + losses, 10, 40);
    strokeWeight(4);
    line(0, 411, width, 411);
    line(width-100, 0, width-100, 350);
    fill(0, 255, 0);
    text("FINISH", width-70, height/2); 
    strokeWeight(1);
    fill(0);
    textSize(32);
    text("Level: " + level, width/2-20, 100);
    textSize(14);
  }
  
  void createSkin(int chosenSkin) {
    int[] skins = new int[arraySize];
    skins[0] = #FA0A0A;
    skins[1] = #0A58FA;
    skins[2] = #0DFA0A;
    skins[3] = #FAF30A;
    skins[4] = #990AFA;
    skin = skins[chosenSkin];
  }
  
  
