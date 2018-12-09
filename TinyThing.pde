class TinyThing extends Thing {

  int size = 30;
  color c = color(0, 0, 255);
  
  public TinyThing(PVector pos) {
    super(pos);
    super.size = size;
    super.c = c;
    factor = 3;
  }
  
}