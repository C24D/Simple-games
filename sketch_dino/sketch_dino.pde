PImage dino;
int dinoY=400;
int dinocanjump = 1;
int dinojump = 35;
float cactusX = 1000;
float cactus2X = 1700;
float cactus3X = 2300;
float score = 0;

void setup() {
  size(800, 600);
  frameRate(100);
  dino=loadImage("dino.jpg");
}

void draw() {
  background(255,255,255);
  fill(10, 10, 10);
  image(dino,50,dinoY,dino.width/7, dino.height/5);
  rect(cactusX,400,50,100);
  rect(cactus2X,400,50,100);
  rect(cactus3X,400,50,100);
  text(int((score/10)),700,200);
  
  if(keyPressed && key == 'w' && dinocanjump==1){
  dinocanjump=0;
  }
  
  
  if(dinocanjump==0){
  dinoY=dinoY-dinojump;
  dinojump--;
  }
  
  if(cactusX>50 && cactusX<100 ||cactus2X>50 && cactus2X<100 ||cactus3X>50 && cactus3X<100 ){
    if((dinoY+150)<400){
    score++;
    }else{
    score=0;
    }
  }
  
  score++;
  cactusX=cactusX-3-(score/1000);
  cactus2X=cactus2X-3-(score/1000);
  cactus3X=cactus3X-3-(score/1000);
  dinoY=dinoY+9;
  
  if(cactusX<-50){
  cactusX=(int(random(900,2000)));
  }
  
  if(cactus2X<-50){
  cactus2X=(int(random(900,2000)));
  }
  
  if(cactus3X<-50){
  cactus3X=(int(random(900,2000)));
  }
  
  if(dinoY>400){
  dinoY=400;
  dinocanjump=1;
  dinojump=35;
  }
}
