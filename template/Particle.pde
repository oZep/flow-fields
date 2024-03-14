class Particle {
  PVector position;
  PVector velocity;
  float speed = 100;
  float constant = 0.0005 ; // angle and fade of noise
  float diameter = .8;
  float coloration = 4;
  float noiseValue;
  
  Particle(float X, float Y)
  {
    position = new PVector(X, Y);
    velocity = new PVector(0, 0);
  }
  
  void update() 
  {
    if (position.x > 0 & position.x < width || position.y > 0 & position.y > height) {
      noiseValue = noise(position.x * constant, position.y * constant);
      velocity = PVector.fromAngle(noiseValue * 4 * PI); // full rotation based on noise
      velocity.setMag(100);
      position.add(PVector.div(velocity, frameRate));
      display();
    }
  }
  
  void display() 
  {
    fill((noiseValue * 255 * coloration) % 255, 255, 255);
    noStroke();
    circle(position.x, position.y, diameter);
  }
}
