class Triangle extends Abstract {
  
  
  Triangle() {
    super();
  }
  
  PVector pos() {
     return new PVector(pos.x, pos.y); 
  }
  
  void show() {
    float angles[] = {0, 2*PI/3, -2*PI/3}; 
    float x, y;
    
    beginShape();
    for (int i = 0; i< angles.length; i++) {
     x = pos.x + r * cos(angles[i]);
     y = pos.y + r * sin(angles[i]);
     vertex(x, y);
    }
    endShape(CLOSE);
  }
  
  void add(Abstract a) {
    println("Cannot add to a leaf object.");
  }
  
}