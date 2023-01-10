class Enemy extends GameObject {
  
  float GRAVITY = 0.1;

  int xdir;
  int aiTimer;
  
  Enemy(SpawnPoint spawn)
  {
    super();
    this.x = spawn.x;
    this.y = spawn.y;
    this.w = 20;
    this.h = 20;
    this.aiTimer = 0;
  }
  
  void display()
  {
    fill(255, 200, 0);
    rect(this.x, this.y, this.w, this.h);
    noFill();
  }
  
  void move()
  {
    aiBrain();
    this.xspeed = this.xdir;
    this.yspeed += GRAVITY;

    this.x += this.xspeed;
    this.y += this.yspeed;
  }
  
  void aiBrain()
  {
    this.aiTimer++;
    if(this.aiTimer > 180)
    {
      this.aiTimer = 0;
      this.xdir = int(random(-2, 2));
    }
    
    if(this.x + this.w > 1275 || this.x - 5 < 0)
    {
      this.xdir = -this.xdir;
    }
  }
  
  // floor collision
  boolean checkFloors(GameObject other)
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
