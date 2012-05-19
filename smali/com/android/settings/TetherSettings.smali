.class public Lcom/android/settings/TetherSettings;
.super Landroid/preference/PreferenceActivity;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static mLowBatteryLevel:I


# instance fields
.field private bLowBattery:Z

.field private bNoSim:Z

.field private bOutOfCoverage:Z

.field private bRoaming:Z

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiApSettings:Landroid/preference/PreferenceScreen;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 112
    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->bRoaming:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->bNoSim:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->bOutOfCoverage:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->bLowBattery:Z

    .line 120
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v0, Lcom/android/settings/TetherSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$2;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 364
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/android/settings/TetherSettings;->mLowBatteryLevel:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->bLowBattery:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->bLowBattery:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/TetherSettings;)Lcom/android/settings/wifi/WifiApEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->bRoaming:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->bRoaming:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->bOutOfCoverage:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->bOutOfCoverage:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->bNoSim:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/TetherSettings;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method private findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 640
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 641
    .local v4, iface:Ljava/lang/String;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 642
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v4

    .line 647
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v8

    .line 641
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 640
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 647
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 448
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 451
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method private updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 22
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 459
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 461
    .local v4, cm:Landroid/net/ConnectivityManager;
    const/16 v17, 0x0

    .line 462
    .local v17, usbTethered:Z
    const/4 v14, 0x0

    .line 463
    .local v14, usbAvailable:Z
    const/4 v15, 0x0

    .line 464
    .local v15, usbError:I
    const/16 v16, 0x0

    .line 465
    .local v16, usbErrored:Z
    const-string v19, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 467
    .local v9, massStorageActive:Z
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/Object;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v11, v2, v6

    .line 468
    .local v11, o:Ljava/lang/Object;
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 469
    .local v13, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object v3, v0

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v12, v3, v5

    .line 470
    .local v12, regex:Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 471
    const/4 v14, 0x1

    .line 472
    if-nez v15, :cond_0

    .line 473
    invoke-virtual {v4, v13}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v15

    .line 469
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 467
    .end local v12           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_0

    .line 478
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v11           #o:Ljava/lang/Object;
    .end local v13           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Ljava/lang/Object;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v6       #i$:I
    :goto_2
    if-ge v6, v7, :cond_5

    aget-object v11, v2, v6

    .line 479
    .restart local v11       #o:Ljava/lang/Object;
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 480
    .restart local v13       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object v3, v0

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v8, v3

    .restart local v8       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v8, :cond_4

    aget-object v12, v3, v5

    .line 481
    .restart local v12       #regex:Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v17, 0x1

    .line 480
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 478
    .end local v12           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_2

    .line 484
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v11           #o:Ljava/lang/Object;
    .end local v13           #s:Ljava/lang/String;
    :cond_5
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/Object;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v6       #i$:I
    :goto_4
    if-ge v6, v7, :cond_8

    aget-object v11, v2, v6

    .line 485
    .restart local v11       #o:Ljava/lang/Object;
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 486
    .restart local v13       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object v3, v0

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v8, v3

    .restart local v8       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_5
    if-ge v5, v8, :cond_7

    aget-object v12, v3, v5

    .line 487
    .restart local v12       #regex:Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v16, 0x1

    .line 486
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 484
    .end local v12           #regex:Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_4

    .line 491
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v11           #o:Ljava/lang/Object;
    .end local v13           #s:Ljava/lang/String;
    :cond_8
    if-eqz v17, :cond_9

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0902b8

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 536
    :goto_6
    return-void

    .line 495
    :cond_9
    if-eqz v14, :cond_e

    .line 496
    if-nez v15, :cond_d

    .line 498
    const-string v19, "WiMax"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wimax/WimaxManager;

    .line 499
    .local v18, wimaxManager:Landroid/net/wimax/WimaxManager;
    invoke-virtual/range {v18 .. v18}, Landroid/net/wimax/WimaxManager;->getWimaxMode()I

    move-result v10

    .line 500
    .local v10, nMode:I
    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "nMode : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/16 v19, 0x2

    move v0, v10

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v19, 0x4

    move v0, v10

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 502
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0902bc

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 511
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_6

    .line 504
    :cond_b
    const/16 v19, 0x3

    move v0, v10

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0902bd

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_7

    .line 508
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0902b7

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_7

    .line 519
    .end local v10           #nMode:I
    .end local v18           #wimaxManager:Landroid/net/wimax/WimaxManager;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0902bb

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 523
    :cond_e
    if-eqz v16, :cond_f

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0902bb

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 527
    :cond_f
    if-eqz v9, :cond_10

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0902b9

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 532
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0902ba

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 184
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 188
    const-string v1, "enable_wifi_ap"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 189
    const-string v1, "wifi_ap_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    .line 190
    const-string v1, "usb_tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 191
    const-string v1, "tethering_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 193
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 203
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    const v1, 0x7f0902b0

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->setTitle(I)V

    .line 210
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    const v1, 0x7f0902af

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->setTitle(I)V

    .line 220
    new-instance v1, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 221
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 223
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 228
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 229
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 230
    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->bNoSim:Z

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 236
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->bNoSim:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->bLowBattery:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->bOutOfCoverage:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->bRoaming:Z

    if-eqz v2, :cond_4

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->setProhibitionWifiAp(Z)V

    .line 238
    return-void

    .line 232
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->bNoSim:Z

    goto :goto_0

    :cond_4
    move v2, v4

    .line 236
    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .parameter "id"

    .prologue
    const/4 v13, 0x1

    const v11, 0x7f0900d3

    const v9, 0x7f09034e

    const v10, 0x7f090556

    const-string v12, "%x"

    .line 242
    if-ne p1, v13, :cond_5

    .line 243
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 246
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 247
    .local v0, am:Landroid/content/res/AssetManager;
    const-string v7, "html/%y%z/tethering_help.html"

    const-string v8, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, path:Ljava/lang/String;
    const-string v7, "%z"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 249
    const/4 v6, 0x1

    .line 250
    .local v6, useCountry:Z
    const/4 v2, 0x0

    .line 252
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 256
    if-eqz v2, :cond_0

    .line 258
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 262
    :cond_0
    :goto_0
    const-string v7, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v8, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, url:Ljava/lang/String;
    const-string v7, "%z"

    if-eqz v6, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 264
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-nez v7, :cond_3

    .line 265
    const-string v7, "%x"

    const-string v7, "usb_"

    invoke-virtual {v5, v12, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 274
    :goto_2
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v7, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 276
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0902be

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 361
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #useCountry:Z
    :goto_3
    return-object v7

    .line 253
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #locale:Ljava/util/Locale;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v6       #useCountry:Z
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 256
    if-eqz v2, :cond_0

    .line 258
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 259
    :catch_1
    move-exception v7

    goto :goto_0

    .line 256
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_1

    .line 258
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 259
    :cond_1
    :goto_4
    throw v7

    .line 263
    .restart local v5       #url:Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_1

    .line 266
    :cond_3
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-nez v7, :cond_4

    .line 267
    const-string v7, "%x"

    const-string v7, "wifi_"

    invoke-virtual {v5, v12, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 271
    :cond_4
    const-string v7, "%x"

    const-string v7, ""

    invoke-virtual {v5, v12, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 284
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #useCountry:Z
    :cond_5
    const/4 v7, 0x4

    if-ne p1, v7, :cond_6

    .line 285
    const-string v7, "TetherSettings"

    const-string v8, "DIALOG_DISCONNECT_WIFI"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f090561

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f090006

    new-instance v9, Lcom/android/settings/TetherSettings$4;

    invoke-direct {v9, p0}, Lcom/android/settings/TetherSettings$4;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f090007

    new-instance v9, Lcom/android/settings/TetherSettings$3;

    invoke-direct {v9, p0}, Lcom/android/settings/TetherSettings$3;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_3

    .line 299
    :cond_6
    const/4 v7, 0x2

    if-ne p1, v7, :cond_7

    .line 300
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f090562

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/TetherSettings$5;

    invoke-direct {v8, p0}, Lcom/android/settings/TetherSettings$5;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_3

    .line 308
    :cond_7
    const/4 v7, 0x3

    if-ne p1, v7, :cond_8

    .line 309
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f090563

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/TetherSettings$6;

    invoke-direct {v8, p0}, Lcom/android/settings/TetherSettings$6;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_3

    .line 317
    :cond_8
    const/4 v7, 0x5

    if-ne p1, v7, :cond_9

    .line 318
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f090569

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/TetherSettings$8;

    invoke-direct {v8, p0}, Lcom/android/settings/TetherSettings$8;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/TetherSettings$7;

    invoke-direct {v8, p0}, Lcom/android/settings/TetherSettings$7;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_3

    .line 331
    :cond_9
    const/4 v7, 0x6

    if-ne p1, v7, :cond_a

    .line 332
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f090564

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/TetherSettings$10;

    invoke-direct {v8, p0}, Lcom/android/settings/TetherSettings$10;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/TetherSettings$9;

    invoke-direct {v8, p0}, Lcom/android/settings/TetherSettings$9;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_3

    .line 345
    :cond_a
    const/4 v7, 0x7

    if-ne p1, v7, :cond_b

    .line 346
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f090566

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/TetherSettings$12;

    invoke-direct {v8, p0}, Lcom/android/settings/TetherSettings$12;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/TetherSettings$11;

    invoke-direct {v8, p0}, Lcom/android/settings/TetherSettings$11;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_3

    .line 361
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 259
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #locale:Ljava/util/Locale;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v6       #useCountry:Z
    :catch_2
    move-exception v7

    goto/16 :goto_0

    :catch_3
    move-exception v8

    goto/16 :goto_4
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 440
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 441
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 443
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 444
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 445
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 540
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v9}, Lcom/android/settings/wifi/WifiApEnabler;->getWifiState()I

    move-result v8

    .line 541
    .local v8, wifiState:I
    const/4 v5, 0x0

    .line 543
    .local v5, numClient:I
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_6

    .line 544
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    .line 546
    .local v4, newState:Z
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 549
    .local v1, cm:Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_3

    .line 550
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, available:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    invoke-direct {p0, v0, v9}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 553
    .local v7, usbIface:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 555
    const/4 v9, 0x1

    .line 636
    .end local v0           #available:[Ljava/lang/String;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #newState:Z
    .end local v7           #usbIface:Ljava/lang/String;
    :goto_0
    return v9

    .line 558
    .restart local v0       #available:[Ljava/lang/String;
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v4       #newState:Z
    .restart local v7       #usbIface:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v3

    .line 559
    .local v3, nRet:I
    if-eqz v3, :cond_1

    .line 560
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 561
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0902bb

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 562
    const/4 v9, 0x1

    goto :goto_0

    .line 564
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.android.settings.TETHERING_WIMAX_REALM_CHANGE_ACTION"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "tethering"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 567
    const-string v9, "TetherSettings"

    const-string v10, "tether sent Intent with true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 636
    .end local v0           #available:[Ljava/lang/String;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #nRet:I
    .end local v4           #newState:Z
    .end local v7           #usbIface:Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 579
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v4       #newState:Z
    :cond_3
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 581
    .local v6, tethered:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    invoke-direct {p0, v6, v9}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 582
    .restart local v7       #usbIface:Ljava/lang/String;
    if-nez v7, :cond_4

    .line 583
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 584
    const/4 v9, 0x1

    goto :goto_0

    .line 587
    :cond_4
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v3

    .line 588
    .restart local v3       #nRet:I
    if-eqz v3, :cond_5

    .line 589
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0902bb

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 590
    const/4 v9, 0x1

    goto :goto_0

    .line 592
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.android.settings.TETHERING_WIMAX_REALM_CHANGE_ACTION"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v9, "tethering"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 595
    const-string v9, "TetherSettings"

    const-string v10, "tether sent Intent with false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 606
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #nRet:I
    .end local v4           #newState:Z
    .end local v6           #tethered:[Ljava/lang/String;
    .end local v7           #usbIface:Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_c

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_c

    .line 607
    const-string v9, "TetherSettings"

    const-string v10, "preference == mEnableWifiAp"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-boolean v9, p0, Lcom/android/settings/TetherSettings;->bNoSim:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_7

    .line 609
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 623
    :goto_2
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 610
    :cond_7
    iget-boolean v9, p0, Lcom/android/settings/TetherSettings;->bOutOfCoverage:Z

    if-eqz v9, :cond_8

    .line 611
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_2

    .line 612
    :cond_8
    iget-boolean v9, p0, Lcom/android/settings/TetherSettings;->bRoaming:Z

    if-eqz v9, :cond_9

    .line 613
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_2

    .line 614
    :cond_9
    const/4 v9, 0x2

    if-eq v8, v9, :cond_a

    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    .line 616
    :cond_a
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 618
    const-string v9, "TetherSettings"

    const-string v10, "show dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 621
    :cond_b
    const/4 v9, 0x7

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_2

    .line 624
    :cond_c
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 626
    const-string v9, "TetherSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "turn off button: connected client number:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-eqz v5, :cond_d

    .line 628
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 630
    :cond_d
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v9}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiApDisable()V

    goto/16 :goto_1

    .line 632
    :cond_e
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v9, :cond_2

    .line 634
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    .line 412
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 414
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v3, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 416
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/TetherSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 418
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 419
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/TetherSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, p0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 425
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 428
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 429
    .local v2, wififilter:Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string v3, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/TetherSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    return-void
.end method
