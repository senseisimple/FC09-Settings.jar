.class public Lcom/android/settings/USBModeSelect;
.super Landroid/app/Activity;
.source "USBModeSelect.java"


# static fields
.field private static mCharging_Button:Landroid/widget/Button;

.field private static mMassStorageButton:Landroid/widget/Button;

.field private static mRememberCheckBox:Landroid/widget/CheckBox;

.field private static mTetheredButton:Landroid/widget/Button;


# instance fields
.field private final USBDisConnectReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    new-instance v0, Lcom/android/settings/USBModeSelect$4;

    invoke-direct {v0, p0}, Lcom/android/settings/USBModeSelect$4;-><init>(Lcom/android/settings/USBModeSelect;)V

    iput-object v0, p0, Lcom/android/settings/USBModeSelect;->USBDisConnectReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/settings/USBModeSelect;->mRememberCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/USBModeSelect;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings/USBModeSelect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private registerBroadCast()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/USBModeSelect;->USBDisConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/USBModeSelect;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/USBModeSelect;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/USBModeSelect;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/USBModeSelect;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/android/settings/USBModeSelect;->registerBroadCast()V

    .line 41
    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lcom/android/settings/USBModeSelect;->setContentView(I)V

    .line 43
    const v0, 0x7f0b0107

    invoke-virtual {p0, v0}, Lcom/android/settings/USBModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/settings/USBModeSelect;->mCharging_Button:Landroid/widget/Button;

    .line 44
    const v0, 0x7f0b0108

    invoke-virtual {p0, v0}, Lcom/android/settings/USBModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/settings/USBModeSelect;->mMassStorageButton:Landroid/widget/Button;

    .line 45
    const v0, 0x7f0b0109

    invoke-virtual {p0, v0}, Lcom/android/settings/USBModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/settings/USBModeSelect;->mTetheredButton:Landroid/widget/Button;

    .line 46
    const v0, 0x7f0b010a

    invoke-virtual {p0, v0}, Lcom/android/settings/USBModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/android/settings/USBModeSelect;->mRememberCheckBox:Landroid/widget/CheckBox;

    .line 48
    sget-object v0, Lcom/android/settings/USBModeSelect;->mCharging_Button:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/USBModeSelect$1;

    invoke-direct {v1, p0}, Lcom/android/settings/USBModeSelect$1;-><init>(Lcom/android/settings/USBModeSelect;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget-object v0, Lcom/android/settings/USBModeSelect;->mMassStorageButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/USBModeSelect$2;

    invoke-direct {v1, p0}, Lcom/android/settings/USBModeSelect$2;-><init>(Lcom/android/settings/USBModeSelect;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget-object v0, Lcom/android/settings/USBModeSelect;->mTetheredButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/USBModeSelect$3;

    invoke-direct {v1, p0}, Lcom/android/settings/USBModeSelect$3;-><init>(Lcom/android/settings/USBModeSelect;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 31
    iget-object v0, p0, Lcom/android/settings/USBModeSelect;->USBDisConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/USBModeSelect;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 32
    return-void
.end method
