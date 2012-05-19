.class public Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothSAPDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# instance fields
.field protected mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 73
    const-string v2, "BluetoothSAPDialog"

    const-string v3, "createView"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, messageView1:Landroid/widget/TextView;
    const v2, 0x7f0906b4

    invoke-virtual {p0, v2}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    packed-switch p2, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->onDisconnect()V

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->finish()V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const-string v5, "BluetoothSAPDialog"

    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v3, "BluetoothSAPDialog"

    const-string v3, "onCreate"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "SVC_NAME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, service_name:Ljava/lang/String;
    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "bluetooth_sap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    :cond_0
    const-string v3, "BluetoothSAPDialog"

    const-string v3, "Not BT_SERVICE_CONNECTION_ACTION, SERVICE_NAME"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->finish()V

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 59
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x10801e6

    iput v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 61
    const v3, 0x7f0906b2

    invoke-virtual {p0, v3}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 65
    const v3, 0x7f090626

    invoke-virtual {p0, v3}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 66
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    const v3, 0x7f090627

    invoke-virtual {p0, v3}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 68
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->setupAlert()V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->finish()V

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 117
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    .prologue
    const-string v2, "bluetooth_sap"

    .line 91
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, "bluetooth_sap"

    invoke-static {v2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "bluetooth_sap"

    invoke-static {v2, p0, p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 96
    :cond_0
    return-void
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 2
    .parameter "ProxyObject"

    .prologue
    .line 84
    check-cast p1, Lcom/broadcom/bt/service/sap/BluetoothSAP;

    .end local p1
    iput-object p1, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    .line 85
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onProxyAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->disconnect(B)V

    .line 88
    :cond_0
    return-void
.end method
