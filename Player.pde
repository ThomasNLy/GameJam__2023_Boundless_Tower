class Player extends GameObject{
  Player(float x, float y)
  {
    super();
    this.x = x;
    this.y = y;
    
  }
  
  void display()
  {
    circle(this.x, this.y, 10);
  }


}
