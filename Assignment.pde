boolean starting = false ;

void setup()
{
  size(500, 500, P3D);
  background(0);
}

void draw()
{
  if( starting == false)
  {
    opening();
  }
  
  if( starting == true)
  {
    map();
  }
}
 