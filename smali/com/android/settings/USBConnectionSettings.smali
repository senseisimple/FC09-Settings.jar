.class public Lcom/android/settings/USBConnectionSettings;
.super Landroid/app/Activity;
.source "USBConnectionSettings.java"


# instance fields
.field private mAskOnConnectionButton:Landroid/widget/RadioButton;

.field private mChargingButton:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mMassStorageButton:Landroid/widget/RadioButton;

.field private mTetheredButton:Landroid/widget/RadioButton;

.field radio_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    new-instance v0, Lcom/android/settings/USBConnectionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/USBConnectionSettings$1;-><init>(Lcom/android/settings/USBConnectionSettings;)V

    iput-object v0, p0, Lcom/android/settings/USBConnectionSettings;->radio_listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mChargingButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/USBConnectionSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mMassStorageButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mTetheredButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mAskOnConnectionButton:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v4, 0x7f030053

    invoke-virtual {p0, v4}, Lcom/android/settings/USBConnectionSettings;->setContentView(I)V

    .line 50
    iput-object p0, p0, Lcom/android/settings/USBConnectionSettings;->mContext:Landroid/content/Context;

    .line 52
    const v4, 0x7f0b00f6

    invoke-virtual {p0, v4}, Lcom/android/settings/USBConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/USBConnectionSettings;->mChargingButton:Landroid/widget/RadioButton;

    .line 53
    const v4, 0x7f0b00fb

    invoke-virtual {p0, v4}, Lcom/android/settings/USBConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/USBConnectionSettings;->mMassStorageButton:Landroid/widget/RadioButton;

    .line 54
    const v4, 0x7f0b00ff

    invoke-virtual {p0, v4}, Lcom/android/settings/USBConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/USBConnectionSettings;->mTetheredButton:Landroid/widget/RadioButton;

    .line 55
    const v4, 0x7f0b0103

    invoke-virtual {p0, v4}, Lcom/android/settings/USBConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/USBConnectionSettings;->mAskOnConnectionButton:Landroid/widget/RadioButton;

    .line 57
    iget-object v4, p0, Lcom/android/settings/USBConnectionSettings;->mChargingButton:Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/settings/USBConnectionSettings;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v4, p0, Lcom/android/settings/USBConnectionSettings;->mMassStorageButton:Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/settings/USBConnectionSettings;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v4, p0, Lcom/android/settings/USBConnectionSettings;->mTetheredButton:Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/settings/USBConnectionSettings;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v4, p0, Lcom/android/settings/USBConnectionSettings;->mAskOnConnectionButton:Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/settings/USBConnectionSettings;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v4, 0x7f0b00f3

    invoke-virtual {p0, v4}, Lcom/android/settings/USBConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 63
    .local v1, chargingLayout:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/settings/USBConnectionSettings;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v4, 0x7f0b00f8

    invoke-virtual {p0, v4}, Lcom/android/settings/USBConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 66
    .local v2, massStorageLayout:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/settings/USBConnectionSettings;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v4, 0x7f0b00fc

    invoke-virtual {p0, v4}, Lcom/android/settings/USBConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 69
    .local v3, tetheredLayout:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/settings/USBConnectionSettings;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v4, 0x7f0b0100

    invoke-virtual {p0, v4}, Lcom/android/settings/USBConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 72
    .local v0, askOnConnectionLayout:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/settings/USBConnectionSettings;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_select_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/USBConnectionSettings;->setDefault(I)V

    .line 147
    return-void
.end method

.method protected setDefault(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    if-nez p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mAskOnConnectionButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mChargingButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mMassStorageButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mTetheredButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 98
    :goto_0
    return-void

    .line 82
    :cond_0
    if-ne p1, v2, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mChargingButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mMassStorageButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mTetheredButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mAskOnConnectionButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mMassStorageButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mChargingButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mTetheredButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mAskOnConnectionButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mTetheredButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mChargingButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mMassStorageButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings;->mAskOnConnectionButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
