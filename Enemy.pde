class Enemy extends GameObject {
  
  float GRAVITY = 0.1;
<<<<<<< HEAD
=======
  int xdir;
  int aiTimer;
>>>>>>> Enemies
  
  Enemy(SpawnPoint spawn)
  {
    super();
    this.x = spawn.x;
    this.y = spawn.y;
    this.w = 20;
    this.h = 20;
<<<<<<< HEAD
=======
    this.aiTimer = 0;
>>>>>>> Enemies
  }
  
  void display()
  {
    fill(255, 200, 0);
    rect(this.x, this.y, this.w, this.h);
    noFill();
  }
  
  void move()
  {
<<<<<<< HEAD
    this.yspeed += GRAVITY;
=======
    aiBrain();
    this.xspeed = this.xdir;
    this.yspeed += GRAVITY;
    
>>>>>>> Enemies
    this.x += this.xspeed;
    this.y += this.yspeed;
  }
  
<<<<<<< HEAD
=======
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
  
>>>>>>> Enemies
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
