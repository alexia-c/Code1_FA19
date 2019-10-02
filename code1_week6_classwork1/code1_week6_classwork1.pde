int number = 100;
int size[] = new int[number];
float xPos[] = new float[number], yPos[] = new float[number];
float xSpeed[] = new float [number], ySpeed[] =new float[number];
color colors[] = new color[number];
int opacity [] = new int[number];

void setup(){
 size(800, 800);
 
 for(int i = 0; i < number; i++){
   size[i] = int(random(25, 100));
   xPos[i] = random(size[i]/2, width-size[i]/2);
   yPos[i] = random(size[i]/2, height-size[i]/2);
   xSpeed[i] = random(-5, 5);
   ySpeed[i] = random(-5, 5);
   opacity[i] = 255;
   colors[i] = color(100, random(120, 255), random(100, 200));

}
}

void draw(){
  background(255);
  
  for(int i = 0; i<number; i++){
    fill (colors[i], opacity[i]);
    xPos[i] += xSpeed [i];
    yPos[i] += ySpeed [i];
    
    //x boundaries
    
    if(xPos[i] < size[i]/2 || xPos[i] >= width-size[i]/2){
      xSpeed[i] = -xSpeed[i];
    }
    
    //y boundaries
    
    if(yPos[i] < size[i]/2 || yPos[i] >= height-size[i]/2){
      ySpeed[i] = -ySpeed[i];
    }
    //check to see if mouse position is within radius of ellipse
   float d = dist(mouseX, mouseY, xPos[i], yPos[i]);
   
   if(d < size[i]/2){
     opacity [i] = 0;
     //colors[i] = color(255,0);
   }
   if(keyPressed){
     opacity [i] = 255;
   }
    ellipse(xPos[i], yPos[i], size[i], size[i]);
  }
}
