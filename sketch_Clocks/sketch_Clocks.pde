void setup(){
size(500,500);
}

void draw(){
float alphaS =radians(second()*6-90);
float xSec = 200 * cos(alphaS) + width/2;
float ySec = 200 * sin(alphaS) + height/2;

float alphaM =radians(minute()*6-90);
float xMin = 150 * cos(alphaM) + width/2;
float yMin = 150 * sin(alphaM) + height/2;

float alphaH =radians(hour()%12 * 30 - 90);
float xH = 120 * cos(alphaH) + width/2;
float yH = 120 * sin(alphaH) + height/2;


background(0,0,0);
fill(#FFD500);
textSize(30);
text(day()+" "+month(),100,300);
textSize(20);
text(hour()+":"+minute()+":"+second(),0,30);
noFill();
stroke(#FFD500);
strokeWeight(15);
ellipse(width/2,height/2,width-20,height-20);
strokeWeight(5);
line(width/2,height/2,xSec,ySec);
strokeWeight(10);
line(width/2,height/2,xMin,yMin);
strokeWeight(15);
line(width/2,height/2,xH,yH);
}
