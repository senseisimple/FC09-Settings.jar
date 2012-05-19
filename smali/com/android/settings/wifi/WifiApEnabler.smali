.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCheckBox:Landroid/preference/CheckBoxPreference;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private prohibition:Z

.field private wifiState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter "context"
    .parameter "checkBox"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    .line 82
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 85
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->wifiState:I

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    .line 196
    .local v0, isAirplaneMode:Z
    :goto_0
    if-nez v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 201
    :goto_1
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v3

    .line 194
    goto :goto_0

    .line 199
    .restart local v0       #isAirplaneMode:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    packed-switch p1, :pswitch_data_0

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 341
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 343
    :goto_0
    return-void

    .line 317
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 325
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 330
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 334
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 15
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 290
    const/4 v12, 0x0

    .line 291
    .local v12, wifiTethered:Z
    const/4 v11, 0x0

    .line 293
    .local v11, wifiErrored:Z
    move-object/from16 v1, p2

    .local v1, arr$:[Ljava/lang/Object;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v1, v4

    .line 294
    .local v7, o:Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 295
    .local v9, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v8, v2, v3

    .line 296
    .local v8, regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    .line 295
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 293
    .end local v8           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 299
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #o:Ljava/lang/Object;
    .end local v9           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v1, p3

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v7, v1, v4

    .line 300
    .restart local v7       #o:Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 301
    .restart local v9       #s:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v6, :cond_4

    aget-object v8, v2, v3

    .line 302
    .restart local v8       #regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    .line 301
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 299
    .end local v8           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_2

    .line 306
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #o:Ljava/lang/Object;
    .end local v9           #s:Ljava/lang/String;
    :cond_5
    if-eqz v12, :cond_7

    .line 307
    iget-object v13, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 308
    .local v10, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 312
    .end local v10           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 309
    :cond_7
    if-eqz v11, :cond_6

    .line 310
    iget-object v13, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f090162

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public confirmRoamingForWifiAp()V
    .locals 4

    .prologue
    const-string v3, "WifiApEnabler"

    .line 148
    const-string v0, "WifiApEnabler"

    const-string v0, "confirmRoamingForWifiAp"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiDisableForWifiAp()V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_2
    const-string v0, "WifiApEnabler"

    const-string v0, "confirmRoamingForWifiAp: setWifiApEnabled - error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public confirmWifiAp()V
    .locals 4

    .prologue
    const-string v3, "WifiApEnabler"

    .line 164
    const-string v0, "WifiApEnabler"

    const-string v0, "confirmWifiAp"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiDisableForWifiAp()V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_2
    const-string v0, "WifiApEnabler"

    const-string v0, "confirmWifiAp: setWifiApEnabled - error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public getPreviousWifiApStateForAirpalenMode()I
    .locals 6

    .prologue
    const-string v5, "WifiApEnabler"

    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, savedState:I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifiap_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 139
    :goto_0
    const-string v3, "WifiApEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreviousWifiApStateForAirpalenMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v2

    .line 136
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 137
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiApEnabler"

    const-string v3, "getPreviousWifiApStateForAirpalenMode: Settings.Secure.getInt error"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->wifiState:I

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 206
    .local v0, cr:Landroid/content/ContentResolver;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 211
    .local v1, enable:Z
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->wifiState:I

    .line 213
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->prohibition:Z

    if-nez v2, :cond_0

    .line 214
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->wifiState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->wifiState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 250
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    return-void
.end method

.method public savePreviousWifiApStateForAirpalenMode()I
    .locals 5

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 124
    .local v1, currentState:I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wifiap_saved_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    const-string v2, "WifiApEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savePreviousWifiApStateForAirpalenMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v1
.end method

.method public setProhibitionWifiAp(Z)V
    .locals 3
    .parameter "prohibition"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->prohibition:Z

    .line 104
    const-string v0, "WifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProhibitionWifiAp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public setWifiApDisable()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "wifi_saved_state"

    .line 255
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 257
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 265
    :goto_0
    const/4 v1, 0x0

    .line 267
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 271
    :goto_1
    if-ne v1, v5, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 273
    const-string v2, "wifi_saved_state"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    :cond_0
    return-void

    .line 261
    .end local v1           #wifiSavedState:I
    :cond_1
    const-string v2, "WifiApEnabler"

    const-string v3, "onPreferenceChange - error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090162

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 268
    .restart local v1       #wifiSavedState:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setWifiDisableForWifiAp()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "WifiApEnabler"

    .line 108
    const-string v1, "WifiApEnabler"

    const-string v1, "setWifiDisableForWifiAp"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 111
    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v1, "WifiApEnabler"

    const-string v1, "setWifiDisableForWifiAp: setWifiApEnabled - error"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090162

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090554

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 287
    return-void
.end method
