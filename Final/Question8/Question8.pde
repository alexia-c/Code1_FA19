int grid[][] = {{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, 
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, 
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0}, 
{0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0}, 
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
{1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1}, 
{1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1}, 
{0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0}};
int rows, cols, size; 
int xPos, yPos;


void setup(){
size(600, 600);
background(255); 
noStroke(); 
rows= 8;
cols= 11;
size= 10;

xPos = 200; 
yPos = 200; 
}

void draw(){
  
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
