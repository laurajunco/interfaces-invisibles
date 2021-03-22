Ventana[][] ventanas;
int Vx, Vy, Vw, Vh;
int numRows = 10;
int numCols = 10;

void setup() {
  size(128,128);
  surface.setVisible(false);
  
  ventanas = new Ventana[numCols][numRows];
  Vw = displayWidth/numCols;
  Vh = displayHeight/numRows;
  
  for(int i = 0; i < numRows; i++) {
    for(int j = 0; j < numCols; j++) {
      Vx = j*Vw;
      Vy = i*Vh;
      ventanas[j][i] = new Ventana(Vx, Vy, Vw, Vh);
    }
  }
}
