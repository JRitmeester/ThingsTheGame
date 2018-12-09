class MiniThing extends Thing {

  int size = 30;
  color c = color(0, 255, 0);
  
  public MiniThing(PVector pos) {
    super(pos);
    super.size = size;
    super.c = c;
    factor = 2;
  }
  
}