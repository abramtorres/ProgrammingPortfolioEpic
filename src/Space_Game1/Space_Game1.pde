// Space Game | Dec 2020 //<>//
// By Abram Torres
// TODO: Project Setup
SpaceShip SpaceShip;
ArrayList<Lazar> lazars = new ArrayList<Lazar>();
ArrayList<Astroid> astroids = new ArrayList<Astroid>();
ArrayList<Star> stars = new ArrayList<Star>();
Timer timer;
EnemyShip EnemyShip;
PowerUp PowerUp;
Star Stars[] = new Star[200];
Wall Wall;

void setup() {
  size(900, 900);
  lazars = new ArrayList();
  astroids = new ArrayList();
  timer = new Timer(int(random(500, 3000)));
  timer.start();
  stars = new ArrayList();
  SpaceShip = new SpaceShip(#F71432);
  EnemyShip = new EnemyShip(#84038B);
  PowerUp = new PowerUp(#F6FF00);
  Wall = new Wall(#03ECFF);
}

void draw() {
  noCursor();
  background(0);
  stars.add(new Star (int(random(width)), int(random(height))));
  for (int i = 0; i < stars.size(); i++) {
    Star star = stars.get(i);
    star.display();
    star.move();
    if (star.reachedBottom()) {
      lazars.remove(star);
    }
  }
  if (timer.isFinished()) {
    astroids.add(new Astroid(color(128), int(random(width)), -50));
    timer.start();
  }
  for (int i = 0; i < lazars.size(); i++) {
    Lazar lazar = lazars.get(i);
    lazar.display();
    lazar.fire();
    if (lazar.reachedTop()) {
      lazars.remove(lazar);
    }
  }
  for (int i = 0; i < astroids.size(); i++) {
    Astroid astroid = astroids.get(i);
    astroid.display();
    astroid.move();
    if (astroid.reachedBottom()) {
      astroids.remove(astroid);
    }
    SpaceShip.display(mouseX, mouseY);
    infoPanel();
    EnemyShip.display(450, 580);
    PowerUp.display(450, 450);
    Wall.display(450, 450);
  }
}

void mousePressed() {
  if(SpaceShip.ammo>0) {
    lazars.add(new Lazar(color(#FF0000), SpaceShip.x, SpaceShip.y));
  }
  SpaceShip.ammo--;
}

void infoPanel() {
  noStroke();
  fill(128, 128);
  rectMode(CORNER);
  rect(0, height-50, width, 100);
  fill(255, 128);
  text("Health:" + SpaceShip.health, 20, height-20);
  text("Lives:" + SpaceShip.lives, 100, height-20);
  text("Ammo:" + SpaceShip.ammo, 160, height-20);
  text("Level:" + SpaceShip.level, 250, height-20);
  text("Score:" + SpaceShip.score, 310, height-20);
}
