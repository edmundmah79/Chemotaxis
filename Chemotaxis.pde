 Bacteria zac;
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(500,500);
 	zac = new Bacteria();
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(255);
 	zac.show();
 	zac.walk();
 	food();
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
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;	
 	} 
 	void show()
 	{
   		fill(myColor);
 		ellipse(myX,myY,15,15);
 	}
 }
 void food()
 {
 	fill(0);
 	rect(mouseX,mouseY,20,20);
 }    
