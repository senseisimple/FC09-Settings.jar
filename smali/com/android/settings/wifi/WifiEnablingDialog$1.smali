.class Lcom/android/settings/wifi/WifiEnablingDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnablingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnablingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnablingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnablingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnablingDialog$1;->this$0:Lcom/android/settings/wifi/WifiEnablingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x4

    const-string v4, "WifiEnablingDialog"

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 64
    .local v1, wifiState:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 65
    const-string v2, "WifiEnablingDialog"

    const-string v2, "Wi-Fi has enabled, Dialog will be finished"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablingDialog$1;->this$0:Lcom/android/settings/wifi/WifiEnablingDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiEnablingDialog;->finish()V

    .line 72
    .end local v1           #wifiState:I
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v1       #wifiState:I
    :cond_1
    if-ne v1, v3, :cond_0

    .line 68
    const-string v2, "WifiEnablingDialog"

    const-string v2, "Wi-Fi error has occured, Dialog will be finished"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablingDialog$1;->this$0:Lcom/android/settings/wifi/WifiEnablingDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiEnablingDialog;->finish()V

    goto :goto_0
.end method
