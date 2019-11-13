int theta;

void setup(){
  size(800, 800);
  rectMode(CENTER);
  int theta = 0;
}

void draw(){
background(255);

noFill();

pushMatrix();
theta ++;
translate(width/2, height/2);
rotate(radians(theta));
scale(2);
rect(0 ,0, 100, 100);
popMatrix();


for(int i= 0; i<100; i++){
  pushMatrix();
translate(width/2, height/2);
  rotate(radians(-theta+i));
rect(0 ,0, i*5, i*5);
popMatrix();
}

}
