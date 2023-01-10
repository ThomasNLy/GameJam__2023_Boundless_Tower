class Floor extends GameObject{
  
  SpawnPoint sp;
  
  Floor(int x, int y)
  {
    super();
    this.x = x;
    this.y = y;
    this.w = 200;
    this.h = 20;
    this.sp = new SpawnPoint(this.x + this.w/2, this.y - 25);
  }
  
  void display()
  {
    fill(75, 75, 75);
    noStroke();
    rect(x, y, w, h);
  }
  
}
