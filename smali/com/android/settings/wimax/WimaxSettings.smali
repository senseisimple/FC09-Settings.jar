.class public Lcom/android/settings/wimax/WimaxSettings;
.super Landroid/preference/PreferenceActivity;
.source "WimaxSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxSettings$5;,
        Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;
    }
.end annotation


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field private currentWimaxState:Landroid/net/wimax/WimaxState;

.field private currentWimaxStatus:I

.field private mConnectedNspInfo:Landroid/net/wimax/structs/NspInfo;

.field private mFilter:Landroid/content/IntentFilter;

.field private mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mPreferenceClickListener:Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyState:I

.field private mWimaxCategory:Lcom/android/settings/ProgressCategory;

.field private mWimaxEnabled:Landroid/preference/CheckBoxPreference;

.field private mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

.field private mWimaxManager:Landroid/net/wimax/WimaxManager;

.field private m_bLog:Z

.field private m_nCurrentStateDetail:I

.field private m_nWimaxSignal:I

.field private m_strNapId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wimax/WimaxSettings;->currentWimaxStatus:I

    .line 88
    iput v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I

    .line 89
    iput v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxSignal:I

    .line 91
    iput v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mTelephonyState:I

    .line 103
    new-instance v0, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreferenceClickListener:Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

    .line 105
    new-instance v0, Lcom/android/settings/wimax/WimaxSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxSettings$1;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 438
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wimax/WimaxSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/wimax/WimaxState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->currentWimaxState:Landroid/net/wimax/WimaxState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/wimax/WimaxState;)Landroid/net/wimax/WimaxState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings;->currentWimaxState:Landroid/net/wimax/WimaxState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wimax/WimaxSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wimax/WimaxSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/wimax/WimaxState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStateChanged(Landroid/net/wimax/WimaxState;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wimax/WimaxSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/settings/wimax/WimaxSettings;->currentWimaxStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/wimax/WimaxSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/settings/wimax/WimaxSettings;->currentWimaxStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wimax/WimaxSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStatusChanged(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/wimax/WimaxSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/settings/wimax/WimaxSettings;->mTelephonyState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wimax/WimaxSettings;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxSettings;->buildDialogConnected(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method private buildDialogConnected(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 455
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0905db

    invoke-virtual {p0, v2}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905bb

    new-instance v2, Lcom/android/settings/wimax/WimaxSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxSettings$3;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->alert:Landroid/app/AlertDialog;

    .line 461
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method private createPreference(Ljava/lang/String;)V
    .locals 3
    .parameter "napId"

    .prologue
    .line 420
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxSettings"

    const-string v2, "createPreference called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    new-instance v0, Lcom/android/settings/wimax/WimaxNetworkPreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wimax/WimaxNetworkPreference;-><init>(Lcom/android/settings/wimax/WimaxSettings;Ljava/lang/String;)V

    .line 422
    .local v0, pref:Lcom/android/settings/wimax/WimaxNetworkPreference;
    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    .line 423
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    const-string v2, "000002"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "000004"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const v2, 0x7f0905dc

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 424
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreferenceClickListener:Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 425
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Lcom/android/settings/ProgressCategory;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 428
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 429
    return-void

    .line 423
    :cond_2
    const v2, 0x7f0905dd

    goto :goto_0
.end method

.method private deletePreference()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    .line 436
    :cond_0
    return-void
.end method

.method private getConnectedNSP()V
    .locals 4

    .prologue
    const-string v3, "000000"

    const-string v2, "WimaxSettings"

    .line 362
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxSettings"

    const-string v0, "getConnectedNSP called"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v0}, Landroid/net/wimax/WimaxManager;->getConnectedNSP()Landroid/net/wimax/structs/NspInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/wimax/structs/NspInfo;

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/wimax/structs/NspInfo;

    invoke-virtual {v0}, Landroid/net/wimax/structs/NspInfo;->getNapId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 370
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxSettings"

    const-string v0, "[getConnectedNSP]  napId of mConnectedNspInfo is null. It will be changed to 000000."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/wimax/structs/NspInfo;

    const-string v1, "000000"

    invoke-virtual {v0, v3}, Landroid/net/wimax/structs/NspInfo;->setNapId(Ljava/lang/String;)V

    .line 372
    const-string v0, "000000"

    iput-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->updateNapId(Ljava/lang/String;)V

    .line 377
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_3

    const-string v0, "WimaxSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getConnectedNSP]  m_strNapId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->createPreference(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method private handleWimaxStateChanged(Landroid/net/wimax/WimaxState;I)V
    .locals 5
    .parameter "wimaxState"
    .parameter "wimaxStateDetail"

    .prologue
    const/4 v4, 0x6

    const-string v3, "WimaxSettings"

    .line 296
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleWimaxStateChanged]  Received Wimax state changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    sget-object v1, Lcom/android/settings/wimax/WimaxSettings$5;->$SwitchMap$android$net$wimax$WimaxState:[I

    invoke-virtual {p1}, Landroid/net/wimax/WimaxState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 300
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-nez v1, :cond_4

    .line 301
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_2

    const-string v1, "WimaxSettings"

    const-string v1, "[handleWimaxStateChanged]  preference == null, create preference"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->getConnectedNSP()V

    .line 324
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 325
    if-ne p2, v4, :cond_c

    .line 326
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    const v2, 0x7f0905d8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 304
    :cond_4
    if-eq p2, v4, :cond_3

    .line 305
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_5

    const-string v1, "WimaxSettings"

    const-string v1, "[handleWimaxStateChanged]  preference !=null, check napid"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getConnectedNSP()Landroid/net/wimax/structs/NspInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/wimax/structs/NspInfo;

    .line 308
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/wimax/structs/NspInfo;

    invoke-virtual {v1}, Landroid/net/wimax/structs/NspInfo;->getNapId()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, tempNapId:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_6

    const-string v1, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleWimaxStateChanged]  settings napId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", framework napid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_6
    if-eqz v0, :cond_b

    const-string v1, "000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 311
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 312
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_7

    const-string v1, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleWimaxStateChanged]  napid changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    const-string v2, "000002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "000004"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const v2, 0x7f0905dc

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 314
    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->updateNapId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 313
    :cond_9
    const v2, 0x7f0905dd

    goto :goto_2

    .line 316
    :cond_a
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_3

    const-string v1, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleWimaxStateChanged]  Dont update same napid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 319
    :cond_b
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_3

    const-string v1, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore napid 0 or null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 328
    .end local v0           #tempNapId:Ljava/lang/String;
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    const v2, 0x7f0905d7

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 338
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->deletePreference()V

    goto/16 :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleWimaxStatusChanged(I)V
    .locals 3
    .parameter "mWimaxStatus"

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleWimaxStatusChanged]  Received Wimax status changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 349
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->deletePreference()V

    goto :goto_0

    .line 352
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->deletePreference()V

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCreatePreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 159
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxSettings"

    const-string v2, "onCreatePreferences called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    const v1, 0x7f040036

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->addPreferencesFromResource(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 164
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "wimax_networks"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ProgressCategory;

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Lcom/android/settings/ProgressCategory;

    .line 167
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "only_wimax_networks"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 170
    const-string v1, "wimax_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    .line 173
    new-instance v2, Lcom/android/settings/wimax/WimaxEnabler;

    const-string v1, "WiMax"

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wimax/WimaxManager;

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/settings/wimax/WimaxEnabler;-><init>(Landroid/content/Context;Landroid/net/wimax/WimaxManager;Landroid/preference/CheckBoxPreference;)V

    iput-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    .line 174
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wimax/WimaxEnabler;->getEnableLog()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    .line 178
    :cond_1
    const-string v1, "open_network_notifications_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    .line 180
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wimax_networks_available_notification_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 186
    return-void

    :cond_3
    move v2, v5

    .line 180
    goto :goto_0
.end method

.method private static putAddress(Ljava/lang/StringBuffer;I)V
    .locals 3
    .parameter "buf"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    .line 496
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 498
    return-void
.end method

.method private updateNapId(Ljava/lang/String;)V
    .locals 3
    .parameter "strNapId"

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 502
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxSettings"

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

    .line 503
    :cond_0
    const-string v0, "000002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "000004"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxStatus;->updateNapId(Z)V

    .line 504
    return-void

    .line 503
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWimaxSignal(II)V
    .locals 0
    .parameter "WimaxSignalLevel"
    .parameter "stateDetail"

    .prologue
    .line 507
    invoke-static {p1, p2}, Lcom/android/settings/wimax/WimaxNetworkPreference;->updateWimaxSignal(II)V

    .line 508
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->onCreatePreferences()V

    .line 136
    const-string v1, "WiMax"

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wimax/WimaxManager;

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    .line 138
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    .line 139
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 145
    new-instance v0, Lcom/android/settings/wimax/WimaxSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxSettings$2;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    .line 152
    .local v0, listener:Landroid/telephony/PhoneStateListener;
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 153
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 221
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 223
    const v0, 0x7f0905e0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 225
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 213
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxSettings"

    const-string v1, "onDestroy was called to dismiss pop-ups"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->destroy()V

    .line 217
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 250
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 258
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 254
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v0, v1}, Landroid/net/wimax/WimaxManager;->startScan(Z)Z

    move v0, v1

    .line 255
    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 201
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxSettings"

    const-string v1, "onPause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->pause()V

    .line 206
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 269
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick called for Preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wimax_networks_available_notification_on"

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    :cond_1
    return v3

    :cond_2
    move v2, v3

    .line 271
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 230
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxMode()I

    move-result v0

    .line 231
    .local v0, nWimaxMode:I
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu wimaxmode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->currentWimaxState:Landroid/net/wimax/WimaxState;

    sget-object v2, Landroid/net/wimax/WimaxState;->DISCONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/wimax/WimaxSettings;->currentWimaxStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 233
    iget v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mTelephonyState:I

    if-ne v1, v6, :cond_2

    if-eq v0, v6, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 236
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v1, v5

    .line 245
    :goto_0
    return v1

    .line 240
    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v1, v4

    .line 241
    goto :goto_0

    .line 244
    :cond_3
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v1, v5

    .line 245
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 191
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxSettings"

    const-string v1, "onResume called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->resume()V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wimax/WimaxSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "\n"

    const-string v4, " "

    .line 477
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v2}, Landroid/net/wimax/WimaxManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 478
    .local v0, info:Landroid/net/DhcpInfo;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 480
    .local v1, str:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0905e2

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    iget v2, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0905e3

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0905e4

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    iget v2, v0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0905e5

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    iget v2, v0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 489
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public updateIdleWimaxSignal(I)V
    .locals 4
    .parameter "stateDetail"

    .prologue
    .line 406
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateIdleWimaxSignal]\textraStateDetail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxState;->READY:Landroid/net/wimax/WimaxState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v1, v2, :cond_2

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wimax/WimaxNetworkPreference;

    .line 413
    .local v0, pref:Lcom/android/settings/wimax/WimaxNetworkPreference;
    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {v0, p1}, Lcom/android/settings/wimax/WimaxNetworkPreference;->updateIdleSignalLevelIcon(I)V

    .line 417
    .end local v0           #pref:Lcom/android/settings/wimax/WimaxNetworkPreference;
    :cond_2
    return-void
