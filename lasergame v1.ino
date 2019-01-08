/* 
TO DO
- ontvangst lichtsensor en hitdetectie
- Team LED DONE
- Ammo counter DONE
- powerups??
*/

#include <TM1637Display.h>

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
#define LightPin 11
#define RedLED A1
#define GreenLED A2

// debounce and wait times
#define ButWaitTime 250     //wait time between buttonpresses
#define HitTime 1500        //cooldown time before you can get hit again
unsigned long CooldownTime; // variable to store the millis() time
unsigned long LightTime;    // store millis() when LED is switched on

int LightOnTime = 1500; // time light is on (1000 ms is 1 sec)
int SemiMode = 500;     // time between being able to fire again.

bool PreviousTriggerState;


TM1637Display dis(CLK, DIO);

int Lives = 0; //global variable for startlives
int AmmoCount;
int Ammo = 20;         //ammount of ammo change variable for changing ammo per clip
bool StartFlag = true; // flag to run a setup in the beginning out of the void setup() function
bool DisplayState = true;
bool teamSelectFlag = false;

void setup()
{
  dis.setBrightness(3);
  pinMode(SelectButton, INPUT_PULLUP);
  pinMode(ScrollButton, INPUT_PULLUP);
  pinMode(HitButton, INPUT_PULLUP);
  pinMode(ResetButton, INPUT_PULLUP);
  pinMode(BuzzerPin, OUTPUT);
  pinMode(ReloadPin, INPUT_PULLUP);
  pinMode(GreenLED, OUTPUT);
  pinMode(RedLED, OUTPUT);

  digitalWrite(GreenLED, HIGH);
  AmmoCount = Ammo;

  //double dot in Display
uint8_t segto;
int value = 1244;
segto = 0x80 | dis.encodeDigit((value / 100)%10);
dis.setSegments(&segto, 1, 1);
}

void loop()
{
  if (StartFlag == true)
  {
    GameStart();
  }

  dis.showNumberDec(AmmoCount, false, 2, 0);
  dis.showNumberDec(Lives, false, 2, 3);

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
        }
        else
        {
          digitalWrite(RedLED, HIGH);
          digitalWrite(GreenLED, LOW);
          CooldownTime = millis();
        }
        if (SelectButton == LOW)
          {
        teamSelectFlag = true;
        continue;
      }
  }
  }


  while (StartFlag == true)
  {
    if (digitalRead(ScrollButton) == LOW && millis() - CooldownTime >= ButWaitTime)
    {
      Lives++;
      dis.showNumberDec(Lives, false, 2, 0);
      CooldownTime = millis();
    }
      if (Lives >= 15)
      {
        Lives = 0;
      }
    else if (digitalRead(SelectButton) == LOW && Lives > 0 && millis() - CooldownTime >= ButWaitTime)
    {
      StartFlag = false;
    }
  }
}
  void HitDetect()
  {

    if (digitalRead(HitButton) == LOW && millis() - CooldownTime >= HitTime)
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
      dis.clear();
      tone(BuzzerPin, 400, 500);
    }
    else
    {
      dis.showNumberDec(0);
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

      AmmoCount--;
      dis.showNumberDec(AmmoCount, false, 2, 0);
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