class tetrisPiece{
  public
  
    tetrisPiece(){
        shape = new int[][] {{1, 0}, {1, 1}, {0, 1}};
    coord = 0;
  }
  
  void tetrisLshape(){
    shape = new int[][] {{1, 0}, {1, 1}, {0, 1}};
    coord = 0;
  }
  
  void updatePos(){
    coord++;
  }
  
  //Get lowest index
  

  boolean hasLanded(){
    
    //If all areas under the tetromino is 1, it has landed
    
    return false;
  }
  
  void setNewCoord(){
  }
  
  private
    color col;
    int shape[][];
    int coord;
};
