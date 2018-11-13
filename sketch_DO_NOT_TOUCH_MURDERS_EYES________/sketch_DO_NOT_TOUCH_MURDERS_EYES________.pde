int x;
int y;
int step = 110;
int d=100;
int d2=100;

void setup(){
size(1000,1000);
frameRate(100);

}

void draw(){
if(mousePressed){
strokeWeight(random(2,20));
background(random(0,255),random(0,255),random(0,255));
stroke(random(0,255),random(0,255),random(0,255));
d=int(random(50,250));
d2=int(random(50,250));
for( y=0; y<height; y=y+step ){
  for(x=0; x<width; x=x+step ){
    fill(random(0,255),random(0,255),random(0,255));
    ellipse(x,y,d,d2);
  }
}
}

step=int(random(100,300));

if(step<100){
step=100;
}
}
