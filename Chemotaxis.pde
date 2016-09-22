 int fSizex = 50;
 int fSizey = 50;
 int bSizex = 15;
 int bSizey = 15;
 Bacteria zac;
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(1000,1000);
 	zac = new Bacteria();
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(200);
 	fill(255);
 	ellipse(500,500,1000,1000);
 	food();
 	zac.show();
 	zac.walk();
 
 }  
 class Bacteria    
 {     
 	//lots of java!   
 	int myX,myY,myColor;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*501);
 		myY = (int)(Math.random()*501);
 		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	}
 	void walk()
 	{
	 	if (((mouseX - 500)*(mouseX - 500)) + ((mouseY - 500)*(mouseY - 500)) == 2500)
	 	{
	 		if (myX < mouseX)
	 		{
	 			myX = myX + (int)(Math.random()*5)-1;
	 		}
	 		else if (myX > mouseX)
	 		{
	 			myX = myX + (int)(Math.random()*5)-3;
	 		}
	 		else 
	 		{
	 			myX = myX + (int)(Math.random()*5)-2;
	 		}
	 		if (myY < mouseY)
	 		{
	 			myY = myY + (int)(Math.random()*5)-1;
	 		}
	 		else if (myY > mouseY)
	 		{
	 			myY = myY + (int)(Math.random()*5)-3;
	 		}
	 		else 
	 		{
	 			myY = myY + (int)(Math.random()*5)-2;	
	 		}
	 	}
 		else 
 		{
 			myY = myY + (int)(Math.random()*5)-2;	
 		}
 	} 
 	void show()
 	{
   		fill(myColor);
 		ellipse(myX,myY,bSizex,bSizey);
 		if (mouseX == myX && mouseY == myY)
 		{
 			fSizex = fSizex - 1;
 			fSizey = fSizey - 1;
 			bSizex = bSizex + 1;
 			bSizey = bSizey + 1;
 		}
 		if (fSizex == 0 && fSizey == 0)
 		{
 			fSizex = 50;
 			fSizey = 50;
 		}
 	}
 }
 void food()
 {
 	fill(0);
 	rect(mouseX,mouseY,fSizex,fSizey);
 }    


