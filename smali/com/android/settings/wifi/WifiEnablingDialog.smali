.class public Lcom/android/settings/wifi/WifiEnablingDialog;
.super Landroid/app/Activity;
.source "WifiEnablingDialog.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const-string v0, "WifiEnablingDialog"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/settings/wifi/WifiEnablingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnablingDialog$1;-><init>(Lcom/android/settings/wifi/WifiEnablingDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnablingDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mContext:Landroid/content/Context;

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiEnablingDialog;->requestWindowFeature(I)Z

    .line 82
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 84
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 89
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mFilter:Landroid/content/IntentFilter;

    .line 90
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnablingDialog;->showProgressDialog()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    const-string v0, "WifiEnablingDialog"

    const-string v1, "onDestroy() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public showProgressDialog()V
    .locals 6

    .prologue
    .line 105
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 106
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090054

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 107
    .local v2, view:Landroid/view/View;
    const v3, 0x1080262

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 109
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mMessageView:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiEnablingDialog;->setContentView(Landroid/view/View;)V

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f090174

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f090175

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, msg:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnablingDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method
