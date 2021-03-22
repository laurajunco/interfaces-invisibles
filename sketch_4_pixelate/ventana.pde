import java.awt.Frame;
import java.awt.Color;

public class Ventana extends  Frame {
  
  int w, h, x, y, r;
  Color c;
  
  Ventana(int px, int py, int pw, int ph, int r, int g, int b) {
    x = px;
    y = py;
    w = pw;
    h = ph;
    c = new Color(r, g, b);
    
    setVisible(true);
    setBounds(x, y, w, h);
    setBackground(c);
  }
}
