Spaceship ship;
boolean wIsPressed=false;
boolean aIsPressed=false;
boolean dIsPressed=false;
boolean sIsPressed=false;
boolean spaceIsPressed=false;
Star [] space; 
ArrayList <Asteroid> rock;
ArrayList <Bullet> bullet;
public void setup() 
{
	size(1000,1000);
	background(0);
	ship=new Spaceship();
	rock = new ArrayList <Asteroid>();
	space = new Star[200];
	bullet = new ArrayList <Bullet>();
	for(int i=0;i<space.length;i++){
		space[i]=new Star();
	}
	for(int i =0; i<20;i++){
		rock.add(new Asteroid());
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
		ship.accelerate(0.125);
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
	if(spaceIsPressed==true){
		bullet.add(new Bullet(ship));

	}
	ship.move();
	ship.show();
	for(int i=0;i<bullet.size();i++){
		(bullet.get(i)).show();
		(bullet.get(i)).move();
	}
	for(int i=0;i<rock.size();i++){
		(rock.get(i)).show();
		(rock.get(i)).move();
		if(dist((float)ship.myCenterX,(float)ship.myCenterY,(float)(rock.get(i)).myCenterX,(float)(rock.get(i)).myCenterY)<40){
		rock.remove(i);
		rock.add(new Asteroid());
		}
		for(int r = 0;r<bullet.size();r++){
			if(dist((float)(bullet.get(r)).myCenterX,(float)(bullet.get(r)).myCenterY,(float)(rock.get(i)).myCenterX,(float)(rock.get(i)).myCenterY)<40){
				rock.remove(i);
				bullet.remove(r);
				rock.add(new Asteroid());
				break;
			}
		}

	}


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
	if(key==' '){
		spaceIsPressed = true;
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
	if(key == ' '){
		spaceIsPressed=false;
	}
}

