ArrayList<Ventana> ventanas = new ArrayList<Ventana>();

Ventana ventana;

void setup() {
  size(100, 100);
  surface.setVisible(false);
  ventanas.add(new Ventana());   
}

void crearVentana() {
  ventanas.add(new Ventana());   
}
