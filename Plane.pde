float timeDelta = 1.0f / 60.0f;

class Plane
{
  PVector pos;
  PVector forward;
  PVector velocity;
  PVector vroom;
  float theta;
  float size;
  float radius;
  float mass = 1;
  PShape shape;
  
  Plane(float x, float y, float theta, float size)
  {
    pos = new PVector(x, y);
    forward = new PVector(0, -1);
    vroom = new PVector(0,0);
    velocity = new PVector(0,0);
    force = new PVector(0, 0);
    this.theta = theta;
    this.size = size;
    radius = size / 2;
    
    create();
    
  }
  
  void create()
  {
    shape = createShape();
    shape.beginShape();
    shape.stroke(255);
    shape.noFill();
    shape.strokeWeight(2);
    shape.vertex(-radius, radius);
    shape.vertex(0, - radius);
    shape.vertex(radius, radius);
    shape.vertex(0, 0);
    shape.endShape(CLOSE);
  }
  
  void render()
  {
    pushMatrix(); // Stores the current transform
    translate(pos.x, pos.y);
    rotate(theta);    
    
    // Use a PShape();
    shape(shape, 0, 0);
    popMatrix(); // Restore the transform
  }
  
  PVector force;
  float power = 400;
  
  
  void update()
  {
      
    forward.x = sin(theta);
    forward.y  = -cos(theta);
    if (checkKey('w'))
    {
      force.add(PVector.mult(forward, power));      
    }
    if (checkKey('s'))
    {
      force.add(PVector.mult(forward, -power));      
    }
    if (checkKey('a'))
    {
      theta -= 0.1f;
    }
    if (checkKey('d'))
    {
      theta += 0.1f;
    }
    
    vroom = PVector.div(force, mass);
    velocity.add(PVector.mult(vroom, timeDelta));
    pos.add(PVector.mult(velocity, timeDelta));
    force.x = force.y = 0;
    velocity.mult(0.95f);
  }
  
}

void keyPressed()
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
}
    
  