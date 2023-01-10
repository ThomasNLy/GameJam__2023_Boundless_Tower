class Floor extends GameObject{
  
  //float w;
  //float h;
  
  Floor(int x, int y)
  {
    super();
    this.x = x;
    this.y = y;
    this.w = 200;
    this.h = 20;
  }
  
  void display()
  {
    fill(75, 75, 75);
    noStroke();
    rect(x, y, w, h);
  }
  
}
