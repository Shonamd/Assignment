color main ;
color blue = color(7, 148, 175);
color red = color(247, 17, 21);
color green = color(51, 198, 22);

boolean bshade = true ;
boolean rshade = false ;
boolean gshade = false ;

boolean bcheck = false ;
boolean rcheck = false ;
boolean gcheck = false ;

void colourbuttons()
{
  //make colour buttons
  strokeWeight(1.5);
  
  //button check
  stroke(blue);
  if( bcheck == true)
  {
    fill(blue);
    ellipse(12, 15, 16, 16);
  }
  else
  {
    fill(0);
    ellipse(12, 15, 16, 16);
  }
  
  stroke(red);
  if (rcheck == true)
  {
    fill(red);
    ellipse(12, 40, 16, 16);
  }
  else
  {
    fill(0);
    ellipse(12, 40, 16, 16);
  }
  
  stroke(green);
  //if (gcheck == true)
  if(dist(12,65,  mouseX,mouseY) < 8)
  {
    fill(green);
    //ellipse(12, 65, 16, 16);
    
  }
  else
  {
    noFill();
    //fill(0);
    //ellipse(12, 65, 16, 16);
  }  
  ellipse(12, 65, 16, 16);
  
}

void change()
{
  if( bshade == true)
  {
    main = blue ;
  }
  
  if( rshade == true)
  {
    main = red ;
  }
  
  if( gshade == true)
  {
    main = green ;
  }
}


void bcheck()
{
  if(mouseX>4 && mouseX<20)
  {
    if(mouseY>7 && mouseY<23)
    {
      bcheck = true ;
      
      if(mousePressed == true)
      {
        bshade = true;
        gshade = false;
        rshade = false;
        change();
    }
  }
      else
      {
        bcheck = false;
      }
  }
}

void rcheck()
{
  if(mouseX>4 && mouseX<20)
  {
    if (mouseY>32 && mouseY<48)
    {
      rcheck = true;
      
      if(mousePressed == true)
      {
        rshade = true;
        gshade = false;
        bshade = false;
        change();
      }
    }
  }
  else
  {
    rcheck = false;
  }
}


void gcheck()
{
  if(mouseX>4 && mouseX<20)
  {
    if (mouseY>57 && mouseY<73)
    {
      gcheck = true;
      
      if(mousePressed == true)
      {
        gshade = true;
        bshade = false ;
        rshade = false ;
        change();
    }
  }
      else
      {
        gcheck = false;
      }
  }
}