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
    }
  }
  else
  {
    bcheck = false;
  }
}

void rcheck()
{
  if(mouseX>4 && mouseX<20)
  {
    if (mouseY>32 && mouseY<48)
    {
      rcheck = true;
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
    }
  }
  else
  {
    gcheck = false;
  }
}