class Player extends GameObject{
  
  boolean facingRight;
  Player(float x, float y)
  {
    super();
    this.x = x;
    this.y = y;
    facingRight = true;
    
  }
  
  void display()
  {
    circle(this.x, this.y, 10);
  }


}
