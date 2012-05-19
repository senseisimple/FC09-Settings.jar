.class Lcom/android/settings/wifi/WifiApSettings$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 251
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v12, "WifiApSettings"

    .line 254
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 256
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const-string v8, "wifi_state"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiApSettings;->access$000(Lcom/android/settings/wifi/WifiApSettings;I)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 259
    const-string v7, "level"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 260
    .local v2, level:I
    const-string v7, "plugged"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 261
    .local v4, plugged:I
    invoke-static {}, Lcom/android/settings/wifi/WifiApSettings;->access$100()I

    move-result v7

    if-lt v7, v2, :cond_2

    if-nez v4, :cond_2

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_2

    .line 262
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7, v9}, Lcom/android/settings/wifi/WifiApSettings;->access$302(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 263
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 264
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    const v8, 0x7f09055b

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 265
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$400(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 268
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7, v10}, Lcom/android/settings/wifi/WifiApSettings;->access$302(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 269
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 270
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$400(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 275
    .end local v2           #level:I
    .end local v4           #plugged:I
    :cond_3
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 276
    const-string v7, "state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 277
    .local v1, extra:Z
    const/4 v6, 0x0

    .line 278
    .local v6, tempState:I
    if-eqz v1, :cond_4

    .line 279
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiApEnabler;->savePreviousWifiApStateForAirpalenMode()I

    move-result v6

    goto/16 :goto_0

    .line 282
    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 283
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiApEnabler;->getPreviousWifiApStateForAirpalenMode()I

    move-result v6

    .line 284
    if-eq v6, v9, :cond_0

    .line 285
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 290
    .end local v1           #extra:Z
    .end local v6           #tempState:I
    :cond_5
    const-string v7, "android.net.wimax.MODE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 291
    const-string v7, "usbMode"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 292
    .local v3, mode:I
    const-string v7, "WifiApSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received broadcast WIMAX_MODE_CHANGED_ACTION:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-ne v3, v9, :cond_6

    .line 295
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 296
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 300
    :cond_6
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 301
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 304
    .end local v3           #mode:I
    :cond_7
    const-string v7, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 305
    const-string v7, "wimax_status"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 306
    .local v5, status:I
    const-string v7, "WifiApSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received broadcast WIMAX_STATUS_CHANGED_ACTION:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eq v5, v9, :cond_8

    if-nez v5, :cond_0

    .line 308
    :cond_8
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 309
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 316
    .end local v5           #status:I
    :cond_9
    const-string v7, "android.net.wifi.supplicant.SECURITY_POLICY_CHANGE_WIFI_AP_DIALOG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 317
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiApSettings;->access$700(Lcom/android/settings/wifi/WifiApSettings;)V

    goto/16 :goto_0
.end method
