//Space ships

//variables
Enemy [] e = new Enemy [4];

Turret t;
Bullet b1;
Ally a1;
Ally a2;

boolean bulletfired;
int score;
float distance;
float shooterX;
float shooterY;
 int s =0;
  int m=0;


//things that run once
void setup() {

  frameRate(60);
  size(1080, 1000);
  background(0);
  
  fill(255);
  rect(880,0,1080,1000);
  
  shooterX = 425;
  shooterY = 730;

 for (int i=0; i< e.length; i++){ 
      if (i%2==0){ e[i] = new Enemy((900 + i*50), random(100,500), -1*(1+i));}
      else { e[i] = new Enemy((-50 - i*100), random(100,500), 1*(1+i));}
 }
  
  t=new Turret(425,730);
  
  b1 = new Bullet(shooterX+10,shooterY,-15);
  bulletfired = false;
  
  a1 = new Ally(1000,random(100,500),-2);
  a2 = new Ally(-500,random(100,500),2);
  
}

//things that run multiple times
void draw() {
   background(0);
 
   noStroke();
   
 for (int i=0; i< e.length; i++){
  e[i].update();
 }
 
  t.update();
  a1.update();
  a2.update();
 
//timer
  if (frameCount % 60 == 0) { s=s+1; }
  if (s >1 & s%60 == 0) {  s=0; m=m+1;}
  fill(255);
  text(m+":"+s, 800, 50);
  
//Legend
  
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
 for (int i=0; i< e.length; i++){
  if (b1.isTouching(e[i])) {
    fill(255, 125, 255);
    textSize(80);
    text("Hit ", 275, 100);
    score = score + 10;
    b1.bulletresetY();
    e[i].shipdies();
    bulletfired=false;
    
  }
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
  text("Score is "+score, 600, 50);
 
}
void mousePressed() {
   loop();
 }