.end method

.method public updateWimaxSignalLevel(I)V
    .locals 4
    .parameter "signalLevel"

    .prologue
    const-string v3, "WimaxSettings"

    .line 382
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateWimaxSignalInfo]\tWimax intent signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WiMAX State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v2}, Landroid/net/wimax/WimaxManager;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxState;->READY:Landroid/net/wimax/WimaxState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxState;->CONNECTING:Landroid/net/wimax/WimaxState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/wimax/WimaxState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/wimax/WimaxManager;

    invoke-virtual {v1}, Landroid/net/wimax/WimaxManager;->getWimaxState()Landroid/net/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v1, v2, :cond_5

    .line 388
    :cond_1
    const/4 v1, 0x3

    if-le p1, v1, :cond_3

    .line 389
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_2

    const-string v1, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateWimaxSignalInfo]\tSignalLevel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is too big."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_2
    const/4 p1, 0x3

    .line 392
    :cond_3
    iput p1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxSignal:I

    .line 394
    iget v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxSignal:I

    iget v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->updateWimaxSignal(II)V

    .line 396
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_4

    const-string v1, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateWimaxSignalInfo]\tWimax signal changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxSignal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wimax/WimaxNetworkPreference;

    .line 399
    .local v0, pref:Lcom/android/settings/wimax/WimaxNetworkPreference;
    if-eqz v0, :cond_5

    .line 400
    iget v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxSignal:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wimax/WimaxNetworkPreference;->updateWimaxSignalLevelIcon(I)V

    .line 403
    .end local v0           #pref:Lcom/android/settings/wimax/WimaxNetworkPreference;
    :cond_5
    return-void
.end method
