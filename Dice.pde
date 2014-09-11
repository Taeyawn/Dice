Die bob;
Die matt;
void setup()
{
	size(300,300);
	noLoop();
	background(5);

}
void draw()
{
	background(5);
	bob = new Die(60,100);
	matt = new Die(160,100);
	bob.show();
	matt.show();
	bob.roll();
	matt.roll();
	fill(255);
	textSize(20);
	text("You rolled " + (bob.dots+matt.dots),100	,40);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dots;
	int myX;
	int myY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;//variable initializations here
		dots = (int)(Math.random()*6)+1;
	}
	void roll()
	{
		if(dots==1)
		{  
			fill(5);
			ellipse(myX+40,myY+40,10,10);
		}
		if(dots==2)
		{
			fill(5);
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+60,myY+60,10,10);
		}
		if(dots==3)
		{
			fill(5);
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+60,myY+60,10,10);
			ellipse(myX+40,myY+40,10,10);
		}
		if(dots==4)
		{
			fill(5);
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+60,myY+20,10,10);
			ellipse(myX+20,myY+60,10,10);
			ellipse(myX+60,myY+60,10,10);
		}
		if(dots==5)
		{
			fill(5);
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+60,myY+20,10,10);
			ellipse(myX+20,myY+60,10,10);
			ellipse(myX+60,myY+60,10,10);
			ellipse(myX+40,myY+40,10,10);
		}
		if(dots==6)
		{
			fill(5);
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+60,myY+20,10,10);
			ellipse(myX+20,myY+40,10,10);
			ellipse(myX+60,myY+40,10,10);
			ellipse(myX+20,myY+60,10,10);
			ellipse(myX+60,myY+60,10,10);
		}
	}
	void show()
	{
		fill(255);
		rect(myX,myY,80,80);
	}
}
