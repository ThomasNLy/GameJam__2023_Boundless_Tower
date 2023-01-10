class Enemy extends GameObject {
  
  float GRAVITY = 0.1;
  
  Enemy(SpawnPoint spawn)
  {
    super();
    this.x = spawn.x;
    this.y = spawn.y;
    this.w = 20;
    this.h = 20;
  }
  
  void display()
  {
    fill(255, 200, 0);
    rect(this.x, this.y, this.w, this.h);
    noFill();
  }
  
  void move()
  {
    this.yspeed += GRAVITY;
    this.x += this.xspeed;
    this.y += this.yspeed;
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
