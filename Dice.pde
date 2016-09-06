Die one;
void setup()
{
	size(500,500);
	background(0);
	noLoop();
	one=new Die(250,250);
}
void draw()
{
	//your code here
	one.flip();
	one.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int face=(int)(Math.random()*6);
	int myX,int myY;
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
		roll();
		myX=x;
		myY=y;
	}
	void roll()
	{
		//your code here
		if(Math.random()<1)
		{
			face=1
		}
		else 
		{
			if(Math.random()<2)
			{
				face=2
			}
			else 
			{
				if(Math.random()<3)
				{
					face=3
				}
				else
				{
					if(Math.random()<4)
					{
						face=4
					}	
					else
					{
						if(Math.random()<5)
						{
							face=5
						}
						else
						{
							if(Math.random()<6)	
						}
					}
				}
			}
		}
	}
	void show()
	{
		//your code here
	}
}
