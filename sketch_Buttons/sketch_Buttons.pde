int X = 100;
int Y = 100;
int H = 100;
int W = 100;

int X2 = 300;
int Y2 = 300;
int H2 = 100;
int W2 = 100;


void setup (){
size(700,600);
frameRate(120);
}

void draw(){
boolean overButton = (mouseX>X)&&(mouseX<(X+W))&&(mouseY>Y)&&(mouseY<(Y+H));
boolean overButton2 = (mouseX>X2)&&(mouseX<(X2+W2))&&(mouseY>Y2)&&(mouseY<(Y2+H2));
background(0,0,0);
if(overButton==true && mousePressed || overButton2==true && mousePressed){
fill(255,0,0);
}else if(overButton || overButton2){
fill(0,255,0);
}else{
fill(0,0,255);
}


rect(X,Y,W,H);
rect(X2,Y2,W2,H2);
}
