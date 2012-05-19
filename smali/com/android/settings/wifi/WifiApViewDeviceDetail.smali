.class public Lcom/android/settings/wifi/WifiApViewDeviceDetail;
.super Landroid/preference/PreferenceActivity;
.source "WifiApViewDeviceDetail.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 37
    const-string v0, "WifiApViewDeviceDetail"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApViewDeviceDetail;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final MiliSec_to_HHMMSS(J)Ljava/lang/String;
    .locals 18
    .parameter "milisec"

    .prologue
    .line 63
    const-wide/16 v13, 0x3e8

    div-long v11, p1, v13

    .line 64
    .local v11, total_sec:J
    const-wide/16 v13, 0xe10

    div-long v3, v11, v13

    .line 65
    .local v3, hour:J
    const-wide/16 v13, 0xe10

    rem-long v5, v11, v13

    .line 66
    .local v5, hour_rest:J
    const-wide/16 v13, 0x3c

    div-long v7, v5, v13

    .line 67
    .local v7, min:J
    const-wide/16 v13, 0x3c

    rem-long v9, v5, v13

    .line 69
    .local v9, sec:J
    const-string v13, "WifiApViewDeviceDetail"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "milisec:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/total_sec:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/hour:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/hour_rest:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/min:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%02d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%02d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%02d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApViewDeviceDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v9, 0x7f040031

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApViewDeviceDetail;->addPreferencesFromResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApViewDeviceDetail;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 44
    .local v6, intent:Landroid/content/Intent;
    const-string v9, "ip_address"

    const-string v10, "IPADDR"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiApViewDeviceDetail;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v9, "mac_address"

    const-string v10, "MACADDR"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiApViewDeviceDetail;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v9, "CON_TIME"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 48
    .local v1, connected_milisec:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 49
    .local v7, now:J
    const-string v9, "WifiApViewDeviceDetail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current_time :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sub-long v4, v7, v1

    .line 54
    .local v4, duration_milisec:J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v9, "MM/dd/yyyy HH:mm"

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, connected_form:Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, connected_time:Ljava/lang/String;
    const-string v9, "connecting_time"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WifiApViewDeviceDetail;->MiliSec_to_HHMMSS(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiApViewDeviceDetail;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v9, "connect_time"

    invoke-direct {p0, v9, v3}, Lcom/android/settings/wifi/WifiApViewDeviceDetail;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
