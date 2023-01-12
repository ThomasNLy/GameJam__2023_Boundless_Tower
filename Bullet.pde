class Bullet extends GameObject
{
  int xdir;
  int size;
  float velocity = 5;
  float circleR;
  Bullet(float x, float y, int xdir)
  {
    super();
    this.x = x;
    this.y = y;
    this.size = 10;
    xspeed = velocity * xdir;
    circleR = this.size / 2;
  }

  void display()
  {
    fill(255, 0, 0);
    circle(this.x, this.y, size);
    noFill();
    fill(244);
    
  }

  boolean boxToCircleCollision(GameObject other)
  {
    float boxLeft, boxRight, boxTop, boxBottom;
    boxLeft  = other.x;
    boxRight = boxLeft + other.w;
    boxTop = other.y;
    boxBottom = boxTop + other.h;

    float circleX = this.x ;
    float circleY = this.y;
    //float circleR = this.size / 2;




    //which side of the box they are on 
    float sideX, sideY;
    sideX = circleX;
    sideY = circleY;
    if (circleX > boxRight)
    {
      sideX = boxRight;
    }
    if (circleX < boxLeft)
    {
      sideX = boxLeft;
    }
    if (circleY < boxTop)
    {
      sideY = boxTop;
    }
    if (circleY > boxBottom)
    {
      sideY = boxBottom;
    }

    float a, b, c;
    a = abs(circleX - sideX);
    b = abs(circleY - sideY);
    c = sqrt(a*a + b*b);
   
    if (c < circleR)
    {
      return true;
    }
    return false;
  }
}
