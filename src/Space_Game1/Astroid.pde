class Astroid {
  // Member Variables
  int x, y, dia, speed;
  char displayMode;
  color c;
  //Cunstructor
  
  Astroid(color c, int x, int y) {
    this.x = x;
    this.y = y;
    this.c = c;
    dia = 40;
    displayMode = '1';
    speed = int(random(1, 6));
  }
  //Member Methods
  void display() {
    rectMode(CENTER);
    fill(#360A03);
    stroke(#210702);
    strokeWeight(3);
    ellipse(x, y, dia, dia);
    fill(0);
    stroke(#210702);
    ellipse(x-10, y+10, 10, 10);
    ellipse(x+5, y-10, 10, 10);
    ellipse(x+7, y+10, 10, 10);
    ellipse(x-5, y-5, 15,15);
    ellipse(x+12, y, 5, 5);
    fill(#930104);
    noStroke();
    ellipse(x+7, y, 2,2);
    ellipse(x, y+12, 2,2);
    ellipse(x-15, y-3, 2,2);
    ellipse(x, y-15, 2,2);
  }
  
  boolean reachedBottom() {
    if(y>height) {
      return true;
    } else {
      return false;
    }
  }
  
  
  void move() {
    y += speed;
    
  }
}
