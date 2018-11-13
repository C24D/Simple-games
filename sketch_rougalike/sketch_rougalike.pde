import processing.sound.*;
SoundFile explosion;
SawOsc sine;
PImage tile;
PImage alien;
PImage tower;
int money = 0;
int bulletX = 0;
int bulletY = 0;
float enemyX = 200;
float enemyY = 200;
int spawnEnemy = 1;
float enemyHealth = 1000;
int dmg = 5;
int hp = 100;
int enemyAtc = 500;
int enemyDmg = 10;
int score = 0;

void setup(){
  size(800,800);
  translate(width/2, height/2);
  sine= new SawOsc(this);
  sine.play();
  sine.freq(150);
  explosion = new SoundFile(this, "explosion.wav");
  tile=loadImage("Background.jpg");
  alien=loadImage("Enemy.jpg");
  tower=loadImage("Tower.jpg");
  frameRate(120);
}

void keyReleased(){


  if(key == '1' && money>dmg){
    dmg++;
    money=money-dmg;
  }
  
  if(key =='2' && money>4 && hp<100){
    hp=hp+5;
    money=money-5;
  }
}

void draw(){
strokeWeight(1);
stroke(0,30,100);
bulletX=mouseX;  
bulletY=mouseY;

for(int x=0;x<width;x=x+100){
 for(int y=0;y<height;y=y+100){
 image(tile,x,y);
 }
}
image(tower,350,350);
fill(0,0,100);
rect(0,0,width,100);
fill(200,200,0);
textSize(60);
text(money + "$",600,50);
fill(255,0,0);
text(dmg,100,50);
fill(255,0,0);
rect(0,100,hp*8,30);
fill(255,255,255);
text(score,350,50);




  if(spawnEnemy == 1){
    strokeWeight(10);
    stroke(0,180,0);
    fill(0,255,0);
    image(alien,enemyX,enemyY);
    rect(enemyX,enemyY+130,enemyHealth/10,20);
    fill(0,0,255);
    rect(enemyX,enemyY+160,enemyAtc/5,20);
    enemyAtc--;
  }

  if(mousePressed){
    stroke(0,170,255);
    strokeWeight(10);
    line(width/2, height/2,bulletX,bulletY);
    sine.amp(0.7);
  }else{
    sine.amp(0);
  }

  if(mousePressed && mouseX>enemyX && mouseX<enemyX+100 && mouseY>enemyY && mouseY<enemyY+100){
    enemyHealth=enemyHealth-dmg;
  }

  if(enemyHealth<0){
    money=money+int(random(1,10));
    enemyX=random(0,700);
    enemyY=random(100,600);
    enemyHealth=1000;
    enemyAtc=500;
    enemyDmg++;
    explosion.play();
    score++;
  }

  if(enemyAtc<0){
    fill(0,255,0);
    line(enemyX,enemyY,width/2,height/2);
    hp=hp-enemyDmg;
    enemyAtc=500;
  }
  
  if(hp<0){
  background(0);
  textSize(100);
  fill(255);
  text("GAME OVER",250,300);
  enemyAtc=500;
  score=0;
  spawnEnemy=0;
  }

}
