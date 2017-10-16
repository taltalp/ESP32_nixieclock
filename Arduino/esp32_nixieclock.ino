#include <Arduino.h>
#include <WiFi.h>
#include <WiFiMulti.h>
#include <time.h>

WiFiMulti WiFiMulti;

const char* ssid = "your-ssid";
const char* password = "your-password";

const int JST = 3600*(-9);

const int NIXIE_A = 1;
const int NIXIE_B = 2;
const int NIXIE_C = 3;
const int NIXIE_D = 4;

const int NIXIE_COM_0 = 5;
const int NIXIE_COM_1 = 6;
const int NIXIE_COM_2 = 7;
const int NIXIE_COM_3 = 8;
const int NIXIE_COM_4 = 9;
const int NIXIE_COM_5 = 10;

int[] nixie_data = [0, 0, 0, 0, 0, 0];
int[] nixie_en = [0, 0, 0, 0, 0, 0];

// Init Nixie
void initNixie(){
    pinMode(NIXIE_A, OUTPUT);
    pinMode(NIXIE_B, OUTPUT);
    pinMode(NIXIE_C, OUTPUT);
    pinMode(NIXIE_D, OUTPUT);

    pinMode(NIXIE_COM_0, OUTPUT);
    pinMode(NIXIE_COM_1, OUTPUT);
    pinMode(NIXIE_COM_2, OUTPUT);
    pinMode(NIXIE_COM_3, OUTPUT);
    pinMode(NIXIE_COM_4, OUTPUT);
    pinMode(NIXIE_COM_5, OUTPUT);

    digitalWrite(NIXIE_A, LOW);
    digitalWrite(NIXIE_B, LOW);
    digitalWrite(NIXIE_C, LOW);
    digitalWrite(NIXIE_D, LOW);

    digitalWrite(NIXIE_COM_0, HIGH);
    digitalWrite(NIXIE_COM_1, HIGH);
    digitalWrite(NIXIE_COM_2, HIGH);
    digitalWrite(NIXIE_COM_3, HIGH);
    digitalWrite(NIXIE_COM_4, HIGH);
    digitalWrite(NIXIE_COM_5, HIGH);  
}

// Set Nixie Value
int setNixieValue(int num, int val){
    if (num >= 0 && num <= 5 && val >= 0 && val <= 9) {
        nixie_data[num] = val;
    } else {
        return -1;
    }
    return 0;
}

// Get Nixie Value
int getNixieValue(int num){
    if (num >= 0 && num <= 5){
        return nixie_data[num];
    } else {
        return -1;
    }
}

// Set Nixie Enable
int setNixieEnable(int num, int val){
    if (num >= 0 && num <= 5 && val >= 0 && val <= 1) {
        nixie_en[num] = val;
    } else {
        return -1;
    }
    return 0;
}

// Get Nixie Enable
int getNixieEnable(int num){
    if (num >= 0 && num <= 5) {
        return nixie_en[num];
    } else {
        return -1;
    }
}

// Slot Nixie
int slotNixie(){
    return 0;
}

void setup()
{
    Serial.begin(115200);
    delay(10);

    // We start by connecting to a WiFi network
    WiFiMulti.addAP(ssid, password);

    Serial.println();
    Serial.println();
    Serial.print("Wait for WiFi... ");

    while(WiFiMulti.run() != WL_CONNECTED) {
        Serial.print(".");
        delay(500);
    }

    Serial.println("");
    Serial.println("WiFi connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());

    delay(500);

    configTime(JST, 0, "ntp.nict.jp", "ntp.jst.mfeed.ac.jp");
}


void loop()
{
    time_t t;
    struct tm *tm;
    static const char *wd[7] = {"Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat"};

    t = time(NULL);
    tm = localtime(&t);
    Serial.printf("%04d/%02d/%02d(%s) %02d:%02d:%02d\n",
                   tm->tm_year+1900, tm->tm_mon+1, tm->tm_mday,
                   wd[tm->tm_wday],
                   tm->tm_hour, tm->tm_min, tm->tm_sec);

    delay(1000);
}

