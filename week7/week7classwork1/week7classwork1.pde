Ship myShip;
Ship [] myShips;
Player myPlayer; //naming the instance from our template

void setup(){
  size(800,600);
  myShip = new Ship();
  myPlayer = new Player();
  myShips = new Ship[20];

for (int i = 0; i<20; i++){
  myShips[i] = new Ship();

}

}


void draw(){
background(255);

myShip.drawShip();
myShip.move();

myPlayer.drawPlayer();
myPlayer.move();
myPlayer.CheckbBoundaries

for (int i = 0; i<20; i++){
  myShips[i].drawShip();
  myShips[i].move();
  
  //if out player position is wthin the radius
  //of our enemy ship position
  if(dist(myPlayer.xPos, myPlayer.yPos, myShips[i].xPos, myShips[i].yPos)<25){
  println("collision detected: " + i);
  //append the ship array
  }
}
}
