PVector ubicacion; 
PVector velocidad; 
PVector gravedad; 

void setup () {
  size(128, 128);
  background(255, 255, 0);
  
  ubicacion = new PVector(100, 100);
  velocidad = new PVector(7, 8);
  gravedad = new PVector(0, 0.5);
  
}

void draw() {
  ubicacion.add(velocidad);
  velocidad.add(gravedad);
  
  if ( ( ubicacion.x > displayWidth - width ) || ( ubicacion.x < 0 ) ) {
     velocidad.x *= -1;
  }
  
  if ( ubicacion.y > displayHeight  - height ) {
    velocidad.y *= -0.90; 
  }

  surface.setLocation( int( ubicacion.x ), int( ubicacion.y ) );
}
