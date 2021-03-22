Ventana v;

Ventana ventana;

void setup() {
  size(100, 100);
  surface.setVisible(false);
  v = new Ventana();   
}

void draw() {
  v.bounce();
}
