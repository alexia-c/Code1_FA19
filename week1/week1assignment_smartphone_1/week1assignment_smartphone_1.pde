void setup(){
  size(500,500); 
  background(215, 215, 215);
  noStroke();
  smooth();

  frameRate(7);

  println(width);
  println(height);
}

void draw(){ 
  background(215, 215, 215);
  point(width/2, height/2);
  
  float cc = random( 202, 255);
  float cc1 = random(202,255);
  float cc2 = random(202,255);
  
 if (mousePressed) {
    fill (cc, cc1, cc2);
  } 
  else{ 
    fill (255, 255,255);
}
  //base phone
  noStroke();
  //fill(255, 255, 255);
  //rounded rectangle (a, b, c, d ,r)  r = float: radii for all four corners
  rectMode(CENTER);
  rect(width/2, height/2, 240, 420, 20);
  
  //speaker1
  noStroke();
  fill(140, 140, 140);
  rect(248, 55, 60, 5, 7); //(x,y, width, height)
  
 
  
  //camera
  noStroke();
  fill(23, 23, 23);
  ellipse(194, 56, 12, 12); 
  
  noStroke();
  fill(0, 38, 90);
  ellipse(194, 56, 4, 4);
  
  noStroke();
  fill(255, 255, 255);
  ellipse(192, 54, 2, 2); 
  
  //screen
  noStroke();
  fill(245, 205, 219);
  rectMode(CENTER);
  rect(width/2, height/2, 213, 355, 10);
  
  //speaker2
  noStroke();
  fill(140, 140, 140);
  rect(248, 445, 60, 5, 7); 
  
  //homebutton
  noStroke();
  fill(255, 255, 255);
  rect(248, 415, 20, 5, 7); 
  
  //time, date, weather
  //create a variable for the string, in this case "s"
  //to change the font, PFont must be used to create variable(f)
  //PFont f = createFont ("FontName", Fontsize);
 
  float cc3 = random( 0, 255);
  float cc4 = random(0,255);
  float cc5 = random(0,255);
  
 if (mousePressed) {
    fill (cc3, cc4, cc5);
  } 
  else{ 
    fill (255, 255,255);
}
  PFont f = createFont("Arial", 35);
  String s = "11:49";
  //fill(255, 255, 255);
  textFont(f);
  textSize(35);
  //text will display when using text (variable(s), x, y)
  text(s, 200, 180); 
  
  float cc6 = random( 1, 255);
  float cc7 = random(1,255);
  float cc8 = random(1,255);
  if (mousePressed) {
    fill (cc6, cc7, cc8);
  } 
  else{ 
    fill (255, 255, 255);
}
  PFont f1 = createFont("Arial", 14);
  String s1 = "Wed, Sep 4  84°F";
  //fill(255, 255, 255);
  textFont(f1);
  textSize(14);
  text(s1, 195, 205); 
  
  //battery percentage
   
  if (mousePressed) {
    fill (255, 0, 0);
  } 
  else{ 
    fill (255, 255, 255);
}
  //fill(255, 255, 255);
  rect(322, 81, 13, 6); //(x,y, width, height)
  rect(317, 81, 9, 3);
  
  PFont f2 = createFont("Arial", 10);
  String s2 = "100%";
  fill(255, 255, 255);
  textFont(f2);
  textSize(10);
  text(s2, 329, 84);
  
  //apps
  
  float r1 = random( 32, 40);
  float r2 = random(31, 39);
  float r3 = random(30, 38);
  float r4 = random(33, 41);
  float r5 = random(34, 42);
  float r6 = random(33, 43);
  float r7 = random(32, 41);
  float r8 = random(35, 44);
  
  fill(234, 102, 102);
  rect(177, 320, r1, r1, 10);
  
  fill(101, 124, 245);
  rect(226, 320, r2, r2, 10);
  
  fill(125, 216, 125);
  rect(275, 320, r3, r3, 10);
  
  fill(242, 221, 113);
  rect(324, 320, r4, r4, 10);
  
  fill(137, 214, 227);
  rect(177, 370, r5, r5, 10);
  
  fill(247, 157, 82);
  rect(226, 370, r6, r6, 10);
  
  fill(237, 110, 144);
  rect(275, 370, r6, r6, 10);
  
  fill(191, 147, 222);
  rect(324, 370, r6, r6, 10);
  
  println(r1);
  println(r2);
  println(r3);
  println(r4);
  println(r5);
  println(r6);
  println(r7);
  println(r8);
}
