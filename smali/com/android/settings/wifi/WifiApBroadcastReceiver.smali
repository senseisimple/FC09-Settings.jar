.class public Lcom/android/settings/wifi/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 47
    sput-boolean v0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v10, "wifiap_power_mode_alarm_option"

    const-string v9, "com.android.settings.wifi.wifiap_power_mode_alarm"

    const-string v7, "WifiApBroadcastReceiver"

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v0, "WifiApBroadcastReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: action "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 56
    const-string v0, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 58
    packed-switch v0, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    :pswitch_0
    const-string v0, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "SAMSUNG_HOTSPOT"

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->prefs:Landroid/content/SharedPreferences;

    .line 94
    const-string v0, "wifiap_power_mode_alarm_option"

    const/4 v0, 0x3

    invoke-virtual {p2, v10, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 96
    const-string v2, "WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: WIFIAP_BATTERYMGR_ALARM->option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-nez v0, :cond_8

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "POWERMODE_VALUE"

    const/16 v3, 0x258

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 99
    if-eqz v0, :cond_6

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 101
    const-string v0, "WifiApBroadcastReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOTSPOT ALARM_START ~~~"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v4, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const/high16 v4, 0x1000

    invoke-static {p1, v6, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 107
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 108
    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 110
    sput-boolean v6, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 111
    sput-boolean v8, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 172
    :cond_1
    :goto_1
    const-string v0, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const-string v0, "WifiApBroadcastReceiver"

    const-string v0, "event detected [ACTION_WIFI_AP_STA_STATUS_CHANGED]"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v0, "STA_NUM"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 176
    if-nez v0, :cond_b

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    const-string v2, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 190
    :cond_2
    :goto_2
    const-string v0, "com.android.intent.action.MIP_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    const-string v0, "WifiApBroadcastReceiver"

    const-string v0, "[WIFIAP_MODEMNAI_MISSMATH]"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 195
    const-string v1, "WifiApBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile AP is disabled by [WIFIAP_MODEMNAI_MISSMATH] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 198
    :cond_3
    const-string v0, "WifiApBroadcastReceiver"

    const-string v0, "Mobile AP is disabled by [WIFIAP_MODEMNAI_MISSMATH]"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v0, "WifiApBroadcastReceiver"

    const-string v0, "Show the dialog"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    const-class v1, Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 204
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    const-string v1, "WIFIAP_MODEMNAI_MISSMATH"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 208
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 212
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 216
    :cond_4
    return-void

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v0

    .line 66
    if-nez v0, :cond_5

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v2, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 74
    :cond_5
    const/4 v0, 0x5

    invoke-static {v0, v8}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryUse(IZ)V

    goto/16 :goto_0

    .line 80
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v2, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x2

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 86
    const/4 v0, 0x5

    invoke-static {v0, v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryUse(IZ)V

    goto/16 :goto_0

    .line 113
    :cond_6
    sget-boolean v0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v0, :cond_7

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v2, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const/high16 v2, 0x1000

    invoke-static {p1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 119
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 120
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 122
    :cond_7
    sput-boolean v6, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_1

    .line 124
    :cond_8
    if-ne v0, v8, :cond_a

    .line 126
    sput-boolean v8, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 127
    sput-boolean v6, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 130
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 131
    const-string v2, "MobileAPCloseService"

    invoke-virtual {v0, v8, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 133
    :try_start_1
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :goto_4
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 142
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "POWERMODE_VALUE"

    const/16 v5, 0x258

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 144
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v4

    .line 145
    const/4 v5, 0x3

    if-ne v0, v5, :cond_9

    if-nez v4, :cond_9

    if-eqz v3, :cond_9

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 151
    :cond_9
    if-eqz v2, :cond_1

    .line 153
    :try_start_2
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v2, "WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot release wake lock ~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 134
    :catch_1
    move-exception v0

    .line 135
    const-string v3, "WifiApBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot acquire wake lock ~~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 159
    :cond_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 160
    sget-boolean v0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    const-string v2, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const/high16 v2, 0x1000

    invoke-static {p1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 164
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 165
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 166
    sput-boolean v6, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_1

    .line 184
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    const-string v2, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x2

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 210
    :catch_2
    move-exception v0

    goto/16 :goto_3

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
