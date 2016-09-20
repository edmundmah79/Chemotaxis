 Bacteria zac;
 Food blob;
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(500,500);
 	zac = new Bacteria();
 	blob = new Food();
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(255);
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
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;	
 	} 
 	void show()
 	{
   		fill(myColor);
 		ellipse(myX,myY,15,15);
 	}
 }    
