/**
 * LED output simulator
 */

//first list of colors inspired by a resistor 
color [] colorList= {color(0),//Black = 0
                     color(127,63,0),//Brown = 1
                     color(255,0,0),//Red = 2
                     color(191,63,0),//Orange = 3
                     color(127,127,0),//Yellow = 4
                     color(0,255,0),//Green = 5
                     color(0,0,255),//Blue = 6
                     color(255,0,255),//Violet = 7
                     color(127),//Gray = 8
                     color(255)};//White = 9

//this list maximizes contrast if colors are picked from the top
//found at http://eleanormaclure.files.wordpress.com/2011/03/colour-coding.pdf
color [] kellyList= {color(255),//white
                     color(0),//black
                     color(255,255,0),//yellow
                     color(127,0,127),//purple
                     color(191,63,0),//orange
                     color(127,127,255),//lightblue
                     color(255,0,0),//red
                     color(127,191,191),//buff
                     color(127),//grey
                     color(0,255,0),//green
                     color(191,63,255),//purplish pink
                     color(0,0,255),//blue
                     color(255,191,127),//yellowish pink
                     color(63,0,255),//violet
                     //color(),//orange yellow
                     //color(),//purplish red
                     //color(),//greenish yellow
                     //color(),//reddish brown
                     //color(),//yellow green
                     //color(),//yellowish brown
                     //color(),//reddish orange
                     color(0,63,0)};//olive green

//omit LED unfriendly colors
color [] drewList = {kellyList[0],
                     kellyList[2],//skip black
                     kellyList[3],
                     kellyList[4],
                     kellyList[5],
                     kellyList[6],
                     kellyList[8],//skip buff
                     kellyList[9],
                     kellyList[10],
                     kellyList[11]};

color [] drewPrime = {kellyList[0], //0
                      kellyList[6], //1
                      kellyList[4], //2
                      kellyList[2], //3
                      kellyList[9], //4
                      kellyList[5], //5
                      kellyList[11],//6
                      kellyList[3], //7
                      kellyList[10],//8
                      kellyList[8]};//9
                      
String [] morseDigits = {"-----",//0
                         ".----",
                         "..---",
                         "...--",
                         "....-",
                         ".....",//5
                         "-....",
                         "--...",
                         "---..",
                         "----."};//9 
                         
String[] keyBuffer = "test";

class Event {
  int time;
  String description; 
} 

class Plan {
  Event [] 
  
}

Event [] plan;//list of events in the future

void setup() {
  
  size(100,100);
  colorMode(RGB, 256);
  noStroke();
  background(color(0,0,0));
}

void draw() {

}

String mL2bin (String code) {
  String output = "";
  for(int charmark = 0;charmark<code.length();charmark++){
    if(code.charAt(charmark)=='.')
      output += "10";
    else if (code.charAt(charmark)=='-')
      output += "1110";
  }
  return output;
}


color inverse(color arg) {//invert colors by negating RGB values
  return color(255-red(arg),255-green(arg),255-blue(arg));
}

color cscale(color arg, int scale) {//scale colors by scaling RGB values
  if(scale<0) {
    arg = inverse(arg);
  }
  return color(red(arg)*scale/255,
               green(arg)*scale/255,
               blue(arg)*scale/255);
}

color linterpolate(color start, color end, int position) {
  return color((red(start)*(255-position)+  red(end)*position)  /255,
               (green(start)*(255-position)+green(end)*position)/255,
               (blue(start)*(255-position)+ blue(end)*position) /255);
}

void keyPressed() {
  keyBuffer += key;
  eventList += 
  
}
