import java.awt.Frame;
import java.awt.event.WindowEvent;
import java.awt.event.WindowAdapter;

class Ventana extends Frame {
  int x, y, w, h;
  
  Ventana() {
    w = 80;
    h = 80;
    x = (int) random(displayWidth - w);
    y = (int) random(displayHeight - h);
    setVisible(true); 
    setBounds(x, y, w, h);
    
    this.addWindowListener(new WindowAdapter() {
      public void windowClosing(WindowEvent we) {
        x = (int) random(displayWidth - w);
        y = (int) random(displayHeight - h);
        setBounds(x, y, w, h);
        crearVentana();
      }
    });
  } 
}
