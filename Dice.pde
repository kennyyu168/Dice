Die one;
void setup()
{
	size(500,500);
	noLoop();

}
void draw()
{
	//your code here
	background(0);
	int sum=0;
	for(int x=100;x<450;x=x+60)
	{
		for(int y=100;y<450;y=y+60)
    	{
     		Die one=new Die(x,y);
			one.show();
      		one.roll();
      		sum=sum+one.numDots;
    	} 
	}
	textAlign(CENTER);
	text("Points: "+ sum ,250,450);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY,numDots;
	//variable declarations here
	Die(int x, int y)
	{
		//variable initializations here
		numDots=((int)(Math.random()*6)+1);
		myX=x;
		myY=y;
	
	}
	void roll()
	{
		//your code here
		if(numDots<2)
		{
    		fill(225);
    		ellipse(myX,myY,10,10);
		}
		else if(numDots<3)
		{
    		fill(225);
    		ellipse(myX-10,myY-10,10,10);
    		ellipse(myX+10,myY+10,10,10);
		}
    	else if(numDots<4)
    	{
    		fill(225);
    		ellipse(myX,myY,10,10);
    		ellipse(myX-10,myY-10,10,10);
    		ellipse(myX+10,myY+10,10,10);
    	}
    	else if(numDots<5)
    	{
    		fill(225);
    		ellipse(myX-10,myY-10,10,10);
    		ellipse(myX+10,myY+10,10,10);
    		ellipse(myX+10,myY-10,10,10);
    		ellipse(myX-10,myY+10,10,10);
    	}
    	else if(numDots<6)
    	{
    		fill(225);
    		ellipse(myX,myY,10,10);
    		ellipse(myX-12,myY-12,10,10);
    		ellipse(myX+12,myY+12,10,10);
    		ellipse(myX-12,myY+12,10,10);
    		ellipse(myX+12,myY-12,10,10);
    	}
    	else if(numDots<7)
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
    	strokeWeight(2.5);
		fill(1,(int)(Math.random()*225),1);
		rect(myX-25,myY-25,50,50,15);
	}
}