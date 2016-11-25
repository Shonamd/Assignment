float x = 0;

void opening()
{  
  background(0);
  stroke(main);
  strokeWeight(.5);
   
  border();
  title();
  earth();
  check();
  
  if(keyCode == LEFT)
  {
    x = x % 500 + 20;
    earth();
  }
  
}

PFont regular;

void border()
{
  // border
  stroke(main);
  //left side
  line((width/20),(height/25),(width/20),(height/25*24));
  line((width/20+5),(height/25),(width/20+5),(height/25*24));
  //right side
  line((width/20*19),(height/25),(width/20*19),(height/25*24));
  line((width/20*19+5),(height/25),(width/20*19+5),(height/25*24));
  //top side
  line((width/20),(height/20-10),(width/20*19+5),(height/20-10));
  line((width/20),(height/20-15),(width/20*19+5),(height/20-15));
  //bottom side
  line((width/20),(height/25*24+5),(width/20*19+5),(height/25*24+5));  
  line((width/20),(height/25*24+10),(width/20*19+5),(height/25*24+10)); 
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
  shape.fill(0);
  shape.vertex(width/4, height/25+30);
  shape.vertex(width/4*3, height/25+30);
  shape.vertex(width/4*3+10, height/25+height/6);
  shape.vertex(width/4-10, height/25+height/6);
  shape.endShape(CLOSE);
  
  shape(shape, 0, 0);
  
  //Start button
  
  PShape start;
  
  start = createShape();
  start.beginShape();
  start.stroke(main);
  start.strokeWeight(1.5);
  if( check == false)
  {
    start.fill(0);
  }
  else
  {
    start.fill(main);
  }
  start.vertex(width/4, height/4*3);
  start.vertex(width/4*3, height/4*3);
  start.vertex(width/4*3+10, height/4*3+50);
  start.vertex(width/4-10, height/4*3+50);
  start.endShape(CLOSE);
  
  shape(start, 0, 0);
  
  fill(main);
  
  regular = createFont("Candara", 40);
  
  textFont(regular);
  text("World Map", width/4+25, ((height/25+height/6+height/25)/1.5+10));
  
  if( check == true)
  {
    fill(0);
  }
  else
  {
    fill(main);
  }
  
  textFont(regular);
  text("Start", width/4+75, height/4*3+35);
}

void earth()
{
  pushMatrix();
  fill(main);
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
      
      starting = true;
    }
  }
}