ArrayList<Peachy> myPeachys = new ArrayList<Peachy>();

Basket myBasket;
int score = 0; 

PImage img;

int sceneNumber = 0;

void setup(){
  size(500, 400); 

  myBasket = new Basket(); 
  
  for(int i =0; i<1; i++){
    myPeachys.add(new Peachy(random(0,width), random(0,height)));
  }
}

void draw(){
  
  switch(sceneNumber){
    case 0:
    scene0();
    break; 
    case 1: 
    scene1(); 
    break; 
    case 2: 
    scene2(); 
    break; 
  }
}

void scene0(){
  score = 0;
  img = loadImage("peachybg.png");
  background(img);
  fill(#FF5876);
  PFont f = createFont("Fipps", 50);
  String t= "PEACHY PIE";
  String t1= "Gather Peachies to make a Peachy pie!";
  String t2 = "You need 25 Peachies to make the pie.";
  String t3 = "Press Any Key to Start";
  textFont(f);
  textSize(54);
  textAlign(CENTER);
  text(t, 250, 150);
  fill(#311200);
  textSize(15);
  text(t1, 250, 260);
  text(t2, 250, 300);
  fill(#FF5876);
  textSize(14);
  text(t3, 250, 340);
  if(keyPressed){
  sceneNumber++;
  }
}

void scene1(){
  img = loadImage("peachybg.png");
  background(img); 
  
  myBasket.move(); 
  myBasket.checkBoundaries(); 
  
  for(int i = 0; i<myPeachys.size(); i++){
    Peachy tmp = myPeachys.get(i);
    
    tmp.drawPeachy(); 
    tmp.move(); 
   
  myBasket.drawBasket(); 
  
    if(dist(myBasket.xPos, myBasket.yPos + 140, tmp.xPos, tmp.yPos)<30){
      println("Peachy collected!!"); 
      myPeachys.remove(i); 
      score ++; 
    }
  }
  
  if(frameCount % 60 == 0){
    myPeachys.add(new Peachy(random(0,width), 0));
  }
  fill(#311200);
  PFont f = createFont("Fipps", 18);
  String s = "Peachies: ";
  textFont(f);
  textSize(14);
  text(s + score, 75, 25);
  
  if(score == 25){
    sceneNumber++;
  }
}
void scene2(){
  
  img = loadImage("peachybg1.png");
  background(img); 
  PFont f = createFont("Fipps", 50);
  String e= "You colllected 25 Peachies!!";
  String e1= "Here's your pie! *smiles* ";
  String e2 = "Click Here To Restart";
  textFont(f);
  textSize(20);
  textAlign(CENTER);
  fill(#FF5876);
  text(e, 250, 100);
  text(e1, 250, 150);
  textSize(14);
  text(e2, 250, 340);
  if(mousePressed){
    {
    sceneNumber = 0;
    }
  }
}
