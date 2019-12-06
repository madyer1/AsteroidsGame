class Bullet extends Floater
{
	double dRadians;
	public Bullet(Spaceship ship){
		myCenterX=ship.myCenterX;
		myCenterY=ship.myCenterY;
		myPointDirection=ship.myPointDirection;
		dRadians = ship.myPointDirection*(Math.PI/180);
		myDirectionX = ship.myDirectionX + 5*Math.cos(dRadians);
		myDirectionY = ship.myDirectionY + 5*Math.sin(dRadians);
	}
	public void show(){
		fill(255,255,255);
		ellipse((float)myCenterX,(float)myCenterY,10,10);
	}

	public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

  }   

}