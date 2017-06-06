  void setup(){
  frameRate(60);
  size(600, 400);
  background(100);
}
void draw(){
  //プロットの数
  int point = 16;
  //サイズ
  float diameter = 3;

  if(mousePressed){

    PVector mouse = new PVector((mouseX - width / 2),(mouseY - width / 2));
    
    translate(width / 2, height / 2);
    stroke(random(100,255), random(100,255),100);
    fill(255,200,200);
    for(int i=0;i<point;i++){
       //逆正接でシータを求める。座標を揃えるため90から引く
       float degree = (90-(float)360/point*i)-degrees(atan2(mouse.x, mouse.y));
       //距離の公式
       float r = sqrt(sq(mouse.x)+sq(mouse.y));
       //極座標から直交座標
       float x = r*cos(radians(degree));
       float y = r*sin(radians(degree));
       
       ellipse(x,y,diameter,diameter);
    } 
  }
}