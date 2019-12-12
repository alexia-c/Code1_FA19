int numStrings = 7; 
float[] stringsX= new float[numStrings]; 
float[] stringsY = new float[numStrings]; 
String[] s = new String[numStrings];

void setup() {

size(700, 100); 
smooth(); 

s[0] = "Hello";
s[1] = "is";
s[2] = "it";
s[3] = "me";
s[4] = "you're";
s[5] = "looking";
s[6] = "for";

int spacing = width / numStrings; 
for (int i=0; i<numStrings; i++) {
stringsX[i] = 50 + i*spacing; 
stringsY[i] = 50;
}
}

void draw() {
background(255); 
for (int i=0; i<numStrings; i++){
if (dist(mouseX, mouseY, stringsX[i], stringsY[i])<50){
 fill(255,0,0);
 text(s[i],stringsX[i],stringsY[i]);
}else{
 fill(0);
 text(s[i],stringsX[i],stringsY[i]);
}
}
}
