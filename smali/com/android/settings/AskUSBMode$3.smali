.class Lcom/android/settings/AskUSBMode$3;
.super Landroid/content/BroadcastReceiver;
.source "AskUSBMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AskUSBMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AskUSBMode;


# direct methods
.method constructor <init>(Lcom/android/settings/AskUSBMode;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/AskUSBMode$3;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, action:Ljava/lang/String;
    const-string v2, "AskUSBMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/settings/AskUSBMode$3;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-virtual {v2}, Lcom/android/settings/AskUSBMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v6, v2, :cond_2

    move v1, v6

    .line 185
    .local v1, adbCheck:Z
    :goto_0
    if-nez v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/settings/AskUSBMode$3;->this$0:Lcom/android/settings/AskUSBMode;

    const-string v3, "ASKON"

    invoke-static {v2, v3}, Lcom/android/settings/AskUSBMode;->access$000(Lcom/android/settings/AskUSBMode;Ljava/lang/String;)V

    .line 187
    const-string v2, "persist.service.usb.setting"

    const-string v3, "3"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AskUSBMode$3;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-virtual {v2}, Lcom/android/settings/AskUSBMode;->finish()V

    .line 191
    .end local v1           #adbCheck:Z
    :cond_1
    return-void

    :cond_2
    move v1, v5

    .line 183
    goto :goto_0
.end method
