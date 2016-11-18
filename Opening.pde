float x = 0;

void opening()
{  
  background(0);
  stroke(7, 148, 175);
  strokeWeight(.5);
  boolean check = false ;
   
  border();
  title();
  earth();
  check();
  
  if(keyCode == LEFT)
  {
    x = x % 500 + 20;
    earth();
  }
  
  //Show if mouse over it
  if (mouseX > (width/4) && mouseX < (width/4*3) && mouseY > (height/4*3) && mouseY < (height/4*3+50))
  {
    check = true;
    title();
  }
}

PFont regular;

void border()
{
  // border
  line((width/20),(height/25),(width/20),(height/25*24));
  line((width/20+5),(height/25),(width/20+5),(height/25*24));
  line((width/20*19),(height/25),(width/20*19),(height-20));
  line((width/20*19+5),(height/25),(width/20*19+5),(height/25*24));
  line((width/20),(height/20-10),(width-20),(height/20-10));
  line((width/20),(height/20-15),(width-20),(height/20-15));
  line((width/20),(height/25*24+5),(width-20),(height/25*24+5));  
  line((width/20),(height/25*24+10),(width-20),(height/25*24+10)); 
}

void title()
{
  PShape shape ;
  
  boolean check = false;
  
  if (mouseX > (width/4) && mouseX < (width/4*3) && mouseY > (height/4*3) && mouseY < (height/4*3+50))
  {
    check = true;
  }
  
  //title
  shape = createShape();
  shape.beginShape();
  shape.strokeWeight(1.5);
  if( check == false)
  {
    shape.fill(0);
  }
  else
  {
    shape.fill(7, 148, 175);
  }
  shape.vertex(width/4, height/25+30);
  shape.vertex(width/4*3, height/25+30);
  shape.vertex(width/4*3+10, height/25+height/6);
  shape.vertex(width/4-10, height/25+height/6);
  shape.endShape(CLOSE);
  
  shape(shape, 0, 0);
  
  regular = createFont("Candara", 40);
  textFont(regular);
  text("World Map", width/4+25, ((height/25+height/6+height/25)/1.5+10));
  fill(7, 148, 175);
  
  //Start button
  
  PShape start;
  
  start = createShape();
  start.beginShape();
  start.stroke(7, 148, 175);
  start.strokeWeight(1.5);
  start.fill(0);
  start.vertex(width/4, height/4*3);
  start.vertex(width/4*3, height/4*3);
  start.vertex(width/4*3+10, height/4*3+50);
  start.vertex(width/4-10, height/4*3+50);
  start.endShape(CLOSE);
  
  shape(start, 0, 0);
  
  
  textFont(regular);
  text("Start", width/4+75, height/4*3+35);
  if( check == false)
  {
    fill(7, 148, 175);
  }
  else
  {
    fill(0);
  }
    
}

void earth()
{
  pushMatrix();
  fill(7, 148, 175);
  camera(x, height/2, (height/2)/tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  translate(width/2, height/2, 0);
  stroke(255);
  sphere(100);
  popMatrix();
}

void check()
{
  if (mouseX > (width/4) && mouseX < (width/4*3) && mouseY > (height/4*3) && mouseY < (height/4*3+50))
  {
    if( mousePressed == true)
    {
      println("Fail");
    }
  }
}