PImage spedometer;

int spd = -260;

void setup(){
size(225,225);
spedometer=loadImage("Meter.jpg");
frameRate(120);
}

void keyReleased(){
 if(key==' '){
 spd+=50;
 }

}

void draw(){
background(0,0,0);
image(spedometer,0,0);

float alphaSpd =radians(spd);
float xSpd = 75 * cos(alphaSpd) + width/2;
float ySpd = 75 * sin(alphaSpd) + height/2;

stroke(255,0,0);
strokeWeight(10);
line(width/2,height/2,xSpd,ySpd);


spd=spd-1;

if(spd<-225){
spd=-225;
}
if(spd>45){
spd=45;
}

}
