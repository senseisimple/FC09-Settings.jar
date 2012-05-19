.class Lcom/android/settings/wifi/WifiApViewConnectedDevices$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApViewConnectedDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApViewConnectedDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$1;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "WifiApViewConnectedDevices"

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, action:Ljava/lang/String;
    const-string v3, "WifiApViewConnectedDevices"

    const-string v3, "onReceive()"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v3, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    const-string v3, "WifiApViewConnectedDevices"

    const-string v3, "event detected [ACTION_WIFI_AP_STA_STATUS_CHANGED]"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v3, "STA_NUM"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, ClientNum:I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$1;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 74
    const-string v3, "WifiApViewConnectedDevices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-lez v0, :cond_0

    .line 76
    const-string v3, "STA_LIST"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, sta_list:Ljava/lang/String;
    const-string v3, "WifiApViewConnectedDevices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sta_list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz v2, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$1;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-static {v3, v2}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$000(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Ljava/lang/String;)V

    .line 81
    .end local v2           #sta_list:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$1;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->devAdapter:Lcom/android/settings/wifi/DevListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/wifi/DevListAdapter;->notifyDataSetChanged()V

    .line 84
    .end local v0           #ClientNum:I
    :cond_1
    return-void
.end method
