Die one;
void setup()
{
	size(500,500);
	background(0);
	noLoop();

}
void draw()
{
	//your code here
	for(int x=100;x<450;x=x+60)
	{
		for(int y=100;y<450;y=y+60)
    {
      Die one=new Die(x,y);
		  one.show();
      one.roll();
    } 
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	//variable declarations here
	Die(int x, int y)
	{
		//variable initializations here
		roll();
		myX=x;
		myY=y;
	
	}
	void roll()
	{
		//your code here
		if(((Math.random()*6)+1)<2)
		{
      fill(225);
      ellipse(myX,myY,10,10);
		}
		else if(((Math.random()*6)+1)<3)
		{
      fill(225);
      ellipse(myX-10,myY-10,10,10);
      ellipse(myX+10,myY+10,10,10);
		}
    else if(((Math.random()*6)+1)<4)
    {
      fill(225);
      ellipse(myX,myY,10,10);
      ellipse(myX-10,myY-10,10,10);
      ellipse(myX+10,myY+10,10,10);
    }
    else if(((Math.random()*6)+1)<5)
    {
      fill(225);
      ellipse(myX-10,myY-10,10,10);
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+10,myY-10,10,10);
      ellipse(myX-10,myY+10,10,10);
    }
    else if(((Math.random()*6)+1)<6)
    {
      fill(225);
      ellipse(myX,myY,10,10);
      ellipse(myX-12,myY-12,10,10);
      ellipse(myX+12,myY+12,10,10);
      ellipse(myX-12,myY+12,10,10);
      ellipse(myX+12,myY-12,10,10);
    }
    else if(((Math.random()*6)+1)<7)
    {
      fill(225);
      ellipse(myX+10,myY,10,10);
      ellipse(myX-10,myY,10,10);
      ellipse(myX+10,myY+13,10,10);
      ellipse(myX-10,myY+13,10,10);
      ellipse(myX+10,myY-13,10,10);
      ellipse(myX-10,myY-13,10,10);
    }
	}
	void show()
	{
		stroke((int)(Math.random()*225),(int)(Math.random()*225),(int)(Math.random()*225));
    strokeWeight(2);
		fill(1,(int)(Math.random()*225),1);
		rect(myX-25,myY-25,50,50);
	}
}