class Rect extends AbstractShape {
  
  Rect(float x, float y, float da) {
    super(x, y, da);
  }
  
  protected void specificShow() {
    rectMode(CENTER);
    fill(0, 100, 255);
    rect(0, 0, r, r);
  }
}