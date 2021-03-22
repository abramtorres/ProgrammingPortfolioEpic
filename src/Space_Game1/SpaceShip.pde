class SpaceShip {
  // Member Variable
  int x, y, health, ammo, lives, level, score;
  char displayMode;
  color c1;
  // Constructor
  SpaceShip(color c1) {
    x = 0;
    y = 0;
    health = 100;
    ammo = 1000;
    lives = 3;
    level = 5;
    score = 0;
    displayMode = '1';
    this.c1 = c1;
  }
  // Member Methods
  void display(int x, int y) {
    this.x = x;
    this.y = y;
    if (displayMode == '1') {
      rectMode(CENTER);
      stroke(#DE7402);
      strokeWeight(5);
      fill(#AD5A02);
      rect(x+18, y+10, 8, 15);
      rect(x-18, y+10, 8, 15);
      triangle(x, y-20, x+40, y+10, x-40, y+10);
      ellipse(x, y+10, 20, 80);
      triangle(x, y+40, x-25, y+60, x+25, y+60);
      strokeWeight(1);
      stroke(#FF0000);
      line(x+35, y+10, x+35, y);
      line(x-35, y+10, x-35, y);
      strokeWeight(1);
      stroke(#7EFFFE);
      fill(#DBFFFF);
      triangle(x-22, y+20, x-18, y+30, x-14, y+20);
      triangle(x+22, y+20, x+18, y+30, x+14, y+20);
      triangle(x-6, y+63, x, y+75, x+6, y+63);
      triangle(x-22, y+63, x-16, y+75, x-10, y+63);
      triangle(x+22, y+63, x+16, y+75, x+10, y+63);
    }
  }
}
