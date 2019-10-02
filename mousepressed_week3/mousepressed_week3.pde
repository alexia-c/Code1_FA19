int brushSize;

void setup(){
  size(800, 800);
  background(255);
  int b = int (random(50));
  brushSize = b; 
}

void draw(){
  float c1 = random (200, 255);
  float c2 = random (200, 255);
  float c3 = random (200, 255);
  if(mousePressed){
    fill(c1, c2, c3); 
    triangle(mouseX, mouseY, mouseX, mouseY, brushSize, brushSize); 
  }
}
