class Asteroid extends Floater
{
	protected int rotSpeed;
	Asteroid(){
		myCenterX = (int)(Math.random()*1000);
		myCenterY = (int)(Math.random()*1000); //holds center coordinates   
  		myDirectionX = (int)(Math.random()*5-2);
  		myDirectionY = (int)(Math.random()*5-2); //holds x and y coordinates of the vector for direction of travel   
  		myPointDirection= (int)(Math.random()*360);
  		rotSpeed = (int)(Math.random()*3+1);
		myR = 150;
		myG=75;
		myB=0;

		corners = 8;
		xCorners = new int[corners];
		yCorners = new int[corners];
	
		xCorners[0] = -7;
		yCorners[0] = 0;
		xCorners[1] = -4;
		yCorners[1] = 6;
		xCorners[2] = 0;
		yCorners[2] = 6;
		xCorners[3] = 4;
		yCorners[3] = 4;
		xCorners[4] = 5;
		yCorners[4] = -1;
		xCorners[5] = 2;
		yCorners[5] = -5;
		xCorners[6] = -3;
		yCorners[6] = -5;
		xCorners[7] = -3;
		yCorners[7] = -2;

		for(int i=0;i<8;i++){
			int rockSize = (int)(Math.random()*4+3);
			xCorners[i]*=rockSize;
			yCorners[i]*=rockSize;
		}

		

	}

	public void move ()   //move the floater in the current direction of travel
	  {      
	  	turn(rotSpeed);
	  	super.move();
	  } 
}  