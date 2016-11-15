float x = 0;

void opening()
{  
  background(0);
  stroke(7, 148, 175);
  strokeWeight(.5);
   
  border();
  title();
  earth();
  
  if(keyPressed == true)
  {
    x = x % 360 + 20;
    earth();
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
  
  //title
  strokeWeight(2);
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
  
  regular = createFont("Candara", 40);
  textFont(regular);
  text("World Map", width/4+25, ((height/25+height/6+height/25)/1.5+10));
  fill(7, 148, 175);
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