.class Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;
.super Landroid/content/BroadcastReceiver;
.source "CachedBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DISCOVERY_FINISHED. mIsPairing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-static {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$000(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-static {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$000(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$002(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)Z

    .line 106
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$102(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)Z

    .line 107
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pair()V

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-static {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$300(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-static {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$200(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    return-void
.end method
