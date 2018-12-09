public class Thing {
  
  private PVector pos;
  private PVector vel;
  
  protected int size;
  public boolean selected;
  public boolean isAlive = true;
  protected int factor;
  protected color c;
  
  public Thing() {
    pos = new PVector(random(width), random(height));
    selected = false;
  }
  
  public Thing(PVector pos) {
    this.pos = pos;
  }
  
  public void update() {
    if (selected) {
      pos.x = mouseX;
      pos.y = mouseY;
    }
  }
  
  public void render() {
    ellipseMode(CENTER);
    fill(c);
    noStroke();
    ellipse(pos.x, pos.y, factor*20, factor*20);
  }
}