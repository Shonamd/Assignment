class balloon
{
  PVector position ;
  PVector forward ;
  PVector velocity ;
  PVector vroom ;
  PVector force ;
  PShape balloon ;
  float size ;
  float px, py ;
  
  balloon(float px, float py, float size)
  {
    position = new PVector(px, py) ;
    forward = new PVector(0, -1) ;
    vroom = new PVector(0, 0) ;
    velocity = new PVector(0, 0);
    force = new PVector
    
  