class GameObject{

  float x, y, xspeed, yspeed, w, h;
  
  
  GameObject()
  {
  }
  
  void move()
  {
    x += xspeed;
    y += yspeed;
  }


}
