class Spaceship extends Floater  
{   

	Spaceship(){
		myR=150;
		myG=0;
		myB=150;
		myCenterX=500;
		myCenterY=500;
   		myDirectionX=0;
   		myDirectionY=0;  
  		myPointDirection=0;
		corners=6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0]=12;
		yCorners[0]=0;
		xCorners[1]=-8;
		yCorners[1]=10;
		xCorners[2]=-14;
		yCorners[2]=10;
		xCorners[3]=-4;
		yCorners[3]=0;
		xCorners[4]=-14;
		yCorners[4]=-10;
		xCorners[5]=-8;
		yCorners[5]=-10;
	}

	public void hyperspace(){
		myDirectionX = myDirectionY = 0;
		myCenterX= (int)(Math.random()*1000)+1;
		myCenterY=(int)(Math.random()*1000)+1;
 		myPointDirection=(int)(Math.random()*359)+1;
	}
}
