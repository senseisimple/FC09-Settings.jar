.class public Lcom/android/settings/AskUSBMode;
.super Landroid/app/Activity;
.source "AskUSBMode.java"


# static fields
.field private static mCharging_Button:Landroid/widget/Button;

.field private static mDUN_Button:Landroid/widget/Button;


# instance fields
.field private final USBMENUSEL_PATH:Ljava/lang/String;

.field private final maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const-string v0, "/sys/class/sec/switch/AskOnMenuSel"

    iput-object v0, p0, Lcom/android/settings/AskUSBMode;->USBMENUSEL_PATH:Ljava/lang/String;

    .line 177
    new-instance v0, Lcom/android/settings/AskUSBMode$3;

    invoke-direct {v0, p0}, Lcom/android/settings/AskUSBMode$3;-><init>(Lcom/android/settings/AskUSBMode;)V

    iput-object v0, p0, Lcom/android/settings/AskUSBMode;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AskUSBMode;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/AskUSBMode;->selectUsb(Ljava/lang/String;)V

    return-void
.end method

.method private registerBroadCastRec()V
    .locals 3

    .prologue
    .line 171
    const-string v1, "AskUSBMode"

    const-string v2, "< AskUSBMODE > Registering BroadCast receiver :::::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v0, lIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/AskUSBMode;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AskUSBMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    return-void
.end method

.method private selectUsb(Ljava/lang/String;)V
    .locals 5
    .parameter "usb"

    .prologue
    const-string v4, "VTP"

    const-string v3, "persist.service.usb.setting"

    .line 150
    const-string v1, "VTP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const-string v1, "AskUSBMode"

    const-string v2, "sending disable intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.samsung.IcsService"

    const-string v2, "com.android.samsung.IcsService.IcsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->stopService(Landroid/content/Intent;)Z

    .line 158
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    const-string v1, "KIES"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    const-string v1, "persist.service.usb.setting"

    const-string v1, "0"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    const-string v1, "MTP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    const-string v1, "persist.service.usb.setting"

    const-string v1, "1"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_3
    const-string v1, "UMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    const-string v1, "persist.service.usb.setting"

    const-string v1, "2"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_4
    const-string v1, "VTP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    const-string v1, "ASKON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    const-string v1, "persist.service.usb.setting"

    const-string v1, "3"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/AskUSBMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/AskUSBMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media_player_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->setContentView(I)V

    .line 86
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/settings/AskUSBMode;->mCharging_Button:Landroid/widget/Button;

    .line 87
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/settings/AskUSBMode;->mDUN_Button:Landroid/widget/Button;

    .line 127
    sget-object v0, Lcom/android/settings/AskUSBMode;->mCharging_Button:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/AskUSBMode$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AskUSBMode$1;-><init>(Lcom/android/settings/AskUSBMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget-object v0, Lcom/android/settings/AskUSBMode;->mDUN_Button:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/AskUSBMode$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AskUSBMode$2;-><init>(Lcom/android/settings/AskUSBMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/AskUSBMode;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/AskUSBMode;->registerBroadCastRec()V

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 70
    return-void
.end method
