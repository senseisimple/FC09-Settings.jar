.class public Lcom/android/settings/bluetooth/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mEnableOnly:Z

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNeededToEnableBluetooth:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:I

.field private mUserConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 69
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 75
    new-instance v0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method private createDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 151
    const v1, 0x7f09006b

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 153
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v1, :cond_0

    .line 156
    const v1, 0x7f090071

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 172
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 173
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 174
    return-void

    .line 161
    :cond_0
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_1

    .line 162
    const v1, 0x7f09006e

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 168
    :goto_1
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    const v1, 0x7f090007

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 165
    :cond_1
    const v1, 0x7f09006d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private parseIntent()Z
    .locals 7

    .prologue
    const/16 v6, 0x78

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "RequestPermissionActivity"

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 245
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    .line 265
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 266
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_4

    .line 267
    const-string v1, "RequestPermissionActivity"

    const-string v1, "Error: there\'s a problem starting bluetooth"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    move v1, v4

    .line 272
    :goto_1
    return v1

    .line 247
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 252
    const-string v1, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v2, 0xe10

    if-le v1, v2, :cond_0

    .line 255
    :cond_2
    iput v6, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    goto :goto_0

    .line 258
    :cond_3
    const-string v1, "RequestPermissionActivity"

    const-string v1, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    move v1, v4

    .line 262
    goto :goto_1

    :cond_4
    move v1, v3

    .line 272
    goto :goto_1
.end method

.method private persistDiscoverableEndTimestamp(J)V
    .locals 2
    .parameter "endTimestamp"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 284
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "discoverable_end_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    return-void
.end method

.method private proceedAndFinish()V
    .locals 5

    .prologue
    .line 218
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v1, :cond_2

    .line 220
    const/4 v0, -0x1

    .line 235
    .local v0, returnCode:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 239
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 241
    return-void

    .line 221
    .end local v0           #returnCode:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x17

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->persistDiscoverableEndTimestamp(J)V

    .line 226
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 228
    .restart local v0       #returnCode:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 229
    const/4 v0, 0x1

    goto :goto_0

    .line 232
    .end local v0           #returnCode:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #returnCode:I
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 178
    if-eq p1, v1, :cond_0

    .line 179
    const-string v0, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 200
    :goto_0
    return-void

    .line 184
    :cond_0
    const/16 v0, -0x3e8

    if-eq p2, v0, :cond_1

    .line 185
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 192
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    .line 194
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 195
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 293
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 294
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 203
    packed-switch p2, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 205
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 209
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 146
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    .line 104
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    const-class v1, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 125
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v1, :cond_1

    .line 126
    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    goto :goto_0

    .line 128
    :cond_1
    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 136
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 278
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    :cond_0
    return-void
.end method
