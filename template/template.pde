import java.util.ArrayList;

float unit = 10;

ArrayList<Particle> particles = new ArrayList(500);

void setup() {
  noiseSeed(0);
  colorMode(HSB);
  size(720, 720);
  background(0);
  
}

void mouseClicked() 
{
  particles.add(new Particle(random(width), random(height)));
}

void draw()
{
  for ( Particle p : particles)
  {
    p.update();
  }
  if (keyPressed)
  {
    particles.add(new Particle(random(width), random(height)));
  }
}
