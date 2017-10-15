#include <Arduino.h>
#include <WiFi.h>
#include <WiFiMulti.h>
#include <time.h>

WiFiMulti WiFiMulti;

const char* ssid = "your-ssid";
const char* password = "your-password";

const int JST = 3600*(-9);

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

