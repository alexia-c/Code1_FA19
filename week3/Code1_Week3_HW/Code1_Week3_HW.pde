float xPos, yPos; 
int brushSize;
int n1, n2; 
int p;
int product_global; 
String multiplicationSentence; 
float xCircle, yCircle; 
int size = 50;
int r, g, b; 

void setup() {
  size(800, 800);
  xCircle = width/2; 
  yCircle = height/2;
  background(255);
  xPos = width/2; 
  yPos = height/2;
  brushSize = b; 
  noStroke();
  
  n1 = int(random(0,1000)); 
  n2 = int(random(0,1000)); 

  
}
void returnAString(String string1, String string2){
  println(string1 + "\n" + string2); 
  rect(width/2, height/2, 50, 50); 
} 
void draw() {
fill(b, g, r); 
   r = int(map(calcDist(xCircle, yCircle), 0, width, 200, 255));  //converting float to int
   b = int(map(mouseY, 0, height, 200, 255));
   g = int(map(mouseX, 0, height, 200, 255));
   
   
float b = random (200, 400);
float c = random (200, 400);

if (calculateDistance(xPos, yPos) < size) {
    ellipse(xPos, yPos, b, b);
  }else{
    ellipse(xPos, yPos, c, c); 
  }

  println(calculateDistance(xPos, yPos)); 
  
  float r1 = random (200, 255);
  float r2 = random (200, 255);
  float r3 = random (200, 255);
   if(mousePressed){
    fill(r1, r2, r3); 
    rect(mouseX, mouseY, 50, 50, 20); 
    
product_global = multiplyNumbers (n1, n2);

multiplicationSentence = str(n1) + " * " + str(n2) + "=" + str(product_global);
text(multiplicationSentence, width/5, height/5);
textSize(40);
   }
}
float calcDist(float x, float y){
  float dist = sqrt(sq(x - mouseX)+sq(y - mouseY));
  return dist; 
}

float calculateDistance(float shapeX, float shapeY) {
  float dist = sqrt(sq(shapeX - mouseX) + sq(shapeY - mouseY));
  return dist;
}

int multiplyNumbers(int num1, int num2){
  int productLocal = num1 * num2;
  return productLocal;
  
}
