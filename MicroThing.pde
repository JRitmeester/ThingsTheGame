class MicroThing extends Thing {

  int size = 10;
  color c = color(255, 0, 0);
  
  public MicroThing(PVector pos) {
    super(pos);
    super.size = size;
    super.c = c;
    super.factor = 1;
  }
  
}