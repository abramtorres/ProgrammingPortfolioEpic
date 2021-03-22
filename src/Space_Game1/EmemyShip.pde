class EnemyShip {
  // Member Variable
  int x, y, health;
  char displayMode;
  color c1;
  // Constructor
  EnemyShip(color c1) {
    x = 0;
    y = 0;
    health = 150;
    displayMode = '1';
    this.c1 = c1;
  }
  // Member Methods
  void display(int x, int y) {
    if (displayMode == '1') {
      // TODO: Create Enemy Graphic
      rectMode(CENTER);
      fill(#FF17E5);
      stroke(#FF6FEF);
      ellipse(x, y+38, 40, 10);
      fill(#2F29FC);
      stroke(#645FFF);
      ellipse(x, y+28, 65, 20);
      fill(#17FF3B);
      stroke(#6FFF85);
      ellipse(x, y+12, 80, 40);
      fill(#84038B);
      stroke(#AE07B7);
      strokeWeight(5);
      ellipse(x, y, 90, 50);
      fill(#524DFF);
      stroke(#221F98);
      strokeWeight(2);
      rect(x, y-10, 25, 30, 20, 20, 10, 10);
      stroke(#FF0011);
      strokeWeight(1);
      line(x-35, y-13, x-35, y-23);
      line(x+35, y-13, x+35, y-23);
    }
  }
}
