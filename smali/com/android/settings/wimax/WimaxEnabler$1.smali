.class Lcom/android/settings/wimax/WimaxEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WimaxEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    const-string v6, "WimaxEnabler"

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v5, "wimax_status"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "previous_wimax_status"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/wimax/WimaxEnabler;->access$000(Lcom/android/settings/wimax/WimaxEnabler;II)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v4, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v4, "WimaxState"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wimax/WimaxState;

    invoke-static {v5, v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$102(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/wimax/WimaxState;)Landroid/net/wimax/WimaxState;

    .line 100
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v5, "WimaxStateDetail"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$202(Lcom/android/settings/wimax/WimaxEnabler;I)I

    .line 101
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "WimaxEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received WimaxState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$100(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/net/wimax/WimaxState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extraStateDetail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$200(Lcom/android/settings/wimax/WimaxEnabler;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$100(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/net/wimax/WimaxState;

    move-result-object v5

    const-string v6, "WimaxStateDetail"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/wimax/WimaxEnabler;->access$400(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/wimax/WimaxState;I)V

    goto :goto_0

    .line 103
    :cond_3
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 104
    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, nApState:I
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    move v5, v9

    :goto_1
    invoke-static {v4, v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$502(Lcom/android/settings/wimax/WimaxEnabler;Z)Z

    .line 106
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WimaxEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received broadcast WifiManager.WIFI_AP_STATE_CHANGED_ACTION :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$500(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move v5, v7

    .line 105
    goto :goto_1

    .line 108
    .end local v1           #nApState:I
    :cond_5
    const-string v4, "android.net.wimax.WIMAX_AUTH_ERROR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 109
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "WimaxEnabler"

    const-string v4, "Received broadcast WIMAX_AUTH_ERROR"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v5, "auth_error"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/wimax/WimaxEnabler;->access$600(Lcom/android/settings/wimax/WimaxEnabler;I)V

    goto/16 :goto_0

    .line 111
    :cond_7
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 112
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 113
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v9

    :goto_2
    invoke-static {v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$702(Z)Z

    .line 114
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WimaxEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi connected ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/wimax/WimaxEnabler;->access$700()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v4, v7

    .line 113
    goto :goto_2

    .line 115
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    :cond_9
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 117
    .local v3, state:I
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "WimaxEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_a
    if-ne v3, v9, :cond_0

    .line 119
    invoke-static {v7}, Lcom/android/settings/wimax/WimaxEnabler;->access$702(Z)Z

    goto/16 :goto_0
.end method
