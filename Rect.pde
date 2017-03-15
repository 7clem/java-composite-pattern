class Rect extends Abstract {
  
  Rect() {
    super();
  }
  
  PVector pos() {
     return new PVector(pos.x, pos.y); 
  }
  
  void show() {
    rectMode(CENTER);
    rect(pos.x, pos.y, r, r);
  }
  
  void add(Abstract a) {
    println("Cannot add subshapes to a Rect object.");
  }
  
}