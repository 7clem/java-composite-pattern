abstract class AbstractShape {
  PVector pos;
  float r;
  float angle;
  float deltaAngle;
  
  AbstractShape(float x, float y, float deltaAngle) {
    this.deltaAngle = deltaAngle;
    pos = new PVector( x, y );
    r = 10;
  }
  
  protected abstract void specificShow();
  
  void show() {
    pushMatrix();
    //rotate(angle);
    translate(pos.x, pos.y);
    rotate(angle);
    specificShow();
    popMatrix();
  }
  
  // redefine where needed
  PVector pos() {
    return new PVector(pos.x, pos.y);
  }
  
  void add(AbstractShape a) {
    assert false : "Cannot add subshapes to anything but a Composite.";
  }
  
  void setAngle(float a) {
      this.angle = a;
  }
  
  void update() {
     angle += deltaAngle;
  }
  
}