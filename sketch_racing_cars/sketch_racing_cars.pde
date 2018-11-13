PImage car1;
PImage car2;
int x1 = 100;
int x2 = 100;
int lap1 = 0;
int lap2 = 0;
int numlapwin = 10;
int spd1 = 50;
int spd2 = 50;

void setup(){
size(1000,600);
frameRate(200);
car1=loadImage("RedCar.jpg");
car2=loadImage("YellowCar.jpg");
}

void keyReleased(){
if(key == 'a' || key == 's'){
x1=x1+spd1;
}

if(key == 'l' || key == 'k'){
x2=x2+spd2;
}

if(key == 'r'){
lap1=0;
lap2=0;
spd1=50;
spd2=50;
x1=100;
x2=100;
}
}


void draw(){
background(150,150,150);
image(car1,x1,200);
image(car2,x2,400);

if(x1>1000){
x1=-100;
lap1++;
}

if(x2>1000){
x2=-100;
lap2++;
}

textSize(100);
fill(255,0,0);
text(lap1,100,100);
fill(255,255,0);
text(lap2,700,100);

if(lap1 == numlapwin){
textSize(130);
fill(255,0,0);
text("RED WINS",100,200);
spd1=0;
spd2=0;
}

if(lap2 == numlapwin){
textSize(130);
fill(255,255,0);
text("YELLOW WINS",100,200);
spd1=0;
spd2=0;
}
}
