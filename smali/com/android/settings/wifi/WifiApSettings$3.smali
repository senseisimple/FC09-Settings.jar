.class Lcom/android/settings/wifi/WifiApSettings$3;
.super Landroid/telephony/PhoneStateListener;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "WifiApSettings"

    .line 471
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->access$802(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 473
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 494
    const-string v0, "onSerivceStateChanged()"

    const-string v1, "Unhandled state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1100(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1000(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$800(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->setProhibitionWifiAp(Z)V

    .line 498
    return-void

    .line 476
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$900(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->access$1002(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    goto :goto_0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/WifiApSettings;->access$1002(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    goto :goto_0

    .line 485
    :pswitch_1
    const-string v0, "WifiApSettings"

    const-string v0, "ServiceState.STATE_EMERGENCY_ONLY has been set"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :pswitch_2
    const-string v0, "WifiApSettings"

    const-string v0, "ServiceState.STATE_POWER_OFF has been set"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->access$1002(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 497
    goto :goto_1

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
