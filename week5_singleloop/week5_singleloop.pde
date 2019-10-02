int size = 50;
int r;
int b;
void setup(){
  size(500, 500);
  }
  
void draw(){
  background(0);
  
  for(int i = 0; i<=500; i+=100){
    
    r = int(map(i, 0, 72, 138, 155));
    b = int(map(i, 0, 190, 180, 255));
    fill(r, b, 0);
    rect(i, 50, 50, 50);
    
    rect(i*mouseX/100, i*mouseY/100, 50, 50, 5);
    noStroke();
  }
}
