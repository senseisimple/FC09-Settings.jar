.class public Lcom/android/settings/wifi/WifiApSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mLowBatteryLevel:I


# instance fields
.field private bLowBattery:Z

.field private bNoSim:Z

.field private bOutOfCoverage:Z

.field private bRoaming:Z

.field private defaultSsid:Ljava/lang/String;

.field private isHide:Z

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mFootView:Landroid/widget/LinearLayout;

.field private mHelpImage:Landroid/widget/ImageView;

.field private mHelpImage_onPc:Landroid/widget/ImageView;

.field private mHelpOrientTitle:Landroid/widget/TextView;

.field private mHelpTitle:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLandscape:Z

.field private mListView:Landroid/widget/ListView;

.field private mOrientedFootView:Landroid/widget/LinearLayout;

.field private mOrientedHelpImage:Landroid/widget/ImageView;

.field private mOrientedHelpImage_onPc:Landroid/widget/ImageView;

.field private mOrientedWifiApHelpInActiveText:Landroid/widget/TextView;

.field private mOrientedWifiApHelpOnPcText:Landroid/widget/TextView;

.field private mOrientedWifiApHelpText:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressDialog2:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityType:[Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiApHelpInActiveText:Landroid/widget/TextView;

.field private mWifiApHelpOnPcText:Landroid/widget/TextView;

.field private mWifiApHelpText:Landroid/widget/TextView;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxManager:Landroid/net/wimax/WimaxManager;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private prefs:Landroid/content/SharedPreferences;

.field private rememberedChannel:I

.field private rememberedHideDevice:Z

.field private rememberedPassword:Ljava/lang/String;

.field private rememberedSecurity:I

.field private rememberedSsid:Ljava/lang/String;

.field private rememberedmaxclient:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 180
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    .line 182
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    .line 251
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 468
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$3;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lcom/android/settings/wifi/WifiApSettings;->mLowBatteryLevel:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveConfigurationTemporarilyAndDisplayDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->dimissAllDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mConnManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private addIntentFilter()V
    .locals 2

    .prologue
    .line 456
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 457
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wimax.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private changeLayoutItem(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1399
    if-eqz p1, :cond_a

    .line 1401
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1404
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpInActiveText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1406
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpInActiveText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1407
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpInActiveText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1408
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpInActiveText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1410
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage_onPc:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1411
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage_onPc:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1412
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage_onPc:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1413
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage_onPc:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1415
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1416
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1417
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1418
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1420
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpOnPcText:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 1421
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpOnPcText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1422
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpOnPcText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1423
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpOnPcText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1452
    :cond_9
    :goto_0
    return-void

    .line 1428
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 1429
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1430
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 1431
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1432
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpInActiveText:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 1433
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpInActiveText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1434
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpInActiveText:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 1435
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpInActiveText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1437
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage_onPc:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 1438
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage_onPc:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1439
    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage_onPc:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 1440
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage_onPc:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1442
    :cond_10
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 1443
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1444
    :cond_11
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 1445
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1447
    :cond_12
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpOnPcText:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 1448
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpOnPcText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1449
    :cond_13
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpOnPcText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1450
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpOnPcText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private dimissAllDialog()V
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1512
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_1

    .line 1513
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 1515
    :cond_1
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f090573

    .line 1362
    packed-switch p1, :pswitch_data_0

    .line 1394
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1364
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->setHelpMessage()V

    .line 1365
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1368
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 1375
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->changeLayoutItem(Z)V

    .line 1379
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1380
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1381
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isHexString(Ljava/lang/String;)Z
    .locals 3
    .parameter "wepPass"

    .prologue
    .line 1499
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1500
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1501
    const/4 v1, 0x0

    .line 1503
    :goto_1
    return v1

    .line 1499
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1503
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isOpenNetwrok()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1227
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1243
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1238
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1243
    goto :goto_0
.end method

.method private loadPreference()V
    .locals 4

    .prologue
    .line 1486
    const-string v0, "WifiApSettings"

    const-string v1, "loadPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 1490
    const-string v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    .line 1491
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "MAXCLIENT_VALUE"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 1492
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedmaxclient:I

    .line 1494
    :cond_0
    return-void
.end method

.method private saveConfigurationTemporarilyAndDisplayDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 727
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 728
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 729
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApDialog;->setSsidText(Ljava/lang/String;)V

    .line 731
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 732
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 733
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    .line 746
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApDialog;->setHideDeviceStatus(Z)V

    .line 747
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApDialog;->setChannel(I)V

    .line 748
    return-void

    .line 735
    :cond_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1, v6}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 740
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 741
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    goto :goto_0

    .line 743
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    goto :goto_0
.end method

.method private saveRememberedVariablesFromConfiguration()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1095
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    iput v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    .line 1098
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    .line 1115
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedHideDevice:Z

    .line 1118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedChannel:I

    .line 1132
    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    iput v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    .line 1101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    goto :goto_0

    .line 1103
    :cond_1
    iput v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    .line 1104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    goto :goto_0

    .line 1107
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1108
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    .line 1112
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    goto :goto_0

    .line 1110
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    goto :goto_1
.end method

.method private setHelpMessage()V
    .locals 14

    .prologue
    const/4 v12, -0x1

    const/16 v11, 0x21

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v4, ""

    .line 1248
    const-string v0, ""

    .line 1249
    const-string v0, ""

    .line 1250
    const-string v0, ""

    .line 1260
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1262
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiApSettings;->changeLayoutItem(Z)V

    .line 1265
    const-string v0, "WifiApSettings"

    const-string v1, "start message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    const v1, 0x7f090573

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    const v1, 0x7f090573

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1357
    :cond_1
    :goto_0
    return-void

    .line 1273
    :cond_2
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiApSettings;->changeLayoutItem(Z)V

    .line 1275
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1276
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    const v1, 0x7f090574

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1277
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1278
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    const v1, 0x7f090574

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1279
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_13

    .line 1280
    const-string v0, "WifiApSettings"

    const-string v1, "mWifiConfig != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1284
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1287
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1288
    const v0, 0x7f0905e7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1289
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    .line 1300
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1302
    :cond_5
    const-string v0, ""

    .line 1303
    const v0, 0x7f090552

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v1, v2, v9

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v4

    move-object v3, v0

    move v0, v9

    .line 1313
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 1314
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 1315
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_17

    .line 1316
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1317
    if-eq v5, v12, :cond_6

    if-lt v5, v4, :cond_14

    :cond_6
    move v2, v9

    move v5, v9

    .line 1322
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_16

    .line 1323
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1324
    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 1325
    if-eq v6, v12, :cond_7

    if-lt v6, v4, :cond_8

    :cond_7
    move v6, v9

    .line 1328
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move v13, v7

    move v7, v6

    move v6, v13

    .line 1330
    :goto_4
    iget-object v8, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_15

    .line 1331
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1333
    if-eq v0, v12, :cond_9

    if-lt v0, v4, :cond_a

    :cond_9
    move v0, v9

    .line 1336
    :cond_a
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v13, v4

    move v4, v0

    move v0, v13

    .line 1341
    :goto_5
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1343
    if-eqz v5, :cond_b

    .line 1344
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/2addr v2, v5

    invoke-virtual {v8, v3, v5, v2, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1345
    :cond_b
    if-eqz v7, :cond_c

    .line 1346
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int v3, v7, v1

    invoke-virtual {v8, v2, v7, v3, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1347
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/2addr v1, v6

    invoke-virtual {v8, v2, v6, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1349
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_d

    if-eqz v4, :cond_d

    .line 1350
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/2addr v0, v4

    invoke-virtual {v8, v1, v4, v0, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1353
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1291
    :cond_e
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1292
    const v0, 0x7f0905e7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1293
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    goto/16 :goto_1

    .line 1295
    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_10

    const v2, 0x7f0905e8

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    goto/16 :goto_1

    .line 1296
    :cond_10
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_11

    const v2, 0x7f0905e9

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    goto/16 :goto_1

    .line 1297
    :cond_11
    const v2, 0x7f0905e9

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    goto/16 :goto_1

    .line 1305
    :cond_12
    const v3, 0x7f09056f

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v9

    goto/16 :goto_2

    .line 1307
    :cond_13
    const-string v0, "WifiApSettings"

    const-string v1, "mWifiConfig == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v0, ""

    .line 1309
    const v0, 0x7f090552

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    move v0, v9

    goto/16 :goto_2

    .line 1320
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto/16 :goto_3

    :cond_15
    move v4, v0

    move v0, v9

    goto/16 :goto_5

    :cond_16
    move v1, v9

    move v6, v9

    move v7, v9

    goto/16 :goto_4

    :cond_17
    move v2, v9

    move v5, v9

    goto/16 :goto_3
.end method


# virtual methods
.method public generateDefaultSSID()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 1151
    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1152
    const-string v1, ""

    .line 1155
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/.mac.info"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1156
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1166
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 1167
    const/16 v2, 0x383

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    .line 1177
    :goto_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1178
    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1179
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1181
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1185
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1187
    const-string v0, "1234567890"

    .line 1188
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 1198
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x5

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 1200
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveConfiguration()V

    .line 1201
    return-void

    .line 1159
    :catch_0
    move-exception v2

    .line 1160
    const-string v2, "WifiApSettings"

    const-string v3, "mac read exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1172
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-static {v2, v3, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 1173
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x4

    sub-int/2addr v1, v4

    invoke-static {v3, v1, v6}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    .line 1174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "DIALOG_WRONG_WEP_PASSWORD_WARN1 "

    const-string v4, "WifiApSettings"

    .line 867
    .line 869
    const/4 v0, -0x1

    if-ne p2, v0, :cond_18

    .line 870
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 872
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedmaxclient:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 874
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v0

    .line 875
    const-string v1, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: save button: connected client number:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    .line 879
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 880
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 881
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 884
    :cond_0
    const-string v1, "WifiApSettings"

    const-string v1, "onClick: SECURITY_TYPE_WEP 64"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 906
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_8

    .line 907
    :cond_1
    const-string v0, "WifiApSettings"

    const-string v0, "DIALOG_WRONG_SSID_WARN"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1010
    :cond_2
    :goto_1
    return-void

    .line 886
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 887
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    .line 888
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 889
    :cond_4
    const/4 v1, 0x2

    .line 890
    const-string v2, "WifiApSettings"

    const-string v2, "onClick: SECURITY_TYPE_WEP 128"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 893
    :cond_5
    const-string v1, "WifiApSettings"

    const-string v1, "onClick: SECURITY_TYPE_OPEN"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    goto :goto_0

    .line 896
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 897
    const/4 v1, 0x3

    .line 898
    const-string v2, "WifiApSettings"

    const-string v2, "onClick: SECURITY_TYPE_WPA"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 900
    :cond_7
    const/4 v1, 0x4

    .line 901
    const-string v2, "WifiApSettings"

    const-string v2, "onClick: SECURITY_TYPE_WPA2"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 909
    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    if-nez v2, :cond_9

    .line 911
    const-string v0, "WifiApSettings"

    const-string v0, "DIALOG_WRONG_WEP_PASSWORD_WARN1 "

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_1

    .line 913
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    if-nez v2, :cond_a

    .line 915
    const-string v0, "WifiApSettings"

    const-string v0, "DIALOG_WRONG_WEP_PASSWORD_WARN1 "

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 917
    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v8, :cond_c

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->isHexString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 921
    :cond_b
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIALOG_WRONG_WEP_PASSWORD_WARN1 "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 923
    :cond_c
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->isHexString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 927
    :cond_d
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIALOG_WRONG_WEP_PASSWORD_WARN1 "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 929
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 933
    :cond_f
    const-string v0, "WifiApSettings"

    const-string v0, "DIALOG_NULL_PASSWORD_WARN2"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 935
    :cond_10
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_11

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_12

    .line 939
    :cond_11
    const-string v0, "WifiApSettings"

    const-string v0, "DIALOG_NULL_PASSWORD_WARN3"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 942
    :cond_12
    if-eqz v0, :cond_13

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 948
    const-string v0, "WifiApSettings"

    const-string v0, "Password is chagned"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 950
    :cond_13
    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 954
    const-string v0, "WifiApSettings"

    const-string v0, "SSID is chagned"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 956
    :cond_14
    if-eqz v0, :cond_15

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_15

    iget v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-eq v2, v1, :cond_15

    .line 959
    const-string v0, "WifiApSettings"

    const-string v0, "Security Mode chagned"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 963
    :cond_15
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedHideDevice:Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eq v1, v2, :cond_16

    .line 966
    const-string v0, "WifiApSettings"

    const-string v0, "Hide my Device chagned"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 969
    :cond_16
    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedChannel:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    if-eq v0, v1, :cond_17

    .line 972
    const-string v0, "WifiApSettings"

    const-string v0, "Channel chagned"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 977
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveConfiguration()V

    goto/16 :goto_1

    .line 982
    :cond_18
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 983
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_19

    .line 985
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSsidText(Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 987
    const-string v0, "WifiApSettings"

    const-string v0, "onClick :   BUTTON_NEGATIVE"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    .line 989
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedHideDevice:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setHideDeviceStatus(Z)V

    .line 990
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setChannel(I)V

    goto/16 :goto_1

    .line 993
    :cond_19
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    .line 994
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    .line 996
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedHideDevice:Z

    .line 997
    iput v5, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedChannel:I

    .line 998
    iput v5, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    .line 1000
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSsidText(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    .line 1004
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedHideDevice:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setHideDeviceStatus(Z)V

    .line 1005
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedChannel:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setChannel(I)V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1206
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1210
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIsLandscape:Z

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    move v1, v3

    :goto_0
    if-eq v0, v1, :cond_0

    .line 1211
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_2

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIsLandscape:Z

    .line 1212
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIsLandscape:Z

    if-eqz v0, :cond_3

    .line 1213
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1214
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1225
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 1210
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1211
    goto :goto_1

    .line 1216
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1217
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    const-string v0, "WifiApSettings"

    const-string v1, "onConfigurationChanged : NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f090555

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 327
    const-string v1, "WifiApSettings"

    const-string v2, "-----onCreate----- "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 331
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->addIntentFilter()V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/settings/wifi/WifiApSettings;->mLowBatteryLevel:I

    .line 334
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 337
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApProfileConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    .line 340
    const v1, 0x7f040032

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->addPreferencesFromResource(I)V

    .line 342
    const-string v1, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 343
    const-string v1, "enable_wifi_ap"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 344
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0905ea

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 352
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mIsLandscape:Z

    .line 357
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 359
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030042

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    .line 360
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x1010005

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    .line 361
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    .line 362
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    .line 364
    const v1, 0x7f030043

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    .line 365
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00a7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    .line 366
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x1010008

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    .line 367
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00a6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    .line 370
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x1010003

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpInActiveText:Landroid/widget/TextView;

    .line 371
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x1010006

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpInActiveText:Landroid/widget/TextView;

    .line 372
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x1010004

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpOnPcText:Landroid/widget/TextView;

    .line 373
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x1010007

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpOnPcText:Landroid/widget/TextView;

    .line 375
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage_onPc:Landroid/widget/ImageView;

    .line 376
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage_onPc:Landroid/widget/ImageView;

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    .line 380
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mIsLandscape:Z

    if-eqz v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v5, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 389
    :goto_1
    new-instance v1, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 391
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_3

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->generateDefaultSSID()V

    .line 393
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 412
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->setHelpMessage()V

    .line 414
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 415
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 416
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    .line 420
    :goto_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 422
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    if-eqz v2, :cond_5

    :cond_0
    move v2, v4

    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->setProhibitionWifiAp(Z)V

    .line 426
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mConnManager:Landroid/net/ConnectivityManager;

    .line 428
    const-string v1, "WiMax"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wimax/WimaxManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    .line 429
    return-void

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    move v1, v3

    .line 352
    goto/16 :goto_0

    .line 383
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v5, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 405
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveRememberedVariablesFromConfiguration()V

    .line 406
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 418
    :cond_4
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    goto :goto_3

    :cond_5
    move v2, v3

    .line 422
    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const v7, 0x7f0900d3

    const v6, 0x7f090556

    const v5, 0x7f090006

    const v4, 0x7f09034e

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 512
    .local v0, cr:Landroid/content/ContentResolver;
    if-ne p1, v3, :cond_1

    .line 515
    :try_start_0
    const-string v2, "wifi_ap_hide"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->isHide:Z

    .line 516
    const-string v2, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIALOG_AP_SETTINGS: isHide int "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wifi_ap_hide"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_1
    new-instance v2, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 522
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApDialog;->setDefaultSsidText(Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApSettings;->isHide:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApDialog;->setCheckHideMyDeivce(Z)V

    .line 525
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 723
    :goto_2
    return-object v2

    .line 515
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 518
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiApSettings"

    const-string v3, "AP settings not found, returning"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->isHide:Z

    goto :goto_1

    .line 529
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 530
    const-string v2, "WifiApSettings"

    const-string v3, "DIALOG_DISCONNECT_WIFI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090561

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$5;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090007

    new-instance v4, Lcom/android/settings/wifi/WifiApSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiApSettings$4;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_2

    .line 549
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 550
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090562

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$6;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_2

    .line 562
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 563
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090563

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$7;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_2

    .line 575
    :cond_4
    const/4 v2, 0x6

    if-ne p1, v2, :cond_5

    .line 576
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090569

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$9;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$9;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$8;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_2

    .line 590
    :cond_5
    const/4 v2, 0x7

    if-ne p1, v2, :cond_6

    .line 591
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090564

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$11;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$11;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$10;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$10;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_2

    .line 606
    :cond_6
    const/4 v2, 0x5

    if-ne p1, v2, :cond_7

    .line 607
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090568

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$13;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$13;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$12;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$12;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090557

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_2

    .line 622
    :cond_7
    const/16 v2, 0x8

    if-ne p1, v2, :cond_8

    .line 623
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090567

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$15;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$15;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$14;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$14;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090557

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_2

    .line 638
    :cond_8
    const/16 v2, 0x9

    if-ne p1, v2, :cond_9

    .line 639
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090566

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$17;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$17;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$16;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$16;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_2

    .line 658
    :cond_9
    const/16 v2, 0x14

    if-ne p1, v2, :cond_a

    .line 659
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0905f7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$19;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$19;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090007

    new-instance v4, Lcom/android/settings/wifi/WifiApSettings$18;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiApSettings$18;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_2

    .line 674
    :cond_a
    const/16 v2, 0x15

    if-ne p1, v2, :cond_b

    .line 675
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0905f8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$21;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$21;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090007

    new-instance v4, Lcom/android/settings/wifi/WifiApSettings$20;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiApSettings$20;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_2

    .line 690
    :cond_b
    const/16 v2, 0xe

    if-ne p1, v2, :cond_c

    .line 691
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0905f4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$22;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$22;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_2

    .line 700
    :cond_c
    const/16 v2, 0x16

    if-ne p1, v2, :cond_d

    .line 701
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0905f5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$23;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$23;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_2

    .line 710
    :cond_d
    const/16 v2, 0x12

    if-ne p1, v2, :cond_e

    .line 711
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0905f6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$24;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$24;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_2

    .line 723
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1457
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1461
    const v0, 0x7f0905ef

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200ed

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1465
    const v0, 0x7f0905fa

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1467
    return v3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 794
    const-string v0, "WifiApSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 798
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 799
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_1

    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 802
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 434
    if-eqz p1, :cond_1

    const-string v2, "WIFIAP_MODEMNAI_MISSMATH"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 436
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 440
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 441
    .local v1, dlg_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090600

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090601

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090602

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 450
    .local v0, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 452
    .end local v0           #dlg:Landroid/app/AlertDialog;
    .end local v1           #dlg_builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1472
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1474
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 1482
    :goto_0
    return v0

    .line 1478
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 1480
    goto :goto_0

    .line 1482
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 782
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 783
    const-string v0, "WifiApSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 785
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 786
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 789
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const-string v3, "WifiApSettings"

    .line 807
    const-string v0, "WifiApSettings"

    const-string v0, "onPreferenceTreeClick"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->getWifiState()I

    move-result v0

    .line 810
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 811
    const-string v0, "WifiApSettings"

    const-string v0, "showDialog"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 813
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSsidText(Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 815
    const-string v0, "WifiApSettings"

    const-string v0, "onPreferenceTreeClick:   setPasswordText"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    .line 819
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedHideDevice:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setHideDeviceStatus(Z)V

    .line 820
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedChannel:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setChannel(I)V

    .line 862
    :cond_0
    :goto_0
    return v4

    .line 823
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 824
    const-string v1, "WifiApSettings"

    const-string v1, "preference == mEnableWifiAp"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 839
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 841
    const-string v0, "WifiApSettings"

    const-string v0, "show dialog"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 845
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 846
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    goto :goto_0

    .line 853
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v0

    .line 855
    const-string v1, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turn off button: connected client number:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    if-eqz v0, :cond_5

    .line 857
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 859
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiApDisable()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 770
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 772
    const-string v0, "WifiApSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->loadPreference()V

    .line 776
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 777
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 778
    return-void
.end method

.method public saveConfiguration()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "WifiApSettings"

    .line 1014
    const-string v0, "WifiApSettings"

    const-string v0, "saveConfiguration"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_4

    .line 1018
    const-string v0, "WifiApSettings"

    const-string v0, "mWifiConfig.SSID 32"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const v0, 0x7f09055c

    new-array v1, v4, [Ljava/lang/Object;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1020
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1021
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1022
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1024
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1025
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1028
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 1090
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v0, v6, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1031
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1032
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 1033
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v0, v4, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 1037
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v0, v5, :cond_3

    .line 1038
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 1042
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 1043
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_a

    .line 1046
    const-string v0, "WifiApSettings"

    const-string v0, "mWifiConfig.SSID 64"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const v0, 0x7f09055d

    new-array v1, v5, [Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1050
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1051
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1053
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1054
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 1055
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1056
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1057
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 1058
    :cond_6
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v0, v6, :cond_7

    .line 1059
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1060
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 1062
    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v0, v4, :cond_8

    .line 1063
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1065
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 1066
    :cond_8
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v0, v5, :cond_9

    .line 1067
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1068
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1069
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 1071
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 1075
    :cond_a
    const-string v0, "WifiApSettings"

    const-string v0, "saveRememberedVariablesFromConfiguration"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveRememberedVariablesFromConfiguration()V

    .line 1078
    const-string v0, "WifiApSettings"

    const-string v0, "saveRememberedVariablesFromConfiguration end"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1080
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1081
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 1082
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->setHelpMessage()V

    .line 1084
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    const v1, 0x7f090555

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 1083
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1
.end method

.method public showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 751
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 752
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 753
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 755
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090571

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 757
    return-void
.end method

.method public showProgressDialog2()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 760
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    .line 761
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 762
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 763
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 764
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    const v1, 0x7f09056b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 766
    return-void
.end method
