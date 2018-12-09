class SmallThing extends Thing {

  int size = 30;
  color c = color(255, 255, 0);
  
  public SmallThing(PVector pos) {
    super(pos);
    super.size = size;
    super.c = c;
    factor = 4;
  }
  
}