.class public Lcom/android/settings/wifi/AdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static dns1_orig:Ljava/lang/String;

.field private static dns2_orig:Ljava/lang/String;

.field private static gateway_orig:Ljava/lang/String;

.field private static ip_address_orig:Ljava/lang/String;

.field private static isCancel:Z

.field private static netmask_orig:Ljava/lang/String;

.field private static port_orig:Ljava/lang/String;

.field private static proxy_orig:Ljava/lang/String;

.field private static use_static_ip_orig:I

.field private static wifi_sleep_policy_orig:I


# instance fields
.field private mPreferenceKeys:[Ljava/lang/String;

.field private mSettingNames:[Ljava/lang/String;

.field private mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_http_proxy"

    aput-object v1, v0, v3

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v4

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v5

    const-string v1, "wifi_static_netmask"

    aput-object v1, v0, v6

    const-string v1, "wifi_static_dns1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wifi_static_dns2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_http_proxy"

    aput-object v1, v0, v3

    const-string v1, "ip_address"

    aput-object v1, v0, v4

    const-string v1, "gateway"

    aput-object v1, v0, v5

    const-string v1, "netmask"

    aput-object v1, v0, v6

    const-string v1, "dns1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dns2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method

.method private initSleepPolicyPreference()V
    .locals 5

    .prologue
    .line 210
    const-string v2, "sleep_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 211
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 214
    .local v1, value:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 327
    const/4 v1, 0x1

    .line 331
    :goto_0
    return v1

    .line 330
    :cond_0
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 331
    .local v0, validIp:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private readWifiOldSettings()V
    .locals 4

    .prologue
    const-string v2, ""

    .line 472
    const-string v2, "AdvancedSettings"

    const-string v3, "readWifiOldSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 476
    .local v1, tContentReslover:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "wifi_sleep_policy"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/wifi/AdvancedSettings;->wifi_sleep_policy_orig:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    :try_start_1
    const-string v2, "wifi_http_proxy"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->proxy_orig:Ljava/lang/String;

    .line 482
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->proxy_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->proxy_orig:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 488
    :cond_0
    :goto_1
    :try_start_2
    const-string v2, "wifi_http_port"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->port_orig:Ljava/lang/String;

    .line 489
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->port_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->port_orig:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 494
    :cond_1
    :goto_2
    :try_start_3
    const-string v2, "wifi_use_static_ip"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/settings/wifi/AdvancedSettings;->use_static_ip_orig:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 498
    :goto_3
    :try_start_4
    const-string v2, "wifi_static_ip"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->ip_address_orig:Ljava/lang/String;

    .line 499
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->ip_address_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->ip_address_orig:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 504
    :cond_2
    :goto_4
    :try_start_5
    const-string v2, "wifi_static_netmask"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->netmask_orig:Ljava/lang/String;

    .line 505
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->netmask_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->netmask_orig:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 510
    :cond_3
    :goto_5
    :try_start_6
    const-string v2, "wifi_static_gateway"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->gateway_orig:Ljava/lang/String;

    .line 511
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->gateway_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 512
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->gateway_orig:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 516
    :cond_4
    :goto_6
    :try_start_7
    const-string v2, "wifi_static_dns1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns1_orig:Ljava/lang/String;

    .line 517
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns1_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 518
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns1_orig:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 522
    :cond_5
    :goto_7
    :try_start_8
    const-string v2, "wifi_static_dns2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns2_orig:Ljava/lang/String;

    .line 523
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns2_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 524
    const-string v2, ""

    sput-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns2_orig:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 529
    :cond_6
    :goto_8
    return-void

    .line 477
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 479
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 484
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 486
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 491
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 492
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 495
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 496
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 501
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    move-object v0, v2

    .line 502
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 507
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    move-object v0, v2

    .line 508
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 513
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    move-object v0, v2

    .line 514
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 519
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v2

    move-object v0, v2

    .line 520
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 525
    .end local v0           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 526
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private refreshWifiInfo()V
    .locals 15

    .prologue
    .line 445
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 446
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 448
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v8, "mac_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 449
    .local v6, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v4, :cond_2

    const/4 v8, 0x0

    move-object v3, v8

    .line 450
    .local v3, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v3

    :goto_1
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 453
    const-string v8, "current_ip_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 454
    .local v5, wifiIpAddressPref:Landroid/preference/Preference;
    const/4 v2, 0x0

    .line 455
    .local v2, ipAddress:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 456
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    int-to-long v0, v8

    .line 457
    .local v0, addr:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_1

    .line 459
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_0

    const-wide v8, 0x100000000L

    add-long/2addr v0, v8

    .line 460
    :cond_0
    const-string v8, "%d.%d.%d.%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v11, 0xff

    and-long/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x8

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x10

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/16 v11, 0x18

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 464
    .end local v0           #addr:J
    :cond_1
    if-nez v2, :cond_4

    const v8, 0x7f090247

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    return-void

    .line 449
    .end local v2           #ipAddress:Ljava/lang/String;
    .end local v3           #macAddress:Ljava/lang/String;
    .end local v5           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_0

    .line 450
    .restart local v3       #macAddress:Ljava/lang/String;
    :cond_3
    const v8, 0x7f090247

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .restart local v2       #ipAddress:Ljava/lang/String;
    .restart local v5       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_4
    move-object v8, v2

    .line 464
    goto :goto_2
.end method

.method private updateSettingsProvider()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-string v7, "wifi_http_port"

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 425
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v4, "wifi_use_static_ip"

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    const-string v4, "wifi_http_port"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 430
    .local v3, wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_http_port"

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 433
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 434
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 435
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 437
    if-nez v1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_http_port"

    invoke-static {v5, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/AdvancedSettings;->updateWifiProxyURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_1
    move v5, v8

    .line 425
    goto :goto_0

    .line 442
    .restart local v1       #i:I
    .restart local v3       #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_2
    return-void
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v8, "wifi_http_port"

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 399
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v6, "wifi_use_static_ip"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 403
    const-string v5, "wifi_http_port"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    .line 404
    .local v4, wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    const-string v5, "wifi_http_port"

    invoke-static {v0, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, settingValue:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 411
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 414
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    .end local v4           #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_0
    move v6, v7

    .line 399
    goto :goto_0

    .line 420
    .restart local v1       #i:I
    .restart local v3       #settingValue:Ljava/lang/String;
    .restart local v4       #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_1
    return-void
.end method

.method private updateWifiProxyURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "ipAddress"
    .parameter "port"

    .prologue
    .line 584
    const-string v1, "AdvancedSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ipAddress  in Settings APP :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t:Port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, url:Ljava/lang/String;
    const-string v1, "net.wifi.http-proxy"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private writeWifiOldSettings()V
    .locals 4

    .prologue
    .line 532
    const-string v2, "AdvancedSettings"

    const-string v3, "writeWifiOldSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 536
    .local v1, tContentReslover:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "wifi_sleep_policy"

    sget v3, Lcom/android/settings/wifi/AdvancedSettings;->wifi_sleep_policy_orig:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    :try_start_1
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->proxy_orig:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 541
    const-string v2, "wifi_http_proxy"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->proxy_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    :cond_0
    :goto_1
    :try_start_2
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->port_orig:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 546
    const-string v2, "wifi_http_port"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->port_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 550
    :cond_1
    :goto_2
    :try_start_3
    const-string v2, "wifi_use_static_ip"

    sget v3, Lcom/android/settings/wifi/AdvancedSettings;->use_static_ip_orig:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 554
    :goto_3
    :try_start_4
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->ip_address_orig:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 555
    const-string v2, "wifi_static_ip"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->ip_address_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 559
    :cond_2
    :goto_4
    :try_start_5
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->netmask_orig:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 560
    const-string v2, "wifi_static_netmask"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->netmask_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 564
    :cond_3
    :goto_5
    :try_start_6
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->gateway_orig:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 565
    const-string v2, "wifi_static_gateway"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->gateway_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 569
    :cond_4
    :goto_6
    :try_start_7
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns1_orig:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 570
    const-string v2, "wifi_static_dns1"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->dns1_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 574
    :cond_5
    :goto_7
    :try_start_8
    sget-object v2, Lcom/android/settings/wifi/AdvancedSettings;->dns2_orig:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 575
    const-string v2, "wifi_static_dns2"

    sget-object v3, Lcom/android/settings/wifi/AdvancedSettings;->dns2_orig:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 580
    :cond_6
    :goto_8
    return-void

    .line 537
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 538
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 542
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 543
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 547
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 548
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 551
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 552
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 556
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    move-object v0, v2

    .line 557
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 561
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    move-object v0, v2

    .line 562
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 566
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    move-object v0, v2

    .line 567
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 571
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v2

    move-object v0, v2

    .line 572
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 576
    .end local v0           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 577
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v3, 0x7f04002f

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->addPreferencesFromResource(I)V

    .line 108
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/wifi/AdvancedSettings;->isCancel:Z

    .line 109
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->readWifiOldSettings()V

    .line 111
    const-string v3, "use_static_ip"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    .line 112
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    const-string v3, "wifi_http_port"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 122
    .local v2, wifiHttpProxyEditText:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 129
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1           #preference:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 366
    const/4 v0, 0x1

    const v1, 0x7f09019e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200fd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 369
    const/4 v0, 0x2

    const v1, 0x7f09019f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200da

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 372
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 231
    sget-boolean v0, Lcom/android/settings/wifi/AdvancedSettings;->isCancel:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->writeWifiOldSettings()V

    .line 234
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 236
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 220
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 224
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 378
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 393
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 381
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 383
    goto :goto_0

    .line 387
    :pswitch_1
    sput-boolean v1, Lcom/android/settings/wifi/AdvancedSettings;->isCancel:Z

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 390
    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v10, 0x7f090196

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, "wifi_http_port"

    .line 240
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, key:Ljava/lang/String;
    if-nez v3, :cond_0

    move v8, v12

    .line 322
    .end local p2
    :goto_0
    return v8

    .line 243
    .restart local p2
    :cond_0
    const-string v8, "num_channels"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 245
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 246
    .local v4, numChannels:I
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 247
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/net/wifi/WifiManager;->setNumAllowedChannels(IZ)Z

    move-result v8

    if-nez v8, :cond_1

    .line 248
    const v8, 0x7f090196

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #numChannels:I
    .end local v7           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_1
    move v8, v12

    .line 322
    goto :goto_0

    .line 251
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 252
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 254
    goto :goto_0

    .line 257
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v8, "sleep_policy"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 259
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_sleep_policy"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 261
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 262
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const v8, 0x7f09019a

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 264
    goto :goto_0

    .line 267
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_3
    const-string v8, "use_static_ip"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 268
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 271
    .local v6, value:Z
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_use_static_ip"

    if-eqz v6, :cond_4

    move v10, v12

    :goto_2
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 273
    :catch_2
    move-exception v8

    move-object v1, v8

    .restart local v1       #e:Ljava/lang/NumberFormatException;
    move v8, v11

    .line 274
    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v10, v11

    .line 271
    goto :goto_2

    .line 278
    .end local v6           #value:Z
    .restart local p2
    :cond_5
    const-string v8, "wifi_http_port"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 279
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 281
    .local v5, proxyport:Ljava/lang/String;
    :try_start_3
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_http_port"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_http_port"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/wifi/AdvancedSettings;->updateWifiProxyURL(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 287
    :catch_3
    move-exception v8

    move-object v1, v8

    .restart local v1       #e:Ljava/lang/NumberFormatException;
    move v8, v11

    .line 288
    goto/16 :goto_0

    .line 293
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #proxyport:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 296
    .local v6, value:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 300
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 301
    const v8, 0x7f0901a0

    invoke-static {p0, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 302
    goto/16 :goto_0

    .line 308
    :cond_7
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 310
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 315
    :cond_8
    if-eqz v3, :cond_9

    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v9, v9, v11

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_http_port"

    invoke-static {v9, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/wifi/AdvancedSettings;->updateWifiProxyURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateUi()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initSleepPolicyPreference()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->refreshWifiInfo()V

    .line 173
    return-void
.end method
