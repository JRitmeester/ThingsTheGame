ArrayList<Thing> things = new ArrayList<Thing>();
public final int mergeDist = 20;
ThingHandler handler;
Timer timer = new Timer();

void setup() {
  //frameRate(1);
  size(1280, 720);
  background(0);
  handler = new ThingHandler();
  
  // Start the game with two MicroThings.
  for (int i = 0; i < 2; i++) {
    things.add(new MicroThing(new PVector(random(width), random(height))));
  }
  
  // Spawn rate of new MicroThings.
  timer.start(10000);
}

void draw() {
  if (timer.isFinished()) {
    timer.reset();
    handler.newThings.add(new MicroThing(new PVector(random(width), random(height))));
    println("Spawned new MicroThing.");
  }
  
  background(0);
  for (Thing t : things) {
    t.update();
    t.render();
  }
  
  handler.checkPossibleMerges(things);
  handler.updateList();
}

void mousePressed() {
  println("Mouse clicked.");
  for (Thing t : things) {
    if (dist(mouseX, mouseY, t.pos.x, t.pos.y) < (float)t.size/2.0f) {
      t.selected = true;
    }
  }
}

void mouseReleased() {
  println("Mouse released.");
  for (Thing t : things) {
    t.selected = false;
  }
}