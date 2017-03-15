class Circle extends AbstractShape {
  float r = 10;
  
  Circle(float x, float y, float da) {
    super(x, y, da);
  }
  
  protected void specificShow() {
    fill(100, 255, 0);
    ellipse(0, 0 , r, 2*r);
  }
  
}