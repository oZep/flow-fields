
float x = 0.0;

void setup() {
  size(720,360);
  
}

void draw() {
  float y = noise(x) * height;
  line(x, y, x, height);
  x++;
}
