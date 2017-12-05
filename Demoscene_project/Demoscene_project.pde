import processing.sound.*;
SoundFile file;
Amplitude amp;
AudioIn in;


void setup() {
  size(2000,1000);
  background(255);
    
  
  file = new SoundFile(this, "PPK.mp3");file.play();
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);

}      

void draw() {
  background(255);
  println(amp.analyze());
  ellipse(width/2 ,height/2,amp.analyze()*10000,amp.analyze()*10000);
  if(amp.analyze()<0.006)
  {background(random(0,10),random(0,10),random(230,250));
  }
    
}