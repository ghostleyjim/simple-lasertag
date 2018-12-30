#include <TM1637Display.h>

#include <Arduino.h>
#include <Adafruit_NeoPixel.h>
#include <avr/power.h>

#define CLK 2
#define DIO 3 

#define PIN 6
#define NUMPIXELS 3

// Input definition
#define SelectButton 7
#define ScrollButton 8
#define HitButton 4
#define ResetButton 5
#define TriggerPin 10

//output definition
#define BuzzerPin 9 
#define LightPin 11

// debounce and wait times
#define ButWaitTime 250 //wait time between buttonpresses
#define HitTime 1500 //cooldown time before you can get hit again
unsigned long CooldownTime; // variable to store the millis() time

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

TM1637Display dis(CLK, DIO);

int Lives = 0; //global variable for startlives
bool StartFlag = true; // flag to run a setup in the beginning out of the void setup() function
bool DisplayState = true;


void setup() {
 
pixels.begin();
dis.setBrightness(3);
pinMode(SelectButton, INPUT_PULLUP);
pinMode(ScrollButton, INPUT_PULLUP);
pinMode(HitButton, INPUT_PULLUP);
pinMode(ResetButton, INPUT_PULLUP);
pinMode(BuzzerPin, OUTPUT);
}

void loop() {
if (StartFlag == true)
{
  GameStart();
} 


if (Lives > 0 && StartFlag == false)
{
Trigger();
HitDetect();
}
else if (Lives == 0 && StartFlag == false)
{
  GameEnd();
}
}





void GameStart()
{
dis.showNumberDec(Lives);
if (digitalRead(ScrollButton) == LOW && millis() - CooldownTime >= ButWaitTime)
{
Lives++;
dis.showNumberDec(Lives);
CooldownTime = millis();

}
else if (digitalRead(SelectButton) == LOW && Lives > 0 && millis() - CooldownTime >= ButWaitTime)
{
  StartFlag = false;
}
}


 void HitDetect(){

if (digitalRead(HitButton) == LOW && millis() - CooldownTime >= HitTime)
{
 Lives--;
 CooldownTime = millis();
 tone(BuzzerPin, 800, HitTime); 
 dis.showNumberDec(Lives);
}
}


void GameEnd()
{
if(digitalRead (ResetButton) == LOW)
{
  StartFlag = true;
  loop();
}

if (millis() - CooldownTime >= 1000)
{

if (DisplayState == true)
{
DisplayState = false;
} 
else 
{
DisplayState = true;
}
CooldownTime = millis();
}
if (DisplayState == true)
{
  dis.clear();
  tone(BuzzerPin, 400, 500);
}
else
{
  dis.showNumberDec(0);
  tone(BuzzerPin, 800, 500);
}
}

void LEDIndication()
{

}

void Trigger()
{
  unsigned long PreviousTime;
  while (TriggerPin == LOW)
  {
if (millis() - PreviousTime >= 3000)
{
  PreviousTime = millis();
  digitalWrite(LightPin, HIGH);
}
else {}

  
}
