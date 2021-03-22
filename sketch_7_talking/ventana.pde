import java.awt.MouseInfo;
import java.awt.Point;
import java.awt.PointerInfo;

public class Ventana extends PApplet {
  float x;
  float y;
  float easing = 0.05;
  boolean speak = false;
  String[] frases;
  int numFrase;
  
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
    frases = new String[3];
    frases[0] = "jejeje";
    frases[1] = "lol";
    frases[2] = "holaaa";
    
    numFrase = (int) random(0, 3);
  }
  
  public void draw() {
    exec("/usr/bin/say", frases[numFrase]);
    background(random(255), random(255), random(255));
    delay(6000);
  }
}
