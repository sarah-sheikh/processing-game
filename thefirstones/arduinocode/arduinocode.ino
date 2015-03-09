int sensorPin = 0;
int ledPin = 12;
int sensorValue = 0;
int sensePin = 2;    // the pin the FSR is attached to
int ledPin2 = 13;      // the pin the LED is attached to, use one capable of PWM

void setup() {
  pinMode (ledPin, OUTPUT);
  Serial.begin(9600);
  pinMode(ledPin2, OUTPUT);  // declare the ledPin as an OUTPUT
}

void loop() {
  sensorValue = analogRead(sensorPin);
  digitalWrite(ledPin, HIGH);
  delay(sensorValue);
  digitalWrite(ledPin, LOW);
  delay(sensorValue);

  int value = analogRead(sensePin) / 4; //the voltage on the pin divded by 4 (to scale from 10 bits (0-1024) to 8 (0-255)
  analogWrite(ledPin2, value);        //sets the LEDs intensity proportional to the pressure on the sensor
  Serial.println(value);              //print the value to the debug window
}
