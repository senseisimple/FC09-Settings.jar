.class public Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSAPNotification.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 81
    const-string v0, "BluetoothSAPNotification"

    const-string v1, "updateNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "SVC_NAME"

    const-string v2, "bluetooth_sap"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    new-instance v1, Landroid/app/Notification;

    const v2, 0x1080080

    iget-object v3, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0906b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 91
    iget-object v2, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v9, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 94
    iget-object v2, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0906b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0906b3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_0
    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 98
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 99
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 100
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 101
    iget v0, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 103
    iget-object v0, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 105
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 106
    return-void

    .line 94
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09012f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method


# virtual methods
.method public destroyNotification()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "BluetoothSAPNotification"

    const-string v1, "destroyNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 111
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 54
    const-string v3, "BluetoothSAPNotification"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    .line 58
    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    const-string v3, "SVC_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, service_name:Ljava/lang/String;
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    .line 63
    .local v1, mConnected:B
    const-string v3, "bluetooth_sap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    .end local v1           #mConnected:B
    .end local v2           #service_name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v1       #mConnected:B
    .restart local v2       #service_name:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 68
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->device:Landroid/bluetooth/BluetoothDevice;

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->updateNotification()V

    goto :goto_0

    .line 70
    :cond_2
    if-nez v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->destroyNotification()V

    .line 72
    iget-object v3, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    const v5, 0x7f0906b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 74
    .end local v1           #mConnected:B
    .end local v2           #service_name:Ljava/lang/String;
    :cond_3
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const/16 v3, 0xd

    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPNotification;->destroyNotification()V

    goto :goto_0
.end method
