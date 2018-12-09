class Timer {
  
  private long duration;
  private long initTime;
  
  public Timer() {
    
  }
  
  public void start(long duration) {
    initTime = millis();
    this.duration = duration;
  }
  
  public void reset() {
    initTime = millis();
  }
  
  public long getRemaining() {
    return (initTime + duration - millis());
  }
  
  public boolean isFinished() {
    return (initTime + duration - millis() < 0);
  }
}