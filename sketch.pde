
AbstractShape rootDrawing;

AbstractShape randomShape(float x, float y, float da) {
  AbstractShape shape = null;
  int type = int(random(3));
  switch(type) {
     case(0):
      shape = new Rect(x, y, da); break;
     case(1):
       shape = new Triangle(x, y, da); break;
     case(2):
       shape = new Circle(x, y, da); break;
     default:
       println("i = " + type + " and shapes in range [0:2]");
  }
  return shape;
}

void setup() {
    size(400, 400);
    rootDrawing = new CompositeShape(width/2, height/2, 0.001);
    
    float r = 100;
    
    for (float a=-2*PI/3; a < PI; a += 2 * PI / 3) {
      float x = r * cos(a);
      float y = r * sin(a);
      AbstractShape system = new CompositeShape(x, y, -0.002);
      for (int i = 0 ; i < 10; i++) {
          float dr = random(10, 30);
          float dx = dr * cos( random(-PI, PI) );
          float dy = dr * sin( random(-PI, PI) );
          float da = 0.006;
          system.add(randomShape(dx, dy, da));  
      }
      rootDrawing.add(system);
    }
}

void draw() {
  background(100);
  rootDrawing.show();
  rootDrawing.update();
}