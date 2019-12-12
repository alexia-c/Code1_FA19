PVector position, velocity, acceleration, originalVelocity;
int size = 50;

void setup(){
  size(600, 600);
  position = new PVector(width/2, height/2);
  velocity = new PVector(random(-2, 2), random(-3, 3));
  acceleration = new PVector(.1, .1);
  originalVelocity = velocity;
  
}

void draw(){
  background(255);
  position.add(velocity);
  velocity.add(acceleration);
  ellipse(position.x, position.y, size, size);
  
  if(position.x > width - size/2 || position.x < size/2){
    velocity.x = -velocity.x;
    acceleration.x = -acceleration.x;

  }
  if(position.y > width - size/2 || position.y < size/2){
    velocity.y = -velocity.y;
    //velocity.y = originalVelocity.y;
    acceleration.y = -acceleration.y;
  }
}
