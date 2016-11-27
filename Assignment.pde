boolean starting = false;
PImage world ;
Plane plane ;

void setup()
{
  size(600, 600, P3D);
  background(0);
  world = loadImage("world.jpg");
  plane = new Plane(width/20, height/20, width/25, height/25) ;
}

//boolean[] keys = new boolean[1000];
ArrayList<WORLD> data = new ArrayList<WORLD>();

/*void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
}

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}*/

void draw()
{
  if( starting == false)
  {
    change();
    opening();
    bcheck();
    rcheck();
    gcheck();
    colourbuttons();
  }
  
  else if( starting == true)
  {
    change();
    viewscreen();
  } 
}