// Testing Git Push/Pull
// test 2


Level l;

ArrayList<Bullet> bullets;

Player p;

void setup()
{
  size(1280, 720);


  l = new Level();
  p = new Player(1, 2);

  bullets = new ArrayList<Bullet>();
  p = new Player(1, 2);
}

void draw()
{
  l.display();

  p.move();
  
  p.display();
  for (Bullet b : bullets)
  {
    b.move();
    b.display();
  }
  
  playerFloorCollision();
}

void keyPressed()
{
  if (keyCode == 32)
  {

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
  if (key == 'w'  && p.jumps > 0)
  {
    p.jumps -= 1;
    p.yspeed = -5;
  }
  if (key == 's')
  {
    p.yspeed = 5;
  }
  if (key == 'a')
  {
    p.xspeed = -5;
    p.facingRight = false;
  }
  if (key == 'd')
  {
    p.xspeed = 5;
    p.facingRight = true;
  }
}

void keyReleased()
{

  //if (key == 'w' || keyCode == UP)
  //{
  //  p.yspeed = 0;
  //}
  if (key == 's')
  {
    p.yspeed = 0;
  }
  if (key == 'a')
  {
    p.xspeed = 0;
  }
  if (key == 'd')
  {
    p.xspeed = 0;
  }
}



void playerFloorCollision()
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
    for(int i = 0; i < l.enemies.size(); i++)
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
