import java.awt.Frame;
import java.awt.Color;

public class Ventana extends  Frame {
  
  int w, h, x, y;
  Color c;
  
  Ventana(int px, int py, int pw, int ph) {
    x = px;
    y = py;
    w = pw;
    h = ph;
    c = new Color(0,255,0);
    
    setVisible(true);    
    setBounds(x, y, w, h);
    setBackground(c);
  }
}
