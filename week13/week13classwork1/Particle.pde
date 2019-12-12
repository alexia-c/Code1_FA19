class Particle{
  int size = 10;
  PVector position, velocity, gravity;
  
Particle(){
 position = new PVector(mouseX, mouseY);
 velocity = new PVector(random(-4, 4), random(2,4));
 gravity = new PVector(0, .5);
}

//draw our particle

void display(){
  rect(position.x, position.y, size, size);
}

//update our position
void update(){
  position.add(velocity);
  velocity.add(gravity);
}

//bounce off sides
void bottomBounce(){
  velocity.y = -velocity.y;
}

void sideBounce(){
  velocity.x = -velocity.x;
}
  

}
