
Abstract rootdrawing;

void setup() {
    size(500, 500);
    rootdrawing = new Composite();
    
    for (int i = 0 ; i < 100; i++) {
        Abstract shape = null;
        int type = int(random(3));
        switch(type) {
           case(0):
            shape = new Rect(); break;
           case(1):
             shape = new Triangle(); break;
           case(2):
             shape = new Circle(); break;
           default:
             println("i = " + i + " and shapes in range [0:2]");
        }
        rootdrawing.add(shape);    
    }
}

void draw() {
  rootdrawing.show();
}