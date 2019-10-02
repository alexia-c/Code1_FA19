int a = 0;
int b = 0;
int s = 25;
void setup(){
  size(500, 500); 
  background(#9DD5FF);
  stroke(#FF83BD); 
  strokeWeight(7);
}

void draw(){
  int a1 = a + s;
  int b1 = b + s;
  if (random(2) < 0.75){
    line(a1, b1, a, b);
  } else{
    line(a, b1, a1, b);
  }
a = a + s;
if (a > width){
  a = 0;
  b = b + s;
  }
}
