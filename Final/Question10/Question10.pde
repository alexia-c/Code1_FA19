ArrayList<Invader> myInvaders = new ArrayList<Invader>();

//Invader myInvader;

void setup() {
size(600, 600); 
noStroke(); 
//myInvaders = new Invader();
for(int i =0; i<1; i++){
    myInvaders.add(new Invader(random(0,width), random(0,height)));
}
}

void draw() {
background(255); 

 for(int i = 0; i<myInvaders.size(); i++){
    Invader tmp = myInvaders.get(i);
tmp.display();
tmp.move();
 }
if(frameCount % 60 == 0){
    myInvaders.add(new Invader(random(0,width), 0));
}
}

class Invader {
int grid[][] = {{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, 
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, 
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0}, 
{0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0}, 
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
{1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1}, 
{1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1}, 
{0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0}};
int rows, cols, size; 
float xPos, yPos;
Invader(float _xPos, float _yPos) {
xPos = _xPos;
yPos = _yPos;
rows = 8;
cols = 11;
size = 10;
}

void display() {
for(int i = 0; i < rows; i++){
for(int j = 0; j < cols; j++){
if(grid [i][j] == 1){
fill(0);
}else{
fill(255);
}
rect(j * size + xPos, i * size + yPos, size, size);
}  
}
}
void move() {
float r = random(0, 1);
if(r <= .25){
xPos++; 
} 
}
}
