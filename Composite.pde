class Composite extends Abstract {
  ArrayList<Abstract> aggreg;
  
  Composite() {
    aggreg = new ArrayList<Abstract>();
  }
  
  void add(Abstract a) {
     aggreg.add(a); 
  }
  
  void show() {
    for (Abstract a : aggreg) {
       a.show(); 
    }
  }
} // end Composite