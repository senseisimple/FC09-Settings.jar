.class public Lcom/android/settings/UNASettingList;
.super Landroid/app/Activity;
.source "UNASettingList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mRadioButton1:Lcom/sec/android/touchwiz/widget/TwRadioButton;

.field mRadioButton2:Lcom/sec/android/touchwiz/widget/TwRadioButton;

.field mRadioButton3:Lcom/sec/android/touchwiz/widget/TwRadioButton;

.field mRadioGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UNASettingList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/UNASettingList;->updateUI()V

    return-void
.end method

.method private updateUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "una_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 109
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton2:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    .line 112
    :goto_0
    return-void

    .line 103
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton1:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton3:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private warningMessage()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, chargePopup:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090537

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905b0

    invoke-virtual {p0, v2}, Lcom/android/settings/UNASettingList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09034f

    new-instance v3, Lcom/android/settings/UNASettingList$2;

    invoke-direct {v3, p0}, Lcom/android/settings/UNASettingList$2;-><init>(Lcom/android/settings/UNASettingList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09034e

    new-instance v3, Lcom/android/settings/UNASettingList$1;

    invoke-direct {v3, p0}, Lcom/android/settings/UNASettingList$1;-><init>(Lcom/android/settings/UNASettingList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 96
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const-string v2, "una_setting"

    const-string v1, "UNASetting"

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    :pswitch_0
    const-string v0, "UNASetting"

    const-string v0, "Wi-Fi only"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "una_setting"

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->finish()V

    .line 78
    :goto_0
    return-void

    .line 59
    :pswitch_1
    const-string v0, "UNASetting"

    const-string v0, "Off"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "una_setting"

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->finish()V

    goto :goto_0

    .line 65
    :pswitch_2
    const-string v0, "UNASetting"

    const-string v0, "Packet data"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0}, Lcom/android/settings/UNASettingList;->warningMessage()V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x7f0b00eb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f030050

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "una_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 31
    .local v0, una_setting_mode:I
    const-string v1, "UNASetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : Settings.System.UNA_SETTING : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const v1, 0x7f0b00ea

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    iput-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    .line 34
    const v1, 0x7f0b00eb

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    iput-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton1:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    .line 35
    const v1, 0x7f0b00ec

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    iput-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton2:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    .line 36
    const v1, 0x7f0b00ed

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    iput-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton3:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    .line 38
    packed-switch v0, :pswitch_data_0

    .line 46
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton2:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton1:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton2:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton3:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void

    .line 40
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton1:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton3:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
