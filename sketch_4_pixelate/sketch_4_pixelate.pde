Ventana[][] ventanas;
int Vx, Vy, Vw, Vh;
int numRows = 10;
int numCols = 15;

PImage imagen;
int[] px; //arreglo de pixeles
int len, wImg, hImg;
int px_x, px_y; 
int r, g, b;

void setup() {
  size(128,128);
  surface.setVisible(false);
  
  ventanas = new Ventana[numCols][numRows];
  Vw = displayWidth/numCols;
  Vh = displayHeight/numRows;
  
  imagen = loadImage("img.png");
  imagen.loadPixels();
  px = imagen.pixels;
  len = px.length;
  wImg = imagen.width;
  hImg = imagen.height;
  
  for(int i = 0; i < numRows; i++) {
    for(int j = 0; j < numCols; j++) {
      
      Vx = j*Vw;
      Vy = i*Vh;
      
      px_x = (int) map(Vx, 0,  displayWidth, 0, wImg);
      px_y = (int) map(Vy, 0,  displayHeight, 0, hImg);
      
      r = (int) red(px[px_y * wImg + px_x]);
      g = (int) green(px[px_y * wImg + px_x]);
      b = (int) blue(px[px_y * wImg + px_x]);
      
      ventanas[j][i] = new Ventana(Vx, Vy, Vw, Vh, r, g, b);
    }
  }
}
