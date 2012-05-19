.class public Lcom/android/settings/wifi/AccessPointListDialog;
.super Landroid/preference/PreferenceActivity;
.source "AccessPointListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPointListDialog$Scanner;
    }
.end annotation


# instance fields
.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

.field private mAddNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mKeyStoreNetworkId:I

.field private mLapseTime:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastPriority:I

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mRandomPinNumber:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetNetworks:Z

.field private final mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mTimer:Landroid/os/CountDownTimer;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsButton:Landroid/preference/Preference;

.field private mWpsInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.GET_WPS_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/android/settings/wifi/AccessPointListDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AccessPointListDialog$1;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;Lcom/android/settings/wifi/AccessPointListDialog$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AccessPointListDialog;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointListDialog;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/AccessPointListDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsCommandCancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/AccessPointListDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/AccessPointListDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    return v0
.end method

.method static synthetic access$420(Lcom/android/settings/wifi/AccessPointListDialog;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/AccessPointListDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/AccessPointListDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method private connect(I)V
    .locals 8
    .parameter "networkId"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 565
    if-ne p1, v6, :cond_0

    .line 594
    :goto_0
    return-void

    .line 570
    :cond_0
    iget v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    const v4, 0xf4240

    if-le v3, v4, :cond_3

    .line 571
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    sub-int v2, v3, v5

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 572
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 573
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_1

    .line 574
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 575
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 576
    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 577
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 571
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 580
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_2
    iput v7, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 584
    .end local v2           #i:I
    :cond_3
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 585
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iput p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 586
    iget v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 587
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 588
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 591
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 592
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 593
    iput-boolean v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "AccessPointListDialog"

    .line 466
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v1, :cond_1

    .line 470
    const-string v1, "AccessPointListDialog"

    const-string v1, "dismissProgressDialog(), mProgressDialog.dissmiss()"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->dismiss()V

    .line 474
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    .line 475
    const v1, 0x1d4c0

    iput v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    .line 476
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    .line 479
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v2, -0x63

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    .line 480
    .local v0, result:Z
    if-nez v0, :cond_2

    .line 481
    const-string v1, "AccessPointListDialog"

    const-string v1, "ENABLE ALL is fail"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_2
    const-string v1, "AccessPointListDialog"

    const-string v1, "ENABLE ALL is success"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableNetworks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 597
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 598
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 599
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 600
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 597
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 603
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    .line 604
    return-void
.end method

.method private forget(I)V
    .locals 1
    .parameter "networkId"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 561
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 562
    return-void
.end method

.method public static getTimeString(I)Ljava/lang/String;
    .locals 6
    .parameter "milliSecond"

    .prologue
    .line 507
    div-int/lit16 v2, p0, 0x3e8

    div-int/lit8 v0, v2, 0x3c

    .line 508
    .local v0, min:I
    div-int/lit16 v2, p0, 0x3e8

    rem-int/lit8 v1, v2, 0x3c

    .line 510
    .local v1, second:I
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v4, "AccessPointListDialog"

    .line 675
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 677
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->updateWifiState(I)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 680
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    goto :goto_0

    .line 681
    :cond_2
    const-string v3, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 682
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 683
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 685
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    goto :goto_0

    .line 686
    :cond_4
    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 687
    const-string v3, "newState"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SupplicantState;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 689
    :cond_5
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 690
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iput-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 691
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 692
    .local v2, state:Landroid/net/NetworkInfo$DetailedState;
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 694
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    .line 695
    const-string v3, "AccessPointListDialog"

    const-string v3, "Network is connected, activity will finish"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, msg:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->finish()V

    goto :goto_0

    .line 700
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_6
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 701
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 704
    :cond_7
    const-string v3, "android.net.wifi.GET_WPS_EVENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    const-string v3, "AccessPointListDialog"

    const-string v3, "handleEvent(), GET_WPS_EVENT_ACTION"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v3, "wps_event"

    const/4 v4, 0x5

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->updateWpsEvent(I)V

    goto/16 :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    .line 550
    invoke-static {p1}, Lcom/android/settings/wifi/WifiDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 552
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 553
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    move v0, v1

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetworks()V
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    .line 609
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 610
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 611
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 397
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 398
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 399
    return-void
.end method

.method private showProgressDialog(I)V
    .locals 7
    .parameter "wpsMode"

    .prologue
    const v5, 0x1d4c0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 405
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "AccessPointListDialog"

    const-string v1, "showProgressDialog(), dissmiss former dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->dismiss()V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 413
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    .line 414
    iput v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    .line 416
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setIcon(I)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressStyle(I)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f09034f

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/AccessPointListDialog$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/AccessPointListDialog$2;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 426
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 428
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f090170

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setTitle(I)V

    .line 430
    const-string v0, "%08d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mRandomPinNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 431
    .local v6, eightDigitPin:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 437
    .end local v6           #eightDigitPin:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgress(I)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMax(I)V

    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressPercentVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const-string v1, "%2d:%2d"

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->show()V

    .line 445
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 450
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/AccessPointListDialog$3;

    const-wide/32 v2, 0x1d8a8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/AccessPointListDialog$3;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 462
    return-void

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setTitle(I)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showWpsToast(I)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "AccessPointListDialog"

    .line 741
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 742
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 743
    const-string v0, "AccessPointListDialog"

    const-string v0, "showWpsToast(), WPS FAIL"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const v0, 0x7f090178

    if-ne p1, v0, :cond_0

    .line 745
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsCommandCancel()V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000001a

    const-string v2, "AccessPointListDialog"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    .line 751
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 752
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 754
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 761
    :cond_2
    return-void
.end method

.method private updateAccessPoints()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const-string v12, "AccessPointListDialog"

    .line 614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v1, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 617
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_4

    .line 618
    iput v11, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 619
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 622
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 626
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    if-le v9, v10, :cond_1

    .line 627
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 631
    :cond_1
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v9, :cond_3

    .line 632
    const/4 v9, 0x2

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 637
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 638
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v9, v10}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 639
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 633
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    iget-boolean v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v9, :cond_2

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 634
    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 643
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v9, "AccessPointListDialog"

    const-string v9, "updateAccessPoints(), WifiConfigureation list updated"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 646
    .local v8, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v8, :cond_8

    .line 647
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 649
    .local v7, result:Landroid/net/wifi/ScanResult;
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v10, "[IBSS]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 654
    const/4 v4, 0x0

    .line 655
    .local v4, found:Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 656
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 657
    const/4 v4, 0x1

    goto :goto_3

    .line 660
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_7
    if-nez v4, :cond_5

    .line 661
    new-instance v9, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v9, p0, v7}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 665
    .end local v4           #found:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #result:Landroid/net/wifi/ScanResult;
    :cond_8
    const-string v9, "AccessPointListDialog"

    const-string v9, "updateAccessPoints(), ScanResult list updated"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 668
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v11}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 669
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 670
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 672
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_9
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 766
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_4

    .line 771
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 778
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 779
    if-eqz p1, :cond_3

    .line 780
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 783
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_5

    .line 784
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 783
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 773
    .end local v0           #i:I
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    if-nez v1, :cond_2

    .line 774
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    goto :goto_1

    .line 787
    .restart local v0       #i:I
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_6

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_6

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 789
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 790
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 795
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 796
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    if-nez v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    .line 799
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 807
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 802
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_0
.end method

