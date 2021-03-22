Ventana[] ventanas;
int numVentanas = 10;

void setup() {
  size(100, 100);
  surface.setVisible(false);
  
  String[] args = {"ventana"};
  ventanas = new Ventana[numVentanas];
  
  for (Ventana v : ventanas) {
    v = new Ventana();
    PApplet.runSketch(args, v);
    delay(1000);
  }
}
