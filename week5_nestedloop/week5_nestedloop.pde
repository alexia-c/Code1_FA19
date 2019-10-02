int size = 45;
int rows, cols;
void setup(){
  size(500, 500);
  rows = height/size;
  cols = width/size;
  
  }
  
void draw(){
  background(0);
  
  for(int i = 0; i<10; i++){
    for(int j = 0; j<10; j++){
    float d = dist(mouseX,mouseY, i*size + size/2, j*size + size/2);
    
    float s = map(d, 0, width, 5, size);
    
    int r = int(map(i, 0, 72, 238, 255));
    int b = int(map(j, 0, 10, 255, 0));
    fill(r, 0, b);
    rect(i*size + size/2, j*size + size/2, s, s, 5);
    noStroke();
  }
}
}
