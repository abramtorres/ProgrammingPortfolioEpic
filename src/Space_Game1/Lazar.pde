class Lazar {
  // Member Variables
  int x, y, speed;
  color c;
  //Cunstructor
  Lazar(color c, int x, int y) {
    this.x=x;
    this.y=y;
    speed=10;
    this.c = c;
  }
  //Member Methods
  void fire() {
    y-=speed;
  }
  boolean reachedTop() {
    if(y<-5) {
      return true;
    } else {
      return false;
    }
  }
  //Member Methods
  void display() {
    rectMode(CENTER);
    strokeWeight(1);
    stroke(#FF0000);
    fill (#FF0000);
    line(x, y, x, y-10);
  }
}
