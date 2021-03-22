Ventana[] ventanas;
int numVentanas = 5;

void setup() {
  size(100, 100);
  surface.setVisible(false);
  ventanas = new Ventana[numVentanas];
  
  for(int i = 0; i < numVentanas; i++) {
    ventanas[i] = new Ventana();
  }  
}

void draw() {
  for(int i = 0; i < numVentanas; i++) {
    ventanas[i].bounce();
  } 
}
