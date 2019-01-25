/* 
TO DO
- ontvangst lichtsensor en hitdetectie
- Team LED Not Working
- Ammo counter DONE
- powerups??
*/

#include "TM1637.h"

#include <Arduino.h>
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
#define ReloadPin 11

//output definition
#define BuzzerPin 9
#define LightPin 12
#define RedLED 4
#define GreenLED 6
#define LDR_Front A1
#define LDR_Back A2

// debounce and wait times
#define ButWaitTime 500     //wait time between buttonpresses
#define HitTime 1500        //cooldown time before you can get hit again and buzzersound time
unsigned long CooldownTime; // variable to store the millis() time
unsigned long LightTime;    // store millis() when LED is switched on

int LightOnTime = 1500; // time light is on (1000 ms is 1 sec)
int SemiMode = 500;     // time between being able to fire again.

int measurement_front[] = {0, 0, 0};
int measurement_back[] = {0, 0, 0};

int front = 0; //store average from measurement_front array to compare
int back = 0; //store average from measurement_back array to compare

bool PreviousTriggerState;

#define CLK 2//pins definitions for TM1637 and can be changed to other ports
#define DIO 3
TM1637 dis(CLK,DIO);

int8_t DisplayCode[] = {0x00, 0x00, 0x00, 0x00};

int Lives = 0; //global variable for startlives
int AmmoCount;
int Ammo = 20;         //ammount of ammo change variable for changing ammo per clip
bool StartFlag = true; // flag to run a setup in the beginning out of the void setup() function
bool DisplayState = true;
bool teamSelectFlag = false;

void setup()
{
  dis.set(2);
  dis.init();
  pinMode(SelectButton, INPUT_PULLUP);
  pinMode(ScrollButton, INPUT_PULLUP);
  
  pinMode(HitButton, INPUT_PULLUP);
  pinMode(ResetButton, INPUT_PULLUP);
  pinMode(ReloadPin, INPUT_PULLUP);
  
  pinMode(LDR_Front, INPUT);
  pinMode(LDR_Back, INPUT);
  
  pinMode(BuzzerPin, OUTPUT);
 
  pinMode(GreenLED, OUTPUT);
  pinMode(RedLED, OUTPUT);
  

  digitalWrite(GreenLED, HIGH);
  AmmoCount = Ammo;

dis.point(POINT_ON);

for (int i = 0; i<=2; i++){ 																//take 3 readings from LDR and store in array
																										// check if for loop can be used in setup
	measurement_front[i] = analogRead(LDR_Front);
	
	Serial.print("measurement front no ");
	Serial.print(i);
	Serial.print(" = ");
	Serial.println(measurement_front[i]);

	delay(100);
	
	measurement_back[i] = analogRead(LDR_Back);
	
	Serial.print("measurement back no ");
	Serial.print(i);
	Serial.print(" = ");
	Serial.println(measurement_back[i]);
	
	delay(100);
}

front = (measurement_front[0] + measurement_front[1] + measurement_front[2]) / 3;

back = (measurement_back[0] + measurement_back[1] + measurement_back[2]) / 3;

Serial.print("measured average front = ");
Serial.println(front);

Serial.print("measured average back = ");
Serial.println(back);

Serial.begin(9600);
}

void loop()
{
  if (StartFlag == true)
  {
    GameStart();
  }
  
  

  if (Lives > 0 && StartFlag == false)
  {
    DisplayUpdate();
  dis.display(DisplayCode);
  
    Trigger();
    HitDetect();

    if (digitalRead(ReloadPin) == LOW)
    {
      AmmoCount = 20;
    }
  
  }
  else if (Lives == 0 && StartFlag == false)
  {
    for(int i=0; i<=3; i++)
    {
    DisplayCode[i] = 0x00 ;
    }
    GameEnd();
  }
}

// setup for game starting
void GameStart()
{
 while (teamSelectFlag == false) // first select teamcolor LED
  {
    if (digitalRead(ScrollButton) == LOW && millis() - CooldownTime >= ButWaitTime)
      {
        if (digitalRead(RedLED) == HIGH)
        {
          digitalWrite(RedLED, LOW);
          digitalWrite(GreenLED, HIGH);
          CooldownTime = millis();
        }
        else
        {
          digitalWrite(RedLED, HIGH);
          digitalWrite(GreenLED, LOW);
          CooldownTime = millis();
        }
        }
        if (digitalRead(SelectButton) == LOW)
          {
        teamSelectFlag = true;
        Serial.println("Teamselectflag checked");
      }
  }
  


  while (StartFlag == true)
  {
     if (digitalRead(ScrollButton) == LOW && millis() - CooldownTime >= ButWaitTime)
    {
      Lives++;
      CooldownTime = millis();
      DisplayUpdate();
  dis.display(DisplayCode);
  Serial.println(Lives);
    }
      if (Lives >= 16)
      {
        Lives = 0;
        DisplayUpdate();
  dis.display(DisplayCode);
      }
    else if (digitalRead(SelectButton) == LOW && Lives > 0 && millis() - CooldownTime >= ButWaitTime)
    {
      StartFlag = false;
    }
  }
}


  void HitDetect()
  {

    if ((analogRead(LDR_Front) < Front || analogRead(LDR_Back) < Back) && millis() - CooldownTime >= HitTime ) //check if LDR measurement gets higher or lower
    {
	  Lives--;
      CooldownTime = millis();
      tone(BuzzerPin, 800, HitTime);
    }
  }



  void GameEnd()
  {
    if (digitalRead(ResetButton) == LOW)
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
      dis.init();
      tone(BuzzerPin, 400, 500);
    }
    else
    {
      dis.display(DisplayCode);
      tone(BuzzerPin, 800, 500);
    }
  }

  void Trigger()
  {

    bool TriggerPinState;

    TriggerPinState = digitalRead(TriggerPin);

        if (TriggerPinState == LOW && PreviousTriggerState != TriggerPinState && AmmoCount > 0 && millis() - LightTime >= (LightOnTime + SemiMode))
    {
      digitalWrite(LightPin, HIGH);
      Serial.println("fire!");
      AmmoCount--;
      LightTime = millis();
    }
    if (millis() - LightTime >= LightOnTime)
    {
      digitalWrite(LightPin, LOW);
    }

    PreviousTriggerState = TriggerPinState;
  }

  void Reload()
  {
    if (digitalRead(ReloadPin) == LOW && AmmoCount <= 3 && CooldownTime >= ButWaitTime)
    {
      AmmoCount = Ammo;
      CooldownTime = millis();
    }
  }

  void DisplayUpdate()
  {
DisplayCode[0] = AmmoCount / 10;
DisplayCode[1] = AmmoCount % 10;
DisplayCode[2] = Lives / 10;
DisplayCode[3] = Lives % 10 ;
  } 