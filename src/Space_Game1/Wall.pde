class Wall {
  // Member Variables
  int x, y;
  color c;
  //Cunstructor
  Wall(color c) {
    x=0;
    y=0;
    this.c = c;
  }
  //Member Methods
  void display(int x, int y) {
    fill (#03ECFF);
    stroke(#03FFEC);
    strokeWeight(5);
    rectMode(CENTER);
    rect(x-445, y, 15, 900, 5);
    rect(x+445, y, 15, 900, 5);
    rect(x, y+445, 900, 15, 5);
    rect(x, y-445, 900, 15, 5);
  }
}
