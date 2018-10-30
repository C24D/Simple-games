
float targetY = 300;
float bowY = 0;
float score = 0;
int arrowX = 50;
int arrowfired = 0;
int arrowY = 0;
float bowSpeed = 1;

void setup(){
size(1600,800);
noStroke();
frameRate(120);
}

void draw(){
  background(0,125,255);
  fill(160,81,61);
  rect(50,bowY,20,200);
  rect(10,bowY,40,15);
  rect(10,(bowY + 185),40,15);
  fill(0,0,0);
  rect(10,(bowY + 15),5,170);
  rect(50,(bowY+100),20,10);
  fill(0,255,0);
  rect(0,600,1600,200);
  fill(255,255,0);
  ellipse(1400,50,200,200);
  textSize(50);
  fill(255,255,255);
  text(int(score),400,100);
  
  bowY=bowY+bowSpeed;
  
  if(bowY > 400 ){
  bowY=400;
  bowSpeed=-1-(score/4);
  }
  
  if(bowY < 0){
  bowY=0;
  bowSpeed=1+(score/4);
  }
  
  
  if(mousePressed && arrowfired == 0){
  arrowY=int(bowY)+100;
  arrowfired = 1;
  }
  
  if(arrowfired == 1){
  arrowX=arrowX + 30;
  fill(0,0,0);
  rect(arrowX,arrowY,100,10);
  fill(255,255,255);
  triangle((arrowX+100),arrowY,(arrowX+100),(arrowY + 10),(arrowX+120),(arrowY + 5));
  }
  
  if(arrowX > 1600){
  arrowfired=0;
  arrowX=50;
  }
  
  
  if(arrowX==1550 ){
  if( arrowY > targetY && arrowY+ 10 < (targetY+100)){
    score++;  
    targetY = random(100,400);
  } else{
    score = 0;
    targetY = random(100,400);
  }
  }
  
  
  
  fill(255,0,0);
  rect(1550,targetY,50,100);
  
}
