.class Lcom/android/settings/wifi/ConnectedDevice;
.super Ljava/lang/Object;
.source "WifiApViewConnectedDevices.java"


# instance fields
.field Connected:Ljava/lang/String;

.field Connection_duration:Ljava/lang/String;

.field DeviceName:Ljava/lang/String;

.field IP:Ljava/lang/String;

.field MAC:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "mac"
    .parameter "addr"
    .parameter "connected"
    .parameter "connection_duration"

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/android/settings/wifi/ConnectedDevice;->DeviceName:Ljava/lang/String;

    .line 273
    iput-object p2, p0, Lcom/android/settings/wifi/ConnectedDevice;->MAC:Ljava/lang/String;

    .line 274
    iput-object p3, p0, Lcom/android/settings/wifi/ConnectedDevice;->IP:Ljava/lang/String;

    .line 275
    iput-object p4, p0, Lcom/android/settings/wifi/ConnectedDevice;->Connected:Ljava/lang/String;

    .line 276
    iput-object p5, p0, Lcom/android/settings/wifi/ConnectedDevice;->Connection_duration:Ljava/lang/String;

    .line 277
    return-void
.end method
