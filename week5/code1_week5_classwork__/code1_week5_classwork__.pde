int size;

void setup(){
  size(600, 600);
  //for(int i= 0; i<=10; i+=2){
  //  if(i%2==0){
  //  println(i);
    size = width /10;
  }
  
void draw(){
  background(0);
  
  for(int i = 0; i<10; i++){
    float d = dist(mouseX,mouseY, i*size +size/2, height);
    float s = map(d, 0, width, 0, 200);
    
    int r = int(map(i, 0, 10, 0, 255));
    fill(r, 0, 50);
    ellipse(i*size + size/2, height/2, size + s , size + s);
  }
}
