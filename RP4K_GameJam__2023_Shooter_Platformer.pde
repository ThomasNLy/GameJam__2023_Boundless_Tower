// Testing Git Push/Pull //<>//
// test 2


Level l;
SpawnPoint levelExit;
ArrayList<Bullet> bullets;

Player p;
boolean upKey, downKey, leftKey, rightKey, shootKey;

void setup()
{
  size(1280, 720);


  l = new Level();
  levelExit = new SpawnPoint(1260, 660);

  bullets = new ArrayList<Bullet>();
  p = new Player(1, 2);
  upKey = false;
  downKey = false;
  leftKey = false;
  rightKey = false;
  shootKey = false;
}

void draw()
{
  keyCheck();
  l.display();

  p.move();

  p.display();
  p.limitFireRate();
  for (Bullet b : bullets)
  {
    b.move();
    b.display();
  }
  // a separate for loop needed to remove bullets as it can cause an index error to due index shifting when removing items
  // and calling upon them
  for (int i = 0; i < bullets.size(); i++)
  {
    Bullet b = bullets.get(i);
    if (b.x < 0 || b.x > width)
    {
      bullets.remove(b);
    }
  }
<<<<<<< HEAD

  playerFloorCollision();
=======
  
  floorCollision();
  nextLevelCheck();
  screenBounds();
>>>>>>> Key-and-Next-Level
}

void keyPressed()
{
  if (keyCode == 32 )
  {
    shootKey = true;
  }
  if (key == 'w')
  {
    upKey = true;
  }
  if (key == 's')
  {
    downKey = true;
  }
  if (key == 'a')
  {
    leftKey = true;
  }
  if (key == 'd')
  {
    rightKey = true;
  }
}

void keyReleased()
{
  
  if (key == 's')
  {
    downKey = false;
    p.yspeed = 0;
  }
  if (key == 'a')
  {
    leftKey = false;
    p.xspeed = 0;
  }
  if (key == 'd')
  {
    rightKey = false;
    p.xspeed = 0;
  }
  
  if (keyCode == 32)
  {
    shootKey = false;
  }
}



void floorCollision()
{
  for (Floor f : l.floors)
  {

    if (p.collision(f))
    {
      if (p.y <= f.y) //check if the player lands on top of a floor 
      {
        //setting the player's yspeed to 0 and have them appear at the top of the floor 
        p.yspeed = 0;
        p.y = f.y - p.h;
        p.jumps = p.maxJumps;
      }
    }

    // enemy floor check
    for (int i = 0; i < l.enemies.size(); i++)
    {
      Enemy e = l.enemies.get(i);
      if (e.checkFloors(f))
      {
        if (e.y <= f.y)
        { 
          e.yspeed = 0;
          e.y = f.y - e.h;
        }
      }
    }
  }
}

<<<<<<< HEAD
void keyCheck()
{
  if (upKey && p.jumps > 0)
  {
    p.jumps -= 1;
    p.yspeed = -5;
    upKey = false; // immediately turn off the jump so all  the jumps aren't used up 
  }
  if (downKey)
  {
    p.yspeed = 5;
  }
  if (leftKey)
  {
    p.xspeed = -5;
    p.facingRight = false;
  }
  if (rightKey)
  {
    p.xspeed = 5;
    p.facingRight = true;
  }
  if (shootKey && p.canShoot)
  {
    p.canShoot = false;

    if (p.facingRight)
    {
      Bullet b = new Bullet(p.x, p.y, 1);
      bullets.add(b);
    } else
    {
      Bullet b = new Bullet(p.x, p.y, -1);
      bullets.add(b);
    }
  }
}
=======
void screenBounds()
{
  if(p.x > width - p.w)
  {
    p.x = width - p.w;
  }
  if(p.x < 0)
  {
    p.x = 0;
  }
}

// --------------- Going to the Next Level
void nextLevelCheck()
{
  if(p.collision(l.levelKey))
  {
    p.hasKey = true;
  }
  
  if(p.hasKey && p.x > levelExit.x)
  {
    fill(0, 0, 0);
    rect(levelExit.x, levelExit.y, 20, 40);
    if(p.x > width - p.w)
    {
      nextLevel();
    }
  }
}

void nextLevel()
{
  // create a new level
  l = new Level();
  // reset the player
  p.hasKey = false;
  p.x = 5;
  p.y = 2;
}
>>>>>>> Key-and-Next-Level
