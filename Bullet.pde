class Bullet extends GameObject
{
  int xdir;
  Bullet(float x, float y, int xdir)
  {
    this.x = x;
    this.y = y;
    xspeed = 1 * xdir;
  }
  
  void display()
  {
    circle(this.x, this.y, 10);
  }
  
  
}
