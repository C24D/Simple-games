import processing.sound.*;
SinOsc sine;
int oct = 1;

void setup(){
 size(1600,600);
 background(255);
 sine= new SinOsc(this);
 sine.play();
 frameRate(300);
}

void draw(){
  if(mousePressed){
  sine.amp(1);
  }else{
  sine.amp(0);
  }
  
  sine.freq(mouseX);  
 }
