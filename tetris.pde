int boxsize = 42;
int cols = 10;
int rows = 16;
int timer;
int i = 1;
int j = 5;
boolean keyPress;
  
void setup(){
  //Setup window, color and text
  size(800,700);
  background(0);
  textSize(40);
  text("TETRIS", 550, 100);
  textSize(25);
  text("Time", 550, 250);
  text("Points", 550, 400);

}


void draw() {
  //Setting up the grid
  grid g = new grid(16, 10);
  g.printBoard();
  

if(keyPress){
  g.printBoard();
  keyPress = false;
}
  
  
if ((millis() - timer >= 500)){
    g.update_pos(i-2, j, 1);
    g.update_pos(i-1, j, 1);
    g.update_pos(i-1, j+1, 1);
    g.update_pos(i, j+1, 1);
    g.printBoard();
    timer = millis();
    delay(500);
    i++;
    if(i == rows)
      i = 1;
  }
  
 //g.printBoard();
  
  g.checkLines();
  //If full line, remove that line

}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT && j > 1) {
      j--;
      keyPress = true;
    } else if (keyCode == RIGHT && j < cols) {
        j++;
        keyPress = true;
    } else if (keyCode == UP){
    }else if(keyCode == DOWN){
    }
  }
}
