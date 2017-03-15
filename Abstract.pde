abstract class Abstract {
  PVector pos;
  float r;
  
  Abstract() {
    pos = new PVector( random(width), random(height) );
    r = 10;
  }
  
  abstract void show();
  abstract void add(Abstract a);
  abstract PVector pos();
}