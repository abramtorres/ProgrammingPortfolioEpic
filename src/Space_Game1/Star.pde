class Star {
  // Member Variable
  float x, y, speed, dia;
  color c;
  //Constructor
  Star(int x, int y) {
    this.x = x;
    this.y = y;
    speed = int(random(1, 4));
    dia = int(random(1, 4));
    c = color(random(190, 255));
  }
  
 
  boolean reachedBottom() {
    if(y>height) {
      return true;
    } else {
      return false;
    }
  }
  
  
  //Member Methods
  void display() {
    rectMode(CENTER);
    noStroke();
    fill(c);
    ellipse(x, y, dia, dia);
  }
  void move() {
    y += speed;
  }
}