.method private updateWpsEvent(I)V
    .locals 4
    .parameter

    .prologue
    const v2, 0x7f090177

    const-string v3, "AccessPointListDialog"

    .line 712
    const-string v0, "AccessPointListDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWpsEvent: eventType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    .line 715
    packed-switch p1, :pswitch_data_0

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 717
    :pswitch_0
    const-string v0, "AccessPointListDialog"

    const-string v0, "WPS Success"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 720
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 726
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 729
    :pswitch_2
    const v0, 0x7f090178

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 732
    :pswitch_3
    const v0, 0x7f090176

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 735
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private wpsCommandCancel()V
    .locals 0

    .prologue
    .line 547
    return-void
.end method

.method private wpsPbcConnect()V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method private wpsPinConnect(Lcom/android/settings/wifi/AccessPoint;)Z
    .locals 1
    .parameter "accessPoint"

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v6, -0x3

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 345
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 347
    .local v1, forgetable:Z
    :goto_0
    if-ne p2, v6, :cond_2

    if-eqz v1, :cond_2

    .line 348
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->forget(I)V

    .line 350
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3, v4}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    :cond_0
    :goto_1
    return-void

    .end local v1           #forgetable:Z
    :cond_1
    move v1, v5

    .line 345
    goto :goto_0

    .line 351
    .restart local v1       #forgetable:Z
    :cond_2
    if-ne p2, v4, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_8

    .line 352
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 354
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 355
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 358
    :cond_3
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v4, :cond_4

    .line 359
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    .line 360
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 361
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    goto :goto_1

    .line 364
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 366
    .local v2, networkId:I
    if-ne v2, v4, :cond_5

    .line 367
    const v3, 0x7f09054a

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 370
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 371
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 372
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v3, v3, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v3, :cond_6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 373
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 374
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 376
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 382
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #networkId:I
    :cond_8
    if-ne p2, v6, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 277
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 278
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 315
    :goto_0
    return v2

    .line 280
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 315
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 282
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 283
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    :cond_1
    :goto_1
    move v2, v4

    .line 297
    goto :goto_0

    .line 286
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_3

    .line 288
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 289
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 290
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 291
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 292
    .local v1, networkId:I
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 293
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 295
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #networkId:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v5}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_1

    .line 299
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->forget(I)V

    .line 301
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2, v3}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    move v2, v4

    .line 302
    goto :goto_0

    .line 304
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    move v2, v4

    .line 305
    goto :goto_0

    .line 308
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsPinConnect(Lcom/android/settings/wifi/AccessPoint;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 309
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showProgressDialog(I)V

    :goto_2
    move v2, v4

    .line 313
    goto :goto_0

    .line 311
    :cond_4
    const v2, 0x7f090177

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_2

    .line 280
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const-string v4, "AccessPointListDialog"

    .line 151
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 154
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mPowerManager:Landroid/os/PowerManager;

    .line 155
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x1a

    const-string v3, "AccessPointListDialog"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 161
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 163
    const v1, 0x7f04002e

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->addPreferencesFromResource(I)V

    .line 165
    const-string v1, "access_points"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ProgressCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 166
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 167
    const-string v1, "add_network"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAddNetwork:Landroid/preference/Preference;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 170
    const-string v1, "AccessPointListDialog"

    const-string v1, "onCreate() finish"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 248
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 252
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_2

    .line 253
    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    .end local v2           #preference:Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 254
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v3

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-nez v3, :cond_3

    move v0, v7

    .line 255
    .local v0, connectable:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_4

    move v1, v7

    .line 256
    .local v1, forgetable:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 257
    if-eqz v0, :cond_0

    .line 258
    const/4 v3, 0x3

    const v4, 0x7f09016b

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 260
    :cond_0
    if-eqz v1, :cond_1

    .line 261
    const/4 v3, 0x4

    const v4, 0x7f09016c

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 262
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_1

    .line 263
    const/4 v3, 0x5

    const v4, 0x7f09016d

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 268
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v3, v3, Lcom/android/settings/wifi/AccessPoint;->wpsPinMode:Z

    if-eqz v3, :cond_2

    .line 273
    .end local v0           #connectable:Z
    .end local v1           #forgetable:Z
    :cond_2
    return-void

    :cond_3
    move v0, v5

    .line 254
    goto :goto_0

    .restart local v0       #connectable:Z
    :cond_4
    move v1, v5

    .line 255
    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const-string v1, "AccessPointListDialog"

    .line 488
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-ne p1, v0, :cond_1

    .line 489
    const-string v0, "AccessPointListDialog"

    const-string v0, "onDismiss(), dismiss mDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-ne p1, v0, :cond_0

    .line 492
    const-string v0, "AccessPointListDialog"

    const-string v0, "onDismiss(), dismiss mProgressDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "AccessPointListDialog"

    const-string v0, "onDismiss(), mWpsInProgress is true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 496
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsCommandCancel()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const-string v2, "AccessPointListDialog"

    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_2

    .line 197
    const-string v0, "AccessPointListDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause() Dialog is not null. destroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSpinnerDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    const-string v0, "AccessPointListDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause() Spinner Dialog is not null. destroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSpinnerDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSpinnerDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 206
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v0, :cond_3

    .line 207
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 214
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 215
    const-string v0, "AccessPointListDialog"

    const-string v0, "onPause() finish"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 320
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 321
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 322
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    :goto_0
    move v0, v3

    .line 341
    :goto_1
    return v0

    .line 323
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAddNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 324
    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 325
    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsButton:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 329
    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 330
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->showProgressDialog(I)V

    .line 331
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsPbcConnect()V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_2

    .line 339
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 175
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 181
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    .line 183
    :cond_1
    iput v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 184
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 185
    const-string v0, "AccessPointListDialog"

    const-string v1, "onResume() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method
