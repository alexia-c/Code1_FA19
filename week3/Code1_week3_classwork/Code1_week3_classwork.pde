float xPos, yPos; //list them on one line. data type varname, varname, varname;
int size = 50;
int r, g, b;

void setup() {
size (800, 800);
xPos = width/2;
yPos = height/2;
noStroke();
}

void draw() {
ellipse (100, 100, size, size);

println( calcDist(xPos, yPos) );

// if my mouse is inside of my ellipse
if(calcDist(xPos,yPos) < size/2){
println("inside circle");
background(255,0,0);
}else{
background(0,255,0);
}
fill(r, g, b);
r = int(map(mouseX, 0, width, 100, 255)); //converting float
b = int(map(mouseY, 0, width, 100, 255));
ellipse(xPos, yPos, size, size);
//make sure to debug your conditional, and make sure it is Working before you continue to work


}

float calcDist(float x, float y) { // dont really need mouse position but were using mouse x and mouse y
float dist = sqrt(sqrt( x - mouseX)+ sqrt(y - mouseY));
return dist;
} 
// processing NaN return means that processing doesnt know whats being returned could be imaginary number or something it doesnt udnerstand 
// unexpected float token means that you havent closed your loop with bracket////distance = dist(mouseX, mouseY, ellipseX, ellipseY);
////formula = sqrt((x - mouseX)^2) - ((y - mouseY)^2)

//float xPos, yPos;
//int size = 50;

//void setup(){
////println(addition(4, 5));

////println(multiply(5,9));

//size (800, 800);
//xPos = width/2;
//yPos = height/2;
//noStroke();
//}

//void draw(){
//  ellipse(xPos, yPos, size, size);
//  println(calcDist(xPos, yPos));
  
//  //if my mouse is inside of my ellipse
//  if(calcDist(xPos, yPos) < size/2){
//  println("inside circle");
//  }
//  //then change my background color
  
  
//}

//float calcDist(float x, float y){
//  float dist = sqrt(sq(x - mouseX)+sq(y - mouseY));
//  return dist;
//}
 
////int multiply (int n1, int n2){
////int product;

////product= n1 * n2;
////return product;


////int addition(int n1, int n2){
////  int sum;
  
////  sum = n1 + n2;
////  return sum;
