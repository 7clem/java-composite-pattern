class CompositeShape extends AbstractShape {
  ArrayList<AbstractShape> shapes ;
  
  CompositeShape(float x, float y, float da) {
    super(x, y, da);
    shapes  = new ArrayList<AbstractShape>();
  }
  
  void add(AbstractShape a) {
     shapes .add(a);
  }
  
  PVector pos() {
    PVector pv = new PVector();
    for (AbstractShape ab : shapes ) {
       pv.add(ab.pos()); 
    }
    return pv;
  }
  
  protected void specificShow() {
    pushMatrix();
    rotate(angle);
    for (AbstractShape a : shapes ) {
       a.show(); 
    }
    popMatrix();
  }
  
  void update() {
    this.angle += deltaAngle;
     for (AbstractShape a : shapes ) {
       a.update(); 
    }
  }
} // end Composite