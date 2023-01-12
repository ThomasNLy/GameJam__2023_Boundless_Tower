
class Player extends GameObject {



  int fireRate;
  int shootCoolDown;
  boolean canShoot;
  boolean hasKey;
  boolean takingDamage;
  
  
  
  boolean facingRight;
  float GRAVITY = 0.1;
  int maxJumps = 2;
  int jumps;
  Player(float x, float y)
  {
    super();
    this.x = x;
    this.y = y;
    this.w = 10;
    this.h = 10;
    this.jumps = maxJumps;
    this.facingRight = true;
    this.fireRate = 30;
    this.canShoot = true;
    this.shootCoolDown = 0;
    this.hasKey = false;
    this.takingDamage = false;
  }

  void display()
  {
    fill(255);
    rect(this.x, this.y, this.w, this.h);
    noFill();
  }


  void move()
  {
    //super.move();
    this.yspeed += GRAVITY;
    this.x += xspeed;
    this.y += yspeed;
  }

  
  void limitFireRate()
  {
    if (canShoot == false)
    {
      if (this.shootCoolDown < this.fireRate) // check if still on cool down
      {
        this.shootCoolDown++; //increase the cool down timer 
        if(this.shootCoolDown == this.fireRate) // can shoot again once cool down is over
        {
          canShoot = true;
          shootCoolDown = 0; // reset the timer for next time 
        }
      }
      
    } 
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
