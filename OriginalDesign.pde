int x = 0;
int x1 = 300;

void setup()
{
  size(300, 300);
  frameRate(30);
  background(0);
}

void draw()
{
  ellipses();
  x = x + 1;
  x1 = x1 - 1;
//25% text
  if(x > 75)
  {
    text25();
//50% text
    if(x > 150)
    {
      text50();
//75% text
      if(x > 225)
      {
        text75();
//100% text
        if(x > 300)
        {
          background(0);
          text100();
          x = 0;
          x1 = 300;
        }
      }
    }
  }
}

void ellipses()
{
  stroke(0, 255, 255);
  fill(0, 255, 255);
  ellipse(x, 5, 10, 10);
  ellipse(x1, 295, 10, 10);
}

void text25()
{
   textSize(14);
   stroke(0, 255, 255);
   fill(0, 255, 255);
   text("25% Done Loading...", 50, 50);
}

void text50()
{
   textSize(14);
   stroke(0, 255, 255);
   fill(0, 255, 255);
   text("50% Done Loading...", 50, 100);
}

void text75()
{
   textSize(14);
   stroke(0, 255, 255);
   fill(0, 255, 255);
   text("75% Done Loading...", 50, 150);
}

void text100()
{
   textSize(14);
   stroke(0, 255, 255);
   fill(0, 255, 255);
   text("100% Loaded! Repeating Loop...", 50, 200);
}