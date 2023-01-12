class CheckPoint extends GameObject
{
  
  CheckPoint(SpawnPoint sp)
  {
    this.x = sp.x;
    this.y = sp.y;
    this.w = 20;
    this.h = 20;
  }
  
  void display()
  {
    noFill();
    strokeWeight(3);
    stroke(0, 0, 255);
    circle(this.x, this.y, this.w);
  }
}
