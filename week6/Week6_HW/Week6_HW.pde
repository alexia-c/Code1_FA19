int number = 150;
int size[] = new int[number];
float xPos[] = new float[number], yPos[] = new float[number];
float xSpeed[] = new float [number], ySpeed[] =new float[number];
color colors[] = new color[number];
int opacity [] = new int[number];
String sentence[] = {"I", "want", "a", "cat", "but", "I", "am", "allergic", "to", "them."};

void setup(){
 size(800, 800);
 
 for(int i = 0; i < number; i++){
   size[i] = int(random(15, 100));
   xPos[i] = random(size[i]/2, width-size[i]/2);
   yPos[i] = random(size[i]/2, height-size[i]/2);
   xSpeed[i] = random(-5, 7);
   ySpeed[i] = random(-5, 7);
   opacity[i] = 255;
   colors[i] = color(255, random(0, 175), random(128, 220));
   int a = int(random (0, 10));
   println(sentence[a]);

}
}

void draw(){
  background(0);
  
  for(int i = 0; i<number; i++){
    fill (colors[i], opacity[i]);
    xPos[i] += xSpeed [i];
    yPos[i] += ySpeed [i];
    
    if(xPos[i] < size[i]/2 || xPos[i] >= width-size[i]/2){
      xSpeed[i] = -xSpeed[i];
    }
    
    if(yPos[i] < size[i]/2 || yPos[i] >= height-size[i]/2){
      ySpeed[i] = -ySpeed[i];
    }
   float d = dist(mouseX, mouseY, xPos[i], yPos[i]);
   
   if(d < size[i]/2){
     opacity [i] = 0;
   }
   if(keyPressed){
     opacity [i] = 255;
   }
    ellipse(xPos[i], yPos[i], size[i], size[i]);
    noStroke();
  }
}
