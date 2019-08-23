
int batHandleX =720;
int batHandleY =390;
int batX = 700;
int batY = 320;
int ballX = 0;
int ballY = 350;
int speedX = 2;
int speedY = 1;
int bailsLX = 755;
int bailsLY = 465;
int bailsRX = 775;
int bailsRY = 465;
int headX = 625;
int headY = 400;
int bodyX = 625;
int bodyY = 400;
int handX = 625;
int handY = 400;
int legX = 625;
int legY = 550;

void setup()
{
  size(800,800);
  
}

void draw()
{
 //sky
 fill(28,232,220);
 rect(0,0,800,600);
 
 
 
  //head
  fill(245,221,168);
  ellipse(625,400,80,80);
  
  //body
  line(625,440,625,550);
  
  //hand
  line(625,460,730,500);
  line(625,460,730,470);
  
  //legs
  line(625,550,675,600);
  line(625,550,575 ,600);
  
  //bat
  
  line(batHandleX,batHandleY,720,500);
  
  
 fill(211,153,28);
 rect(batX,batY,40,100);
  
  //ground
  fill(20,152,41);
  rect(0,600,800,800);
  

  
  //stumps
  fill(211,153,28);
  rect(755,470,10,160);
  rect(770,470,10,160);
  rect(785,470,10,160);
  
  //bails
fill(211,153,28);
rect(bailsLX,bailsLY,20,5);
rect(bailsRX,bailsRY,20,5);



   //ball
   fill(160,37,45);
  ellipse(ballX,ballY,40,40);
  ballX = ballX + speedX;
  ballY = ballY + speedY;
  
  if(ballY >= 600)
  {
    speedY = -1;
  
}
if(ballX >= 755)
{
  bailsLY = 670;
  bailsLX = 745;
  bailsRY = 680;
  bailsRX = 785;
  
}

if(bailsLY == 670)
{
  textSize(200);
text("OUT!", 150, 400);
}
}
