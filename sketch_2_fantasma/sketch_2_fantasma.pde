import java.awt.MouseInfo;
import java.awt.Point;
import java.awt.PointerInfo;

float x, y;
float easing = 0.01;
PImage img;

PointerInfo info = MouseInfo.getPointerInfo();
Point p = info.getLocation();
Point cursor;

void setup () {
  size(128, 128);
  background(255);
  img = loadImage("img.png");
  image(img, 0, 0, width, height);
}

void draw() {
  info = MouseInfo.getPointerInfo();
  p = info.getLocation();
  
  float mX = p.x;
  float dx = mX - x;
  x += dx * easing;
  
  float targetY = p.y;
  float dy = targetY - y;
  y += dy * easing;
   
  surface.setLocation(int(x), int(y));
}
