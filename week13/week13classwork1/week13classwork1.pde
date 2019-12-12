ArrayList <Particle> myParticles;

void setup(){
  size(600, 600);
  myParticles = new ArrayList <Particle>();
}

void draw(){
  background(255);
  for(int i = 0; i<myParticles.size(); i++){
    Particle p = myParticles.get(i);
    p.display();
    p.update();
    
  //bottom bounce
  
    if(p.position.y > height - p.size/2){
    p.bottomBounce();
    }
    if(p.position.x > width - p.size/2 || p.position.x < p.size/2){
      p.sideBounce();
    }
    
  //removes a rect when it gets higher than
  //the height of our canvas
  
    if(p.position.y < p.size/2){
      myParticles.remove(i);
    }
  }
}

void mousePressed(){
  myParticles.add(new Particle());
  
}
