class Composite extends Abstract {
  ArrayList<Abstract> aggreg;
  float rot;
  
  Composite() {
    super();
    aggreg = new ArrayList<Abstract>();
    pos = pos == null ? new PVector() : pos;
    this.rot = rot;
  }
  
  void add(Abstract a) {
     aggreg.add(a);
  }
  
  PVector pos() {
    PVector pv = new PVector();
    for (Abstract ab : aggreg) {
       pv.add(ab.pos()); 
    }
    return pv;
  }
  
  void show() {
    rotate(rot);
    translate(pos.x, pos.y);
    for (Abstract a : aggreg) {
       a.show(); 
    }
    
    
  }
} // end Composite