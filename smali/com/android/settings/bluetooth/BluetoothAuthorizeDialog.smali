.class public Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothAuthorizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;,
        Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;
    }
.end annotation


# static fields
.field private static isScreenOn:Z

.field private static mContext:Landroid/content/Context;

.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mAlertAction:Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;

.field private mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIntFltr:Landroid/content/IntentFilter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mService:Ljava/lang/String;

.field private mTemporaryKey:Z

.field private name:Ljava/lang/String;

.field private svc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    .line 281
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    return-void
.end method

.method private createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 9
    .parameter "deviceName"
    .parameter "svc"

    .prologue
    const/16 v7, 0x8

    const-string v8, "BluetoothAuthorizeDialog"

    .line 168
    const-string v4, "BluetoothAuthorizeDialog"

    const-string v4, "createView"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 172
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b0012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 173
    .local v1, messageView1:Landroid/widget/TextView;
    const v4, 0x7f090614

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v4, :cond_0

    .line 178
    const v4, 0x7f0b0013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 179
    .local v0, checkbox:Landroid/widget/CheckBox;
    const v4, 0x7f0b0014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 181
    .local v2, textview:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 182
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v2           #textview:Landroid/widget/TextView;
    :cond_0
    const-string v4, "BluetoothAuthorizeDialog"

    const-string v4, "createView 2"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v3
.end method

.method private isAutoReply()Z
    .locals 5

    .prologue
    .line 201
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v2, :cond_0

    .line 202
    const/4 v2, 0x0

    .line 207
    :goto_0
    return v2

    .line 204
    :cond_0
    const v2, 0x7f0b0013

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 205
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 206
    .local v1, isChecked:Z
    const-string v2, "BluetoothAuthorizeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 207
    goto :goto_0
.end method

.method private onAuthorize()V
    .locals 4

    .prologue
    .line 211
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onAuthorize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 214
    return-void
.end method

.method private onDecline()V
    .locals 4

    .prologue
    .line 232
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onDecline"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 235
    return-void
.end method

.method private quitActivity()V
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->finish()V

    .line 279
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 238
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    packed-switch p2, :pswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 241
    :pswitch_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onAuthorize()V

    goto :goto_0

    .line 251
    :pswitch_1
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f09061a

    const-string v5, "BluetoothAuthorizeDialog"

    .line 76
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "onCreate"

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "Error: this activity may be started only with intent broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->finish()V

    .line 88
    :cond_0
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    .line 89
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    .line 90
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v3, "broadcom.android.bluetooth.intent.action.AUTHORIZE_CANCEL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v3, "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 102
    const-string v2, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 103
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    .line 104
    const-string v2, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    .line 106
    const-string v2, "broadcom.android.bluetooth.intent.TEMPORARY_KEY"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    .line 107
    const-string v2, "BluetoothAuthorizeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTemporaryKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    .line 110
    sget-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    sput-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    .line 111
    sget-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    const v3, 0x3000000a

    const-string v4, "BluetoothAuthorizeDialog"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    .line 117
    new-instance v2, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;

    sget-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlertAction:Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;

    .line 118
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlertAction:Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;

    invoke-virtual {v2}, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->loadAndPlayDefaultAlert()V

    .line 122
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_pbap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    const v2, 0x7f090615

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 144
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x10801e6

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 147
    const v2, 0x7f090613

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 149
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 151
    const v2, 0x7f090628

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 152
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 153
    const v2, 0x7f090629

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 154
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->setupAlert()V

    .line 157
    sget-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    .line 158
    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    if-nez v2, :cond_1

    .line 159
    sget-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 164
    :cond_1
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "onCreate 2"

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 124
    .end local v1           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_opp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    const v2, 0x7f090616

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_ftp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    const v2, 0x7f090617

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_dun"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    const v2, 0x7f090619

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 130
    :cond_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_spp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 131
    const v2, 0x7f090618

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 132
    :cond_6
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_map"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 133
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 134
    :cond_7
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_mse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 135
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 136
    :cond_8
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_mns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 137
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 139
    :cond_9
    const v2, 0x7f09061b

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 266
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlertAction:Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;

    invoke-virtual {v0}, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->release()V

    .line 267
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    .line 222
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    .line 227
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
