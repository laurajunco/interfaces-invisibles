import java.awt.Frame;
import java.awt.event.WindowEvent;
import java.awt.event.WindowAdapter;

class Ventana extends Frame {
  int x, y, w, h;
  PVector ubicacion; 
  PVector velocidad; 
  boolean bounce = false;
  
  Ventana() {
    w = 80;
    h = 80;
    ubicacion = new PVector(0, 0);
    velocidad = new PVector(7, 8);
    ubicacion.x = random(displayWidth - w);
    ubicacion.y = random(displayHeight - h);
    
    setBounds((int)ubicacion.x, (int)ubicacion.y, w, h);
    setVisible(true); 
    
    this.addWindowListener(new WindowAdapter() {
      public void windowClosing(WindowEvent we) {
        bounce = true;
      }
    });
  } 
  
  void bounce() {
    
    if(bounce) {

      ubicacion.add(velocidad);
      
      if ( ( ubicacion.x > displayWidth - w ) || ( ubicacion.x < 0 ) ) {
        velocidad.x *= -1;
      }
      
      if ( ubicacion.y > displayHeight  - h ) {
        velocidad.y *= -1; 
      }
      
      setBounds((int) ubicacion.x, (int) ubicacion.y, w, h);
    }
  }
}
