.class public Lcom/android/settings/wimax/WimaxEnabler;
.super Ljava/lang/Object;
.source "WimaxEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxEnabler$MyHandler;
    }
.end annotation


# static fields
.field private static m_bIsWifiConnected:Z


# instance fields
.field private UsbDia:Landroid/app/AlertDialog;

.field private UsbDia1:Landroid/app/AlertDialog;

.field private UsbcableDia:Landroid/app/AlertDialog;

.field private ad:Landroid/app/AlertDialog;

.field private alert:Landroid/app/AlertDialog;

.field private currentWimaxState:Landroid/net/wimax/WimaxState;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private mWimaxManager:Landroid/net/wimax/WimaxManager;

.field private m_bLog:Z

.field private m_bMobileAPOn:Z

.field private m_bNewValue:Z

.field private m_nCurrentStateDetail:I

.field private m_strNapId:Ljava/lang/String;

.field private previousWimaxState:Landroid/net/wimax/WimaxState;

.field private turnoffusb:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wimax/WimaxEnabler;->m_bIsWifiConnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wimax/WimaxManager;Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .parameter "context"
    .parameter "WimaxManager"
    .parameter "checkBox"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    .line 66
    sget-object v0, Landroid/net/wimax/WimaxState;->UNKNOWN:Landroid/net/wimax/WimaxState;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->previousWimaxState:Landroid/net/wimax/WimaxState;

    .line 67
    sget-object v0, Landroid/net/wimax/WimaxState;->UNKNOWN:Landroid/net/wimax/WimaxState;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/wimax/WimaxState;

    .line 68
    iput v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I

    .line 70
    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bMobileAPOn:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bNewValue:Z

    .line 76
    iput-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    .line 90
    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxEnabler$1;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    .line 143
    iput-object p3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 144
    invoke-virtual {p3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {p3, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 148
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wimax.WIMAX_AUTH_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 152
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wimax/WimaxEnabler$MyHandler;-><init>(Lcom/android/settings/wimax/WimaxEnabler;Lcom/android/settings/wimax/WimaxEnabler$1;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wimax/WimaxEnabler;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStatusChanged(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/net/wimax/WimaxState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/wimax/WimaxState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/wimax/WimaxState;)Landroid/net/wimax/WimaxState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/wimax/WimaxState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wimax/WimaxEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bNewValue:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wimax/WimaxEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wimax/WimaxEnabler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/wimax/WimaxState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStateChanged(Landroid/net/wimax/WimaxState;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wimax/WimaxEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bMobileAPOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wimax/WimaxEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bMobileAPOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wimax/WimaxEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxEnabler;->handleErrorAuth(I)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/settings/wimax/WimaxEnabler;->m_bIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bIsWifiConnected:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/wimax/WimaxEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxEnabler;->setWimaxEnabled(Z)V

    return-void
.end method

.method private static getHumanReadableWimaxStatus(I)Ljava/lang/String;
    .locals 1
    .parameter "nWimaxStatus"

    .prologue
    .line 341
    packed-switch p0, :pswitch_data_0

    .line 353
    const-string v0, "Some other status!"

    :goto_0
    return-object v0

    .line 343
    :pswitch_0
    const-string v0, "Disabled"

    goto :goto_0

    .line 345
    :pswitch_1
    const-string v0, "Disabling"

    goto :goto_0

    .line 347
    :pswitch_2
    const-string v0, "Enabled"

    goto :goto_0

    .line 349
    :pswitch_3
    const-string v0, "Enabling"

    goto :goto_0

    .line 351
    :pswitch_4
    const-string v0, "Unknown"

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private handleErrorAuth(I)V
    .locals 3
    .parameter "nErrorMsg"

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleErrorAuth]  Error Authentication Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905d1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905bb

    new-instance v2, Lcom/android/settings/wimax/WimaxEnabler$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxEnabler$7;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    .line 367
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 368
    return-void
.end method

.method private handleWimaxStateChanged(Landroid/net/wimax/WimaxState;I)V
    .locals 6
    .parameter "wimaxState"
    .parameter "nWimaxStateDetail"

    .prologue
    const-string v5, "WimaxEnabler"

    .line 295
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_0

    .line 296
    const-string v3, "WimaxEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  Received Wimax network state changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    sget-object v3, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne p1, v3, :cond_6

    .line 300
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v3}, Landroid/net/wimax/WimaxManager;->getConnectedNSP()Landroid/net/wimax/structs/NspInfo;

    move-result-object v0

    .line 301
    .local v0, ConnectedNspInfo:Landroid/net/wimax/structs/NspInfo;
    invoke-virtual {v0}, Landroid/net/wimax/structs/NspInfo;->getNapId()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, strTempNapId:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_1

    const-string v3, "WimaxEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  enabler napId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", framework napid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1
    if-nez v1, :cond_3

    .line 305
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_2

    const-string v3, "WimaxEnabler"

    const-string v3, "[getConnectedNSP]  framework napId is null. It will be changed to 000000."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2
    const-string v3, "000000"

    invoke-virtual {v0, v3}, Landroid/net/wimax/structs/NspInfo;->setNapId(Ljava/lang/String;)V

    .line 307
    const-string v1, "000000"

    .line 310
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 311
    :cond_4
    iput-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    .line 312
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_5

    const-string v3, "WimaxEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  napid changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxEnabler;->updateNapId(Ljava/lang/String;)V

    .line 317
    .end local v0           #ConnectedNspInfo:Landroid/net/wimax/structs/NspInfo;
    .end local v1           #strTempNapId:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v3}, Landroid/net/wimax/WimaxManager;->isWimaxEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 318
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_7

    const-string v3, "WimaxEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  WimaxState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/settings/wimax/WimaxStatus;->getStatus(Landroid/content/Context;Landroid/net/wimax/WimaxState;I)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, summary:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    .end local v2           #summary:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private handleWimaxStatusChanged(II)V
    .locals 6
    .parameter "nWimaxStatus"
    .parameter "nPreviousWimaxStatus"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v1, :cond_0

    .line 251
    const-string v1, "WimaxEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleWimaxStatusChanged]\tReceived Wimax Status changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/settings/wimax/WimaxEnabler;->getHumanReadableWimaxStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/wimax/WimaxEnabler;->getHumanReadableWimaxStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_1

    .line 291
    :goto_0
    return-void

    .line 258
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 282
    const v0, 0x7f0905cd

    .line 283
    .local v0, nMessage:I
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    const v0, 0x7f0905ce

    .line 286
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 260
    .end local v0           #nMessage:I
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0905cc

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 264
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0905cb

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 273
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 276
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 284
    .restart local v0       #nMessage:I
    :cond_3
    if-nez p2, :cond_2

    const v0, 0x7f0905cf

    goto :goto_1

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isWimaxAllowed(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const-string v4, "wimax"

    .line 327
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 337
    :goto_0
    return v1

    .line 331
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, radios:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "wimax"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v3

    .line 333
    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_3

    const-string v1, "wimax"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setWimaxEnabled(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWimaxEnabled called with enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v0, p1}, Landroid/net/wimax/WimaxManager;->setWimaxEnabled(Z)Z

    .line 246
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxEnabler"

    const-string v1, "on destroy was called to dismiss pop-ups"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->UsbDia:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->UsbDia:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->UsbDia1:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->UsbDia1:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->turnoffusb:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->turnoffusb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 381
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 382
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->UsbcableDia:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 383
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->UsbcableDia:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 384
    :cond_6
    return-void
.end method

.method public getEnableLog()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    const-string v14, "[getEnableLog]\tFile close error"

    const-string v13, "WimaxEnabler"

    .line 393
    const/4 v8, 0x0

    .line 395
    .local v8, strMsg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 396
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 398
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v9, "/data/4G.txt"

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 406
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v8

    .line 412
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 413
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 420
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 421
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 422
    const/4 v9, 0x1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 424
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #i:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    return v9

    .line 399
    :catch_0
    move-exception v9

    move-object v5, v9

    .local v5, fnfe:Ljava/io/FileNotFoundException;
    move v9, v12

    .line 401
    goto :goto_1

    .line 414
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    move-object v7, v9

    .line 415
    .local v7, ioe:Ljava/io/IOException;
    const-string v9, "WimaxEnabler"

    const-string v9, "[getEnableLog]\tFile close error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move v9, v12

    .line 417
    goto :goto_1

    .line 407
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 408
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v9, "WimaxEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getEnableLog]\tFile error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 412
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 413
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move v9, v12

    .line 417
    goto :goto_1

    .line 414
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    move-object v7, v9

    .line 415
    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v9, "WimaxEnabler"

    const-string v9, "[getEnableLog]\tFile close error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move v9, v12

    .line 417
    goto :goto_1

    .line 411
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v9

    .line 412
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 413
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 417
    throw v9

    .line 414
    :catch_4
    move-exception v9

    move-object v7, v9

    .line 415
    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v9, "WimaxEnabler"

    const-string v9, "[getEnableLog]\tFile close error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move v9, v12

    .line 417
    goto :goto_1

    .line 420
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #i:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move v9, v12

    .line 424
    goto :goto_1

    .line 411
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #i:I
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 407
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v9

    move-object v2, v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "value"

    .prologue
    const v7, 0x7f0905bc

    const v6, 0x7f0905bb

    const v5, 0x7f09008c

    const v4, 0x1080027

    .line 181
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v1, :cond_0

    const-string v2, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange called for Preference: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bNewValue:Z

    .line 185
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bNewValue:Z

    if-eqz v1, :cond_4

    .line 186
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    sget-boolean v1, Lcom/android/settings/wimax/WimaxEnabler;->m_bIsWifiConnected:Z

    if-eqz v1, :cond_2

    .line 189
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905bd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wimax/WimaxEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxEnabler$2;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    .line 197
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 240
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 200
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905be

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wimax/WimaxEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxEnabler$4;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wimax/WimaxEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxEnabler$3;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    .line 212
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 215
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bNewValue:Z

    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->setWimaxEnabled(Z)V

    goto :goto_0

    .line 218
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bMobileAPOn:Z

    if-eqz v1, :cond_5

    .line 220
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905bf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wimax/WimaxEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxEnabler$6;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wimax/WimaxEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxEnabler$5;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    .line 232
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 234
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bNewValue:Z

    invoke-direct {p0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->setWimaxEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxEnabler"

    const-string v1, "pause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 159
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxStatus()I

    move-result v0

    .line 160
    .local v0, status:I
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxEnabler;->getEnableLog()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    .line 161
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    invoke-static {v1}, Lcom/android/settings/wimax/WimaxStatus;->setEnableLog(Z)V

    .line 162
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    invoke-static {v1}, Lcom/android/settings/wimax/WimaxNetworkPreference;->setEnableLog(Z)V

    .line 163
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    return-void

    .line 165
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateNapId(Ljava/lang/String;)V
    .locals 3
    .parameter "strNapId"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    .line 388
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateNapId]  calling WimaxStatus.updateNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    const-string v0, "000002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "000004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxStatus;->updateNapId(Z)V

    .line 390
    return-void

    .line 389
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
