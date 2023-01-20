class Key extends GameObject
{
  PImage img = loadImage("pics/key.png");
  
  Key(SpawnPoint sp)
  {
    super();
    this.x = sp.x;
    this.y = sp.y;
    this.w = 10;
    this.h = 10;
     
  }
  
  void display()
  {
    fill(0, 200, 0);
    //circle(this.x, this.y, this.w);
    image(img, this.x - 17, this.y - 15);
  }
  
}
