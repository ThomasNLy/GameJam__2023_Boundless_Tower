class Key extends GameObject
{
  
  Key(SpawnPoint sp)
  {
    this.x = sp.x;
    this.y = sp.y;
    this.w = 10;
    this.h = 10;
  }
  
  void display()
  {
    fill(0, 200, 0);
    circle(this.x, this.y, this.w);
  }
  
}
