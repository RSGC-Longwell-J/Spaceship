//Space invaders Game

//Arrays
Enemy [] e = new Enemy [4];
Ally [] a = new Ally [2];


//Classes
Turret t;
Bullet b1;
Ally a1;
Ally a2;


//Sound Files
import processing.sound.*;
SoundFile explosion;
SoundFile lazor;
SoundFile space;


//Variables
boolean bulletfired;
int score;
float distance;
float shooterX;
float shooterY;
int s =0;
int m=0;


//things that run once
void setup() {

  //How often the frame re-freshes
  frameRate(60);

  //Size of the canvas
  size(1080, 1000);

  //The background
  fill(255);
  rect(880, 0, 1080, 1000);

  //Declaring sound bites
  explosion=new SoundFile(this, "Bomb_Exploding-Sound_Explorer-68256487.mp3");
  lazor=new SoundFile(this, "Laser_Cannon-Mike_Koenig-797224747.mp3");
  space=new SoundFile(this, "The Sounds Of Space.mp3");

  //Shooter X and Y positions
  shooterX = 425;
  shooterY = 730;
  
  //Plays the background music
  space.play();
  space.amp(0.75);
  //For/while statments
  for (int i=0; i< e.length; i++) { 
    if (i%2==0) { 
      e[i] = new Enemy((900 + i*50), random(100, 500), -1*(1+i));
    } else { 
      e[i] = new Enemy((-50 - i*100), random(100, 500), 1*(1+i));
    }
  }

  for (int i=0; i< a.length; i++) { 
    if (i%2==0) { 
      a[i] = new Ally((1000 + i*50), random(100, 500), -1*(2+i));
    } else { 
      a[i] = new Ally((-100 - i*100), random(100, 500), 1*(2+i));
    }
  }

  //Creating objects from classes
  t=new Turret(425, 730);

  b1 = new Bullet(shooterX+10, shooterY, -15);
  bulletfired = false;
}

//Things that run multiple times
void draw() {

  //Re-sets the background
  background(0);

  //Gets rid of the outline of objects
  noStroke();

  //For/while/if statments

  //Updates the Index values of arrays
  for (int i=0; i< e.length; i++) {
    e[i].update();
  }

  for (int i=0; i< a.length; i++) {
    a[i].update();
  }

  //Timer
  if (frameCount % 60 == 0) { 
    s=s+1;
  }
  if (s >1 & s%60 == 0) {  
    s=0; 
    m=m+1;
  }

  //Updating of classes
  if (bulletfired) {
    bulletfired=b1.update();
  }

  //How to fire the bullet
  if (keyPressed) {
    if (key == 'b') {
      if (!bulletfired) {
        bulletfired = true;
        lazor.play();
      }
    }
  }

  //How to end the game

  if (m>1) {
    noLoop();
    fill(255);
    textSize(70);
    text("Game Over", 300, 200);
    text("Your Score "+score, 250, 400);
  }

  //Score when Hits
  for (int i=0; i< e.length; i++) {
    if (b1.isTouching(e[i])) {
      fill(255);
      textSize(80);
      text("Hit ", 275, 100);
      score = score + 10;
      b1.bulletresetY();
      e[i].shipdies();
      bulletfired=false;
      explosion.play();
      explosion.amp(3);
    }
  }

  //Score when Hits
  for (int i=0; i< a.length; i++) {
    if (b1.isTouching(a[i])) {
      fill(250, 0, 0);
      textSize(80);
      text("Hit ", 275, 100);
      score = score -20;
      b1.bulletresetY();
      a[i].shipdies();
      bulletfired=false;
      explosion.play();
      explosion.amp(3);
    }
  }

  //updates the turret class
  t.update();

  //Displays the timer
  fill(255);
  text(m+":"+s, 800, 50);

  //Legend

  fill(255);
  rect(880, 0, 1080, 1000);
  fill(0);
  textSize(35);
  text("Instructions", 880, 75);
  text("Ally", 950, 140);
  text("Enemy", 930, 290);
  text("Shooter", 920, 400);
  textSize(25);
  text("Press B to fire", 900, 500);
  textSize(23);
  text("2 Mins per game", 890, 600);

  fill(100, 100, 100);
  ellipse(985, 200, 50, 50);
  fill(142, 136, 136); 
  ellipse(960, 350, 20, 40);
  ellipse(1000, 350, 20, 40);
  ellipse(980, 350, 20, 20);

  fill(255, 255, 255);
  rect(950, 400, 10, 30);
  fill(255, 125, 255);
  rect(965, 430, 30, 30);


  //displays the score
  fill(255);
  textSize(20);
  text("Score is "+score, 600, 50);
}