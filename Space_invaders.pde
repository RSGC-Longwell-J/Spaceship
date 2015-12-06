//Space ships

//variables
Enemy e1;
Enemy e2;
Enemy e3;
Enemy e4;
Turret t;
Bullet b1;
Ally a1;
Ally a2;
Timer t1;
boolean bulletfired;
int score;
float distance;
float shooterX;
float shooterY;
int s;
int m;


//things that run once
void setup() {

  frameRate(60);
  size(1080, 1000);
  background(0);
  
  fill(255);
  rect(880,0,1080,1000);
  
  shooterX = 425;
  shooterY = 730;
  
  e1=new Enemy(900, random(100,500), -3);
  e2=new Enemy(-300, random(100,500),4);
  e3=new Enemy(-50, random(100,500),2);
  e4=new Enemy(1000, random(100,500),-1);
  
  t=new Turret(425,730);
  
  b1 = new Bullet(shooterX+10,shooterY,-15);
  bulletfired = false;
  
  a1 = new Ally(1000,random(100,500),-2);
  a2 = new Ally(-500,random(100,500),2);
  
  t1 = new Timer();
  t1.start();
}

//things that run multiple times
void draw() {
 noStroke();
 
  background(0);
  e1.update();
  e2.update();
  e3.update();
  e4.update();
  t.update();
  a1.update();
  a2.update();
  
  s = second();
  m = minute();
  text(m+":"+s, 800, 50);
  
  fill(255);
  rect(880,0,1080,1000);
  fill(0);
  textSize(35);
 text("Instructions", 880, 75);
 text("Ally", 950, 140);
 text("Enemy", 930, 290);
 text("Shooter", 920, 400);
 fill(100,100,100);
 ellipse(985,200,50,50);
 fill(142,136,136); 
  ellipse(960,350,20,40);
    ellipse(1000,350,20,40);
    ellipse(980,350,20,20);
    
     fill(255,255,255);
   rect(950,400,10,30);
   fill(255,125,255);
   rect(965,430,30,30);
 
 if(bulletfired){
   bulletfired=b1.update();
 }
 
 if (keyPressed){
   if(key == 'b'){
     if(!bulletfired){
       bulletfired = true;
     }
   }
 }
 
 //Score when Hits
  if (b1.isTouching(e1)) {
    fill(255, 125, 255);
    textSize(80);
    text("Hit ", 275, 100);
    score = score + 10;
    b1.bulletresetY();
    e1.shipdies();
    bulletfired=false;
    
  }
   
  //Score when Hits
  if (b1.isTouching(e2)) {
    fill(255);
    textSize(80);
    text("Hit ", 275, 100);
    b1.bulletresetY();
    bulletfired=false;
    e2.shipdies();
    score = score + 10;
    
  }
 
    //Score when Hit
  if (b1.isTouching(e3)) {
    fill(255);
    textSize(80);
    text("Hit ", 275, 100);
    b1.bulletresetY();
    bulletfired=false;
    e3.shipdies();
    score = score + 10;
    
  }
 // Score when Hits
  if (b1.isTouching(e4)) {
    fill(255);
    textSize(80);
    text("Hit ", 275, 100);
    b1.bulletresetY();
    e4.shipdies();
    bulletfired=false;
    score = score + 10;   
  }
  
  //Score when Hits
  if (b1.isTouching(a1)) {
   fill(255);
   textSize(80);
   text("Hit ", 275, 100);
   b1.bulletresetY();
   a1.shipdies();
   bulletfired=false;
   score = score -20;   

  }
  
  //Score when Hits
    if (b1.isTouching(a2)) {
   fill(255);
   textSize(80);
   text("Hit ", 275, 100);
   b1.bulletresetY();
   a2.shipdies();
   bulletfired=false;
   score = score -20;   

  }
  
  fill(255);
  textSize(20);
  text("Score is"+score, 600, 50);
 
}