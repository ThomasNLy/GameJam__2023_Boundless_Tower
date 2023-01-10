class GameObject{

  float x, y, w, h, xspeed, yspeed;
  
  GameObject()
  {
  }
  
  void move()
  {
    x += xspeed;
    y += yspeed;
  }


}
