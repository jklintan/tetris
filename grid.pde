class grid{
  public
    //Constructor
    grid(int r, int c){
      rows = r;
      cols = c;
      gridval = new int[r][c];
        for (int i = 0; i < cols; i++) {
        for (int j = 0; j < rows; j++) {
          int x = i*boxsize;
          int y = j*boxsize;
          fill(0);
          stroke(30);
          rect(x, y, boxsize, boxsize);
          fill(100, 150, 200);
          textSize(12);
          //text(gridval[j][i], x + boxsize / 2, y + boxsize / 2);
          //text(str(j * cols + i + 1), x + boxsize / 2, y + boxsize / 2);
        }
      }
    }
    
    void printBoard(){
      for (int i = 0; i < this.cols; i++) {
        for (int j = 0; j < this.rows; j++) {
              int x = i*boxsize;
              int y = j*boxsize;
              fill(0);
              stroke(30);
              rect(x, y, boxsize, boxsize);
              fill(100, 150, 200);
              textSize(12);
              //text(gridval[j][i], x + boxsize / 2, y + boxsize / 2);
              if(gridval[j][i] == 1){
                fill(255, 0, 0);
                rect(i*boxsize, j*boxsize, boxsize, boxsize);
              }
        }
      }
    }

    int get_value(int row, int col){
      if(row > 0 && col > 0 && row <= this.rows && col <= this.cols){
        return this.gridval[row-1][col-1];
      }else{
        return 0;
      }
    }
    
    void update_pos(int row, int col, int value){
      if(row > 0 && col > 0 && row <= this.rows && col <= this.cols)
        this.gridval[row-1][col-1] = value;
    }
    
    void landShape(int pos[][]){
    }
    
    void checkLines(){
    }
    
    void removeLine(){
    }
    
  
  private
    int gridval[][];
    int rows;
    int cols;
    int index;
};
