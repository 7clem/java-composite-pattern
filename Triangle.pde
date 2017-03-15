class Triangle extends AbstractShape {
  
  Triangle(float x, float y, float da) {
    super(x, y, da);
  }
  
  protected void specificShow() {
    float angles[] = {0, 2*PI/3, -2*PI/3}; 
    float x, y;
    
    fill(255, 0, 100);
    beginShape();
    for (int i = 0; i< angles.length; i++) {
     x = r * cos(angles[i]);
     y = r * sin(angles[i]);
     vertex(x, y);
    }
    endShape(CLOSE);
  }
  
}