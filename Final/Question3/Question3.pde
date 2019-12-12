float xPos, yPos; 
float r, g, b; 

void setup() {
size(600, 600); 
smooth();  
noStroke();
}

void draw() {

//draws background
for (int i = 0; i < width; i++) {
for (int j = 0; j < height; j++) {
float r = map(i, 91, height, 255, 0);
float g = map(j, 33, width, 170, 0);
stroke(r, g, 175);
point(i, j);
}
}

xPos = sin(radians(second()))*width;
yPos = sin(radians(second()))*height; 

ellipse(xPos, yPos, 100, 100);
}
//void setup() {
//  size(600, 600);
//  for (int i = 0; i < width; i++) {
//    for (int j = 0; j < height; j++) {
//      float r = map(i, 0, width, 0, 255);
//      float g = map(j, 0, height, 0, 255);
//      stroke(r, g, 175);
//      point(i, j);
//    }
//  }
//}
