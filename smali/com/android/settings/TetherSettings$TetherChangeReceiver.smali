.class Lcom/android/settings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const-string v10, "TetherSettings"

    .line 366
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 368
    const-string v6, "availableArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 370
    .local v1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "activeArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 372
    .local v0, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "erroredArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 374
    .local v2, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/settings/TetherSettings;->access$800(Lcom/android/settings/TetherSettings;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 407
    .end local v0           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 377
    :cond_2
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$900(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 380
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 381
    const-string v6, "wifi_state"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 382
    .local v3, nApState:I
    const-string v6, "TetherSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI_AP_STATE_CHANGED_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 391
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v7, "WiMax"

    invoke-virtual {v6, v7}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wimax/WimaxManager;

    .line 392
    .local v5, wimaxManager:Landroid/net/wimax/WimaxManager;
    invoke-virtual {v5}, Landroid/net/wimax/WimaxManager;->getWimaxMode()I

    move-result v4

    .line 393
    .local v4, nMode:I
    const-string v6, "TetherSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    if-ne v4, v9, :cond_5

    .line 396
    :cond_4
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    const v7, 0x7f0902bc

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 397
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 398
    :cond_5
    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    .line 399
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    const v7, 0x7f0902bd

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 400
    iget-object v6, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
