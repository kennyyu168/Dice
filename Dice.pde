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
	for(int x=100; x<400; x=x+60)
	{
		
		Die one=new Die(x,250);
		one.roll();
		one.show();
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
			fill(225,0,225);
			ellipse(myX,myY,10,10);
			System.out.println(1);
		}
		else
		{
			fill(225,0,225);
			ellipse(myX-10,myY-10,10,10);
			fill(225,0,225);
			ellipse(myX+10,myY+10,10,10);
			System.out.println(2);
		}
	}
	void show()
	{
		noStroke();
		fill(225,0,0,127);
		rect(myX-25,myY-25,50,50);
	}
}
