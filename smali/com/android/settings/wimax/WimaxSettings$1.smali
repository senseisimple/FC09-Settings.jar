.class Lcom/android/settings/wimax/WimaxSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WimaxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "WimaxSettings"

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v1}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WimaxSettings"

    const-string v1, "Received broadcast WIMAX_STATE_CHANGED_ACTION"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    const-string v1, "WimaxState"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wimax/WimaxState;

    invoke-static {v2, v1}, Lcom/android/settings/wimax/WimaxSettings;->access$102(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/wimax/WimaxState;)Landroid/net/wimax/WimaxState;

    .line 113
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    const-string v2, "WimaxStateDetail"

    const/16 v3, 0x8

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->access$202(Lcom/android/settings/wimax/WimaxSettings;I)I

    .line 114
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v1}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received wimaxstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxSettings;->access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/wimax/WimaxState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extraStateDetail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxSettings;->access$200(Lcom/android/settings/wimax/WimaxSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxSettings;->access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/wimax/WimaxState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v3}, Lcom/android/settings/wimax/WimaxSettings;->access$200(Lcom/android/settings/wimax/WimaxSettings;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/wimax/WimaxSettings;->access$300(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/wimax/WimaxState;I)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v1}, Lcom/android/settings/wimax/WimaxSettings;->access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v1, v2, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxSettings;->access$200(Lcom/android/settings/wimax/WimaxSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->updateIdleWimaxSignal(I)V

    .line 127
    :cond_2
    :goto_0
    return-void

    .line 119
    :cond_3
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v1}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "WimaxSettings"

    const-string v1, "Received broadcast WIMAX_STATUS_CHANGED_ACTION"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    const-string v2, "wimax_status"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->access$402(Lcom/android/settings/wimax/WimaxSettings;I)I

    .line 122
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxSettings;->access$400(Lcom/android/settings/wimax/WimaxSettings;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->access$500(Lcom/android/settings/wimax/WimaxSettings;I)V

    goto :goto_0

    .line 123
    :cond_5
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v1}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "WimaxSettings"

    const-string v1, "Received  broadcast WimaxManager.SIGNAL_LEVEL_CHANGED_ACTION"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    const-string v2, "newSignalLevel"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->updateWimaxSignalLevel(I)V

    goto :goto_0
.end method
