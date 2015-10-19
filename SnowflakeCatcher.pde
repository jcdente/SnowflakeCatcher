Snowflake[] Snow;
void setup()
{
  size(400, 400);
  background(0,0,0);
//your code here
  frameRate(60);
  
  int addS = 0;
  Snow = new Snowflake[300 + addS];
  for(int f = 0; f < Snow.length; f++)
  {
    Snow[f] = new Snowflake();
  } 
  
}
void mouseDragged()
{
  noStroke();
  fill(225, 225, 225);
  ellipse(mouseX, mouseY, 20, 20);//your code here
}

void draw()
{

  
  for(int f = 0; f < Snow.length; f++)
  {
    Snow[f].erase();
    Snow[f].lookDown();
    Snow[f].move();
    Snow[f].wrap();
    Snow[f].show();
  }
  //your code here
}

class Snowflake
{
  int flakeX, flakeY, flakeSize;//class member variable declarations
  boolean isMoving;
  Snowflake()
  {
    flakeX = (int)(Math.random()*400)+1;
    flakeY = (int)(Math.random()*400)+1;
    isMoving = true;
    flakeSize = 7;//class member variable initializations
  }
  void show()
  {
    stroke(0);
    fill(255, 255, 255);
    ellipse(flakeX, flakeY, flakeSize, flakeSize); //your code here
  }
  void lookDown()
  {
    if(flakeY > 0 && flakeY < 500 && get(flakeX, flakeY + 7) == color(225))
    {
      isMoving = false;
      //flakeY = mouseY + 10;//make it stop at the top of the snow to catch it
    }//your code here : what happens when the snow falls and hits something
    else  {
        isMoving = true;
      }  
  }
  void erase()
  {
    fill(0);
    ellipse(flakeX, flakeY, flakeSize +1, flakeSize +1);
    if(keyPressed)
    {


    }//your code here
  }
  void move()
  {
    if(isMoving == true)
    {
    flakeX = flakeX + (int)(Math.random()*3)-1;
    flakeY = flakeY + 1;//your code here
  }
  }
  void wrap()
  {
    if(flakeY > 420)
    {
      flakeY = (int)(Math.random()*400)- 400;
      flakeX = (int)(Math.random()*400)+1;
    }//your code here
  }
}


