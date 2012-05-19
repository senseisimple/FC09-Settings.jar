.class public Lcom/android/settings/wifi/WifiApAdvanced;
.super Landroid/preference/PreferenceActivity;
.source "WifiApAdvanced.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxClient:Landroid/preference/ListPreference;

.field private mPowerMode:Landroid/preference/ListPreference;

.field private mPowerModeValue:I

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private prefs:Landroid/content/SharedPreferences;

.field private tempMaxClient:I

.field private tempPowerModeValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApAdvanced;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->tempPowerModeValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiApAdvanced;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/settings/wifi/WifiApAdvanced;->tempPowerModeValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApAdvanced;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerModeValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiApAdvanced;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerModeValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApAdvanced;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApAdvanced;->savePreference(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApAdvanced;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->tempMaxClient:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/WifiApAdvanced;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/settings/wifi/WifiApAdvanced;->tempMaxClient:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private loadPreference(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 275
    const-string v0, "WifiApAdvanced"

    const-string v1, "loadPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v0, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/WifiApAdvanced;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->prefs:Landroid/content/SharedPreferences;

    .line 279
    if-ne v2, p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "POWERMODE_VALUE"

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerModeValue:I

    .line 281
    :cond_0
    return-void
.end method

.method private savePreference(I)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 258
    const-string v1, "WifiApAdvanced"

    const-string v2, "savePreference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/wifi/WifiApAdvanced;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApAdvanced;->prefs:Landroid/content/SharedPreferences;

    .line 261
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApAdvanced;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    if-ne v3, p1, :cond_0

    .line 264
    const-string v1, "POWERMODE_VALUE"

    iget v2, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerModeValue:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 267
    const-string v1, "MAXCLIENT_VALUE"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 270
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 90
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const-string v3, "WifiApAdvanced"

    const-string v4, "Inside on create"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object p0, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mContext:Landroid/content/Context;

    .line 94
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApAdvanced;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 95
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApProfileConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 97
    const v3, 0x7f040030

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApAdvanced;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApAdvanced;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 101
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v3, "wifi_ap_powermode"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerMode:Landroid/preference/ListPreference;

    .line 103
    const-string v3, "wifi_ap_maxclient"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;

    .line 105
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiApAdvanced;->loadPreference(I)V

    .line 107
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerMode:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerModeValue:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 109
    iget v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerModeValue:I

    if-nez v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerMode:Landroid/preference/ListPreference;

    const v4, 0x7f0905f0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 120
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerMode:Landroid/preference/ListPreference;

    new-instance v4, Lcom/android/settings/wifi/WifiApAdvanced$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiApAdvanced$1;-><init>(Lcom/android/settings/wifi/WifiApAdvanced;)V

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;

    new-instance v4, Lcom/android/settings/wifi/WifiApAdvanced$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiApAdvanced$2;-><init>(Lcom/android/settings/wifi/WifiApAdvanced;)V

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 115
    .local v0, mm:I
    iget v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerModeValue:I

    div-int/lit8 v0, v3, 0x3c

    .line 116
    const v3, 0x7f0905f1

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/wifi/WifiApAdvanced;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, ss:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced;->mPowerMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090006

    new-instance v2, Lcom/android/settings/wifi/WifiApAdvanced$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApAdvanced$4;-><init>(Lcom/android/settings/wifi/WifiApAdvanced;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090007

    new-instance v2, Lcom/android/settings/wifi/WifiApAdvanced$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApAdvanced$3;-><init>(Lcom/android/settings/wifi/WifiApAdvanced;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 221
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 216
    return-void
.end method
