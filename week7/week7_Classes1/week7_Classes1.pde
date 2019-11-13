Eye myEye;
Eye [] myEyes;

void setup(){
  size(800,600);
  myEye = new Eye();
  myEyes = new Eye[100];

for (int i = 0; i<100; i++){
  myEyes[i] = new Eye();

}

}


void draw(){
background(255, 217, 0);

myEye.drawEye();
myEye.move();

for (int i = 0; i<100; i++){

  myEyes[i].drawEye();
  myEyes[i].move();

}


}
