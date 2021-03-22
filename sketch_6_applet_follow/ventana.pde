import java.awt.MouseInfo;
import java.awt.Point;
import java.awt.PointerInfo;

public class Ventana extends PApplet {
  float x;
  float y;
  float easing = 0.05;

  PointerInfo inf = MouseInfo.getPointerInfo();
  Point p = inf.getLocation();
  Point cursor;
  
  public Ventana() {
  }
  
  public void settings() {
    size(128, 128);
  }

  public void setup() {
    background(0);
    fill(255);
    surface.setLocation((int) random(displayWidth), (int) random(displayHeight));
  }
  
  public void draw() {
    background(0);
    inf = MouseInfo.getPointerInfo();
    p = inf.getLocation();
    
   float targetX = map(p.x, 0, displayWidth, 0, width);
   float dx = targetX - x;
   x += dx * easing;
  
   float targetY = map(p.y, 0, displayHeight, 0, height);
   float dy = targetY - y;
   y += dy * easing;
   
   ellipse((int)x, (int)y, 20, 20);
  }
}
