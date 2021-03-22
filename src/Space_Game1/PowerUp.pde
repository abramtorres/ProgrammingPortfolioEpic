class PowerUp {
  // Member Variables
  int x, y, dia;
  char displayMode;
  color c;
  //Cunstructor
  PowerUp(color c) {
    x=0;
    y=0;
    dia = 20;
    displayMode = '1';
    displayMode = '2';
    this.c = c;
  }
  //Member Methods
  void display(int x, int y) {
    if (displayMode == '1') {
    rectMode(CENTER);
    fill(#F6FF00);
    stroke(#00FF4E);
    strokeWeight(5);
    rect(x, y, dia, dia, 5);
    }
    if(displayMode == '2') {
      rectMode(CENTER);
    fill(#00FF4E);
    stroke(#F6FF00);
    strokeWeight(5);
    rect(x, y, dia, dia, 5);
    }
  }
}
