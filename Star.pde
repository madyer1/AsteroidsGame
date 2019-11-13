class Star //note that this class does NOT extend Floater
{
	private int starX,starY,starR,starG,starB,starSize;
  	Star(){
  		starX =  (int)(Math.random()*1000+1);
  		starY = (int)(Math.random()*1000+1);
  		starR= (int)(Math.random()*255+1);
  		starG= (int)(Math.random()*255+1);
  		starB = (int)(Math.random()*255+1);
  		starSize=5;
 	}
 	public void show(){
 		fill(starR,starG,starB);
 		ellipse(starX,starY,starSize,starSize);
 	}
}
