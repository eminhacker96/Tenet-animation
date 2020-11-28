int bullet_x_pos = 100;
int bullet_y_pos = 75;
int bullet_width = 30;
int bullet_height = 10;
int bullet_nose_width = bullet_width / 2;
int bulletSpeed = 10;
boolean isMoving = false;
void setup(){
  size(640,360);
  rectMode(CENTER);

}
void mousePressed()
{
  isMoving = true;
}

void mouseReleased()
{
  bulletSpeed = bulletSpeed * (-1);
}

void draw(){
  background(0);
  fill(241,255,0);
  noStroke();
  rect(bullet_x_pos,bullet_y_pos,bullet_width,bullet_height);
  triangle(bullet_x_pos + bullet_width / 2,
           bullet_y_pos + bullet_height / 2,
           bullet_x_pos + bullet_width / 2,
           bullet_y_pos - bullet_height / 2,
           bullet_x_pos + bullet_width / 2 + bullet_nose_width,
           bullet_y_pos
  );
  if(isMoving)
  {
    bullet_x_pos += bulletSpeed;
  }
  
}
