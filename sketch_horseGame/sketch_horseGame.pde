int birdY = 400;
float targetY = 100;
int targetX = 780;
int score = 0;

void setup(){
size(1000,800);
noStroke();
frameRate(120);
}


void draw(){
background(0,200,0);
fill(150,96,71);
rect(100,birdY,150,50);
fill(170,116,91);
rect(200,(birdY-5),80,60);
fill(40,10,10);
rect(170,(birdY+10),100,30);
fill(255,255,0);
rect(targetX,targetY,20,100);


  if(keyPressed && keyCode == UP){
birdY= birdY-5;
}

if(keyPressed && keyCode == DOWN){
birdY= birdY+5;
}



if(birdY>750){
birdY=750;
}

if(birdY<0){
birdY=0;
}

if(targetX<250){
  if(targetY<birdY && (targetY+100)>(birdY+50) ){
  score++;
  targetX=780;
  targetY=random(0,700);
  
}
}
  if(targetX<25){
  score=0;
  targetX=780;
  targetY=random(0,700);
  }


targetX=targetX-1-(score/3);
textSize(50);
fill(255,255,255);
text(score,900,100);

}
