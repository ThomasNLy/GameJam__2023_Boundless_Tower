class Player extends GameObject {


  boolean facingRight;
  float GRAVITY = 0.1;

  Player(float x, float y)
  {
    super();
    this.x = x;
    this.y = y;
    this.w = 10;
    this.h = 10;

    facingRight = true;
  }

  void display()
  {
    fill(255);
    rect(this.x, this.y, this.w, this.h);
    noFill();
    this.yspeed += GRAVITY;
  }

  //box collision 
  boolean collision(GameObject other)
  {
    float left = this.x;
    float right = this.x + this.w;
    float top = this.y;
    float bottom = this.y + this.h;

    float oLeft = other.x;
    float oRight = other.x + other.w;
    float oTop = other.y;
    float oBottom = other.y + other.h;

    if (left < oRight && right > oLeft && top < oBottom && bottom > oTop)
    {
     
      return true;
    }
    
    return false;
  }
}
