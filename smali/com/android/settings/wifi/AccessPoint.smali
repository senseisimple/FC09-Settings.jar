.class Lcom/android/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I


# instance fields
.field final bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field private mSignal:Landroid/widget/ImageView;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mTitleText:Landroid/widget/TextView;

.field private mWpsIcon:Landroid/widget/ImageView;

.field final networkId:I

.field final security:I

.field final ssid:Ljava/lang/String;

.field public wpsPinMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 49
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 152
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 153
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 154
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 155
    invoke-static {p2}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 157
    iget v0, p2, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 159
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsPinMode:Z

    .line 160
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 141
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 142
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 143
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "any"

    :goto_1
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 144
    invoke-static {p2}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 145
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 146
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 147
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 148
    return-void

    .line 142
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_1
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const-string v2, "\""

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x2

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x3

    goto :goto_0

    .line 136
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter "config"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 94
    :goto_0
    return v0

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v4

    .line 87
    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static getSecurity2(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .parameter "config"

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, ret_security:I
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 105
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v0, 0x2

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const/4 v0, 0x3

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    const/4 v0, 0x4

    goto :goto_0

    .line 119
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 298
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 324
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 302
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 304
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v4, :cond_1

    .line 305
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v4}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    :cond_1
    const/4 v2, 0x0

    .line 308
    .local v2, status:Ljava/lang/String;
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_3

    .line 309
    const v4, 0x7f09018c

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v4, :cond_5

    .line 316
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 310
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_2

    .line 311
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v4, v7, :cond_4

    const v4, 0x7f09018b

    :goto_2
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const v4, 0x7f09018a

    goto :goto_2

    .line 318
    :cond_5
    if-nez v2, :cond_6

    const v4, 0x7f09018d

    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, format:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, type:[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v6, v3, v6

    aput-object v6, v4, v5

    aput-object v2, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    .end local v1           #format:Ljava/lang/String;
    .end local v3           #type:[Ljava/lang/String;
    :cond_6
    const v4, 0x7f09018e

    goto :goto_3
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 286
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    sub-int v1, v0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 288
    sub-int v1, v0, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 290
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 10
    .parameter "preference"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 203
    instance-of v5, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v5, :cond_0

    move v5, v8

    .line 227
    :goto_0
    return v5

    .line 206
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    move-object v2, v0

    .line 208
    .local v2, other:Lcom/android/settings/wifi/AccessPoint;
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v6, v2, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v5, v6, :cond_2

    .line 209
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v8

    goto :goto_0

    .line 212
    :cond_2
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v6, v2, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v5, v6

    if-gez v5, :cond_4

    .line 213
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v8

    goto :goto_0

    .line 216
    :cond_4
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget v6, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v5, v6

    if-gez v5, :cond_6

    .line 217
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v5, v7, :cond_5

    move v5, v7

    goto :goto_0

    :cond_5
    move v5, v8

    goto :goto_0

    .line 220
    :cond_6
    iget v5, v2, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v5, v9}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    .line 221
    .local v3, otherRssi:I
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v5, v9}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    .line 222
    .local v4, rssi:I
    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    .line 223
    .local v1, difference:I
    if-eqz v1, :cond_7

    move v5, v1

    .line 224
    goto :goto_0

    .line 227
    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 267
    const/4 v0, -0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 165
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    .line 166
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 169
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f040033

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 170
    .local v3, xpp:Landroid/content/res/XmlResourceParser;
    invoke-static {v2, v3}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 171
    .local v0, csl:Landroid/content/res/ColorStateList;
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 172
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #xpp:Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    const v4, 0x7f0b009f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    .line 181
    const v4, 0x7f0b009e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mWpsIcon:Landroid/widget/ImageView;

    .line 184
    iget-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->wpsPinMode:Z

    if-eqz v4, :cond_1

    .line 189
    :cond_1
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_2

    .line 190
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mWpsIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 198
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 199
    return-void

    .line 173
    .restart local v2       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 174
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "AccessPoint"

    const-string v5, "onBindView(), XmlResourceParser exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    const v5, 0x7f020091

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_2
    invoke-virtual {v4, v5, v7}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_2
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, reorder:Z
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 249
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 250
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 251
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 252
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 253
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 260
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 263
    :cond_1
    return-void

    .line 249
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 254
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 256
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 257
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 258
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .parameter "result"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 235
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsPinMode:Z

    .line 238
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 241
    :cond_0
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
