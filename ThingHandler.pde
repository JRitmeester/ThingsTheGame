public class ThingHandler {

  public ArrayList<Thing> deadThings = new ArrayList<Thing>();
  public ArrayList<Thing> newThings = new ArrayList<Thing>();

  public ThingHandler() {
  }

  public void updateList() {
    for (Thing t : things) {
      if (!t.isAlive) {
        deadThings.add(t);
      }
    }

    things.removeAll(deadThings);
    things.addAll(newThings);
    deadThings.clear();
    newThings.clear();
  }

  private void checkPossibleMerges(ArrayList<Thing> things) {
    for (int i = 0; i < things.size(); i++) {
      for (int j = i + 1; j < things.size(); j++) {
        Thing a = things.get(i);
        Thing b = things.get(j);
        if (dist(a.pos.x, a.pos.y, b.pos.x, b.pos.y) < max(a.size/2, b.size/2) && a.factor == b.factor) {
          mergeThings(a, b);
        }
      }
    }
  }

  private void mergeThings(Thing a, Thing b) {
    deadThings.add(a);
    deadThings.add(b);
    int f = a.factor;
    PVector newPos = new PVector((a.pos.x+b.pos.x)/2, (a.pos.y+b.pos.y)/2);
    switch (f) {
    case 1:
      newThings.add(new MiniThing(newPos));
      break;
    case 2:
      newThings.add(new TinyThing(newPos));
      break;
      case 3:
        newThings.add(new SmallThing(newPos));
        break;
      //case 4:
      //  unbornThings.add(new MediumThing(newPos));
      //  break;
      //case 5:
      //  unbornThings.add(new BigThing(newPos));
      //  break;
    }
  }
}