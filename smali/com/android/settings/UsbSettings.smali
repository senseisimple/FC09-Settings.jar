.class public Lcom/android/settings/UsbSettings;
.super Landroid/app/ListActivity;
.source "UsbSettings.java"


# static fields
.field private static final mUSBItems:[Ljava/lang/String;


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPluggedType:I

.field private mUSB_mode:I

.field usbSettingsModeToPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 54
    iput v0, p0, Lcom/android/settings/UsbSettings;->mPluggedType:I

    .line 55
    iput v0, p0, Lcom/android/settings/UsbSettings;->mUSB_mode:I

    .line 58
    new-instance v0, Lcom/android/settings/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/UsbSettings$1;-><init>(Lcom/android/settings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private ShowErrorPopup()V
    .locals 3

    .prologue
    .line 153
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 155
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090288

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090546

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/UsbSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/UsbSettings$2;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 164
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/UsbSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/settings/UsbSettings;->mPluggedType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/UsbSettings;->setFocus()V

    return-void
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/UsbSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    return-void
.end method

.method private setFocus()V
    .locals 3

    .prologue
    const-string v2, "USB Settings"

    .line 144
    const-string v0, "USB Settings"

    const-string v0, "Set focus()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget v0, p0, Lcom/android/settings/UsbSettings;->mPluggedType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 146
    const-string v0, "USB Settings"

    const-string v0, "Set focus() : USB connected"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/UsbSettings;->usbSettingsModeToPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 79
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const-string v2, "persist.service.usb.setting"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/UsbSettings;->mUSB_mode:I

    .line 84
    iget v2, p0, Lcom/android/settings/UsbSettings;->mUSB_mode:I

    if-ne v2, v8, :cond_0

    .line 85
    const-string v2, "USB Settings"

    const-string v3, "sending disable intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.android.samsung.IcsService"

    const-string v3, "com.android.samsung.IcsService.IcsService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/UsbSettings;->stopService(Landroid/content/Intent;)Z

    .line 91
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    sget-object v2, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0904e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 92
    sget-object v2, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0904e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 93
    sget-object v2, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0904e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 98
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x109000f

    sget-object v4, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/UsbSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 102
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 103
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 105
    iget v2, p0, Lcom/android/settings/UsbSettings;->mUSB_mode:I

    iput v2, p0, Lcom/android/settings/UsbSettings;->usbSettingsModeToPosition:I

    .line 106
    iget v2, p0, Lcom/android/settings/UsbSettings;->usbSettingsModeToPosition:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 107
    iput v8, p0, Lcom/android/settings/UsbSettings;->usbSettingsModeToPosition:I

    .line 109
    :cond_1
    iget v2, p0, Lcom/android/settings/UsbSettings;->usbSettingsModeToPosition:I

    invoke-virtual {v1, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 111
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v6, "usb_setting_mode"

    const-string v4, "persist.service.usb.setting"

    const-string v5, "USB Settings"

    .line 172
    const-string v3, "persist.service.usb.setting"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, previous_usb_setting_mode:I
    const-string v3, "USB Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "previous mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current position"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v3, p0, Lcom/android/settings/UsbSettings;->mPluggedType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 177
    const-string v3, "USB Settings"

    const-string v3, "USB connected"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lcom/android/settings/UsbSettings;->ShowErrorPopup()V

    .line 228
    :goto_0
    return-void

    .line 192
    :cond_0
    :try_start_0
    const-string v3, "persist.service.usb.setting"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_setting_mode"

    invoke-static {v3, v6, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    move v2, p3

    .line 223
    .local v2, usbSettingsModeFromPosition:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 224
    const/4 v2, 0x4

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_setting_mode"

    invoke-static {v3, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->finish()V

    goto :goto_0

    .line 217
    .end local v2           #usbSettingsModeFromPosition:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 218
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "USB Settings"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/UsbSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "USB Settings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/UsbSettings;->initIntentFilter()V

    .line 128
    return-void
.end method
