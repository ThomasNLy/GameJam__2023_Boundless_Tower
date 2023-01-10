class GameObject{

  float x, y, xspeed, yspeed;
  
  GameObject()
  {
  }
  
  void move()
  {
    x += xspeed;
    y += yspeed;
  }


}
