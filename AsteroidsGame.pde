Spaceship ship;
boolean wIsPressed=false;
boolean aIsPressed=false;
boolean dIsPressed=false;
boolean sIsPressed=false;
Star [] space; 
public void setup() 
{
	size(1000,1000);
	background(0);
	ship=new Spaceship();
	space = new Star[100];
	for(int i=0;i<space.length;i++){
		space[i]=new Star();
	}
}
public void draw() 
{
	frameRate(90);
	background(0);
	
	for(int i=0;i<space.length;i++){
		space[i].show();
	}
	if(wIsPressed==true){
		ship.accelerate(0.5);
	}
	if(aIsPressed==true){
		ship.turn(-2.5);
	}
	if(dIsPressed==true){
		ship.turn(2.5);
	}
	if(sIsPressed==true){
		ship.hyperspace();
	
	}
	ship.move();
	ship.show();
}

public void keyPressed(){
	if(key=='w'){

		wIsPressed = true;
	}
	if(key=='a'){
		aIsPressed = true;
	}
	if(key=='d'){
		dIsPressed = true;
	
	}
	if(key=='s'){
		sIsPressed = true;
	
	}
}
public void keyReleased(){
	if(key=='w'){

		wIsPressed = false;
	}
	if(key=='a'){
		aIsPressed = false;
	}
	if(key=='d'){
		dIsPressed = false;
	
	}
	if(key=='s'){
		sIsPressed = false;
	
	}
}

