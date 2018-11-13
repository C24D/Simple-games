float time;
int minutes;
int go;

void setup(){
size(500,500);
}

void keyPressed(){
if(key=='p' && go==1){
go=0;
}

if(key=='s' && go==0){
go=1;
}

if(key=='r'){
time=0;
go=0;
}

}

void draw(){
if(time==6000){
time=0;
minutes++;
}
background(0);
textSize(50);
text((time/100),200,200);
text(minutes,200,400);

if(go==1){
time=time+1.6;
}
}
