class Circle extends Abstract {
  float r = 10;
  
  Circle() {
    super();
  }
  
  PVector pos() {
     return new PVector(pos.x, pos.y); 
  }
  
  void show() {
    ellipse(pos.x, pos.y, 2*r, 2*r);
  }
  
  void add(Abstract a) {
    println("Cannot add to a leaf object.");
  }
  
}