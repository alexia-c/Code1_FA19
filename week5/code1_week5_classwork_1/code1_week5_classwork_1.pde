int size  = 50;
int rows, cols;
void setup(){
  size(500, 500);
  rows = height/size;
  cols = width/size;
  
  //for(int i= 0; i<=10; i+=2){
  //  if(i%2==0){
  //  println(i);
    //size = width /10;
  }
  
void draw(){
  background(255);
  
  for(int i = 0; i<10; i++){
    for(int j = 0; j<10; j++){
    float d = dist(mouseX,mouseY, i*size + size/2, j*size + size/2);
    
    //float s = map(d, 0, width, 0, 200);
    float s = map(d, 0, width, 5, size);
    
    //int r = int(map(i, 0, 10, 0, 255));
    //fill(r, 0, 50);
    
    int r = int(map(i, 0, 10, 0, 255));
    int b = int(map(j, 0, 10, 255, 0));
    fill(r, 0, b);
    ellipse(i*size + size/2, j*size + size/2, s, s);
    noStroke();
  }
}
}
