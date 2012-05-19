.class public Lcom/android/settings/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static bdaddr:Ljava/lang/String;

.field private static buf:[B

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private PRL_SysProp:Ljava/lang/String;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mPrl:Landroid/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private mSignalStrength:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

.field private user_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->bdaddr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 105
    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    .line 160
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 542
    new-instance v0, Lcom/android/settings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$3;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 8
    .parameter "t"

    .prologue
    const-wide/16 v5, 0x3c

    const-string v7, ":"

    .line 600
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 601
    .local v2, s:I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 602
    .local v1, m:I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 604
    .local v0, h:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private convertDecESNtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6
    .parameter "esnno"

    .prologue
    const/4 v4, 0x3

    const-string v5, "0"

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 766
    .local v0, hmfcode:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 768
    .local v1, hserialno:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 769
    const-string v2, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 788
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 773
    :pswitch_0
    const-string v2, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 776
    :pswitch_1
    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 779
    :pswitch_2
    const-string v2, "000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 782
    :pswitch_3
    const-string v2, "0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 785
    :pswitch_4
    const-string v2, "00000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertDecMEIDtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 10
    .parameter "meidno"

    .prologue
    const/16 v5, 0xa

    const-string v9, "0000"

    const-string v8, "000"

    const-string v7, "00"

    const-string v6, "0"

    .line 799
    new-instance v3, Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, hmfcode:Ljava/lang/String;
    new-instance v3, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, hserialno:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .local v0, hexaMEID:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 825
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 843
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 804
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 807
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 810
    :pswitch_2
    const-string v3, "000"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 813
    :pswitch_3
    const-string v3, "0000"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 816
    :pswitch_4
    const-string v3, "00000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 819
    :pswitch_5
    const-string v3, "000000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 822
    :pswitch_6
    const-string v3, "0000000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 828
    :pswitch_7
    const-string v3, "0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 831
    :pswitch_8
    const-string v3, "00"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 834
    :pswitch_9
    const-string v3, "000"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 837
    :pswitch_a
    const-string v3, "0000"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 840
    :pswitch_b
    const-string v3, "00000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 802
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 826
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private convertDeviceIdtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "devID"

    .prologue
    .line 745
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 746
    .local v0, len:I
    const/4 v1, 0x0

    .line 748
    .local v1, out:Ljava/lang/StringBuilder;
    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 749
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertDecESNtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 753
    :cond_0
    :goto_0
    return-object v1

    .line 750
    :cond_1
    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    .line 751
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertDecMEIDtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private getOemData(I)V
    .locals 7
    .parameter "oemId"

    .prologue
    .line 222
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 229
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 230
    .local v3, fileSize:I
    const/16 v4, 0x9

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 231
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 232
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 241
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 237
    .local v2, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 592
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 593
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 565
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 566
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 568
    .local v2, btAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 578
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 573
    .local v0, address:Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_1

    .line 574
    sput-object v0, Lcom/android/settings/deviceinfo/Status;->bdaddr:Ljava/lang/String;

    .line 575
    :cond_1
    sget-object v3, Lcom/android/settings/deviceinfo/Status;->bdaddr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/settings/deviceinfo/Status;->bdaddr:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 572
    .end local v0           #address:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 575
    .restart local v0       #address:Ljava/lang/String;
    :cond_3
    const v3, 0x7f090247

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 436
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    sget-object p2, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 440
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 443
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 555
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 556
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 558
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 559
    .local v2, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 560
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 562
    return-void

    .line 559
    .end local v0           #macAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 560
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_1
    const v4, 0x7f090247

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 5

    .prologue
    .line 533
    const-string v4, "WiMax"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wimax/WimaxManager;

    .line 534
    .local v3, wimaxManager:Landroid/net/wimax/WimaxManager;
    invoke-virtual {v3}, Landroid/net/wimax/WimaxManager;->getDeviceInformation()Landroid/net/wimax/DeviceInfo;

    move-result-object v0

    .line 536
    .local v0, deviceInfo:Landroid/net/wimax/DeviceInfo;
    const-string v4, "wimax_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 537
    .local v2, wimaxMacAddressPref:Landroid/preference/Preference;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    move-object v1, v4

    .line 538
    .local v1, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    return-void

    .line 537
    .end local v1           #macAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/net/wimax/DeviceInfo;->getMacAddressString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 538
    .restart local v1       #macAddress:Ljava/lang/String;
    :cond_1
    const v4, 0x7f090247

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 453
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 454
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 471
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void

    .line 458
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    goto :goto_0

    .line 461
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    goto :goto_0

    .line 464
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    goto :goto_0

    .line 467
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    const-string v4, "roaming_state"

    .line 475
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 476
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 491
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    const-string v2, "roaming_state"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void

    .line 480
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 481
    goto :goto_0

    .line 484
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 485
    goto :goto_0

    .line 487
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_0
    const-string v2, "roaming_state"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 478
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const-string v11, "min_number"

    const-string v10, "imei_sv"

    const-string v9, "imei"

    const-string v8, "meid_number"

    .line 245
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 248
    new-instance v6, Lcom/android/settings/deviceinfo/Status$MyHandler;

    invoke-direct {v6, p0}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 250
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 252
    const v6, 0x7f04000e

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 254
    const-string v6, "battery_status"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 257
    sget-object v6, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 258
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 261
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 263
    const-string v6, "signal_strength"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 270
    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/Status;->getOemData(I)V

    .line 272
    const/16 v6, 0xe

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/Status;->getOemData(I)V

    .line 274
    const-string v6, "up_time"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 277
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CDMA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 289
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, msidNumber:Ljava/lang/String;
    const-string v1, ""

    .line 292
    .local v1, formattedNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 293
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    :cond_1
    const-string v6, "min_number"

    invoke-direct {p0, v11, v1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, devId:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v2, meid:Ljava/lang/StringBuilder;
    const-string v6, "Dec:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nHex:0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->convertDeviceIdtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 307
    const-string v6, "meid_number"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .end local v2           #meid:Ljava/lang/StringBuilder;
    :goto_0
    const-string v6, "imei"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 317
    .local v5, removablePref:Landroid/preference/Preference;
    if-eqz v5, :cond_2

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    :cond_2
    const-string v6, "imei_sv"

    invoke-virtual {p0, v10}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 321
    if-eqz v5, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    .end local v0           #devId:Ljava/lang/String;
    .end local v1           #formattedNumber:Ljava/lang/String;
    .end local v3           #msidNumber:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, rawNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 368
    .restart local v1       #formattedNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 369
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    :cond_4
    const-string v6, "number"

    invoke-direct {p0, v6, v1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v6, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 375
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 376
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v7, 0x12c

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 379
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    .line 381
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 382
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 383
    return-void

    .line 311
    .end local v4           #rawNumber:Ljava/lang/String;
    .end local v5           #removablePref:Landroid/preference/Preference;
    .restart local v0       #devId:Ljava/lang/String;
    .restart local v3       #msidNumber:Ljava/lang/String;
    :cond_5
    const-string v6, "meid_number"

    const-string v6, "Unknown"

    invoke-direct {p0, v8, v6}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v0           #devId:Ljava/lang/String;
    .end local v1           #formattedNumber:Ljava/lang/String;
    .end local v3           #msidNumber:Ljava/lang/String;
    :cond_6
    const-string v6, "imei"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 329
    .restart local v5       #removablePref:Landroid/preference/Preference;
    if-eqz v5, :cond_7

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    :cond_7
    const-string v6, "imei_sv"

    invoke-virtual {p0, v10}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 333
    if-eqz v5, :cond_8

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 347
    :cond_8
    const-string v6, "prl_version"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 348
    if-eqz v5, :cond_9

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 351
    :cond_9
    const-string v6, "meid_number"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 352
    if-eqz v5, :cond_a

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    :cond_a
    const-string v6, "min_number"

    invoke-virtual {p0, v11}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 356
    if-eqz v5, :cond_b

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    :cond_b
    const-string v6, "user_name"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 361
    if-eqz v5, :cond_3

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 410
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 412
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 413
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 387
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 389
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 390
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 395
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrength()V

    .line 399
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 400
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    .line 402
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 406
    return-void
.end method

.method updatePrlVersion(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    .line 857
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 859
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 870
    const-string v1, "prl_version"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPrl:Landroid/preference/Preference;

    .line 871
    const-string v1, "ril.prl_ver_1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    .line 872
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 875
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPrl:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 877
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPrl:Landroid/preference/Preference;

    const-string v2, "PRL : <unknown>"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateSignalStrength()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    const-string v7, " "

    .line 506
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 507
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 509
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 511
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 513
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 516
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 518
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 520
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrength()I

    move-result v1

    .line 522
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 524
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f09001f

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090020

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 529
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v1           #signalAsu:I
    .end local v2           #signalDbm:I
    .end local v3           #state:I
    :cond_4
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 581
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 582
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 584
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 585
    const-wide/16 v2, 0x1

    .line 588
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    return-void
.end method

.method updateUserName(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 887
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 889
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 900
    const-string v3, "user_name"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    .line 901
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    sput-object v3, Lcom/android/settings/deviceinfo/Status;->buf:[B

    .line 902
    sget-object v3, Lcom/android/settings/deviceinfo/Status;->buf:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    iput v3, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    .line 903
    const/4 v2, 0x1

    .line 909
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    if-ge v1, v3, :cond_2

    .line 911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/deviceinfo/Status;->buf:[B

    add-int v5, v1, v2

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 915
    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 916
    :cond_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    const-string v4, "<Not set>"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 918
    :cond_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
