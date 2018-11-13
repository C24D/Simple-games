// Controls : 
//UP - makes ellipses bigger int the y axis
//DOWN - makes ellipses smaller in the y 
//RIGHT - makes ellipses bigger in the x axis
//LEFT - makse ellipses smaller in the x axis
//q - more RED
//a - less RED
//w - more BLUE
//s - less BLUE
//e - more GREEN
//d - less GREEN
//r - makes background current colour


int elx = 10;
int ely = 10;
int red = 0;
int blu = 0;
int grn = 0;
int pic = 0;
int help = 0;
int figure = 1;

void setup(){
size(1550,850);    // opens screen
noStroke();        //removes black outlines
frameRate(120);
}

void draw(){
  
    if(elx<=0){        
    elx=1;
    }
    
    if(ely<=0){
    ely=1;
    }
    
    if(red>=256){
    red=255;
    }
    
    if(red<=0){
    red=0;
    }
    
    if(grn>=256){
    grn=255;
    }
    
    if(grn<=0){
    grn=0;
    }
    
    if(blu>=256){
    blu=255;
    }
    
    if(blu<=0){
    blu=0;
    }
    
    if(help==1){
    fill(red,grn,blu);
    rect(60,0,40,100);
    fill(255,255,255);
    rect(0,0,60,100);
    fill(red,0,0);
    text(red,10,10);
    fill(0,grn,0);
    text(grn,10,40);
    fill(0,0,blu);
    text(blu,10,70);
    }
    
    
     if(keyPressed && keyCode == UP){   // deals with ellipses x and y going up and down
    ely++;
    }
    
     if(keyPressed && keyCode == DOWN){
    ely=ely-1;
    }
    
    if(keyPressed && keyCode == RIGHT){
    elx++;
    }
    
     if(keyPressed && keyCode == LEFT){
    elx=elx-1;
    }
    
    if(keyPressed && key == 'q'){
    red=red+1;
    }
    
    if(keyPressed && key == 'a'){
    red=red-1;
    
    } 
    if(keyPressed && key == 'w'){
    grn=grn+1;
    
    } 
    if(keyPressed && key == 's'){
    grn=grn-1;
    
    } 
    if(keyPressed && key == 'e'){
    blu=blu+1;
    
    } 
    if(keyPressed && key == 'd'){
    blu=blu-1;
    }
    
       if(keyPressed && key == 'r'){
       background(red,grn,blu);
       }  
       
       if(keyPressed && key == 'f'){
       background(255,255,255);
       } 
       
       if(keyPressed && key == 'x'){
       help = 1;
       }
       
       if(keyPressed && key == 'c'){
       fill(red,grn,blu);
       rect(0,0,100,100);
       help = 0;
       }
       
       
         if(keyPressed && key == '1'){
       figure = 1;
       }
         if(keyPressed && key == '2'){
       figure = 2;
       }
       
       
       if(keyPressed && key == 'v'){
       fill(red,grn,blu);
       ellipse(random(0,1550),random(0,850),elx,ely);
       }

       
    if(mousePressed && figure == 1){
      fill(red,grn,blu);
      ellipse(mouseX,mouseY,elx,ely);
    }
    
    if(mousePressed && figure == 2){
      fill(red,grn,blu);
      rect(mouseX,mouseY,elx,ely);
    }
    
    
    if(keyPressed && keyCode == UP){
    ely++;
    }
    
     if(keyPressed && keyCode == DOWN){
    ely=ely-1;
    }
    
    if(keyPressed && keyCode == RIGHT){
    elx++;
    }
    
     if(keyPressed && keyCode == LEFT){
    elx=elx-1;
    }
    
    
    if(keyPressed && key == 'z'){
    save(pic+"test.jpg");
    pic++;
    }
    
}
