.class Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;
.super Ljava/lang/Object;
.source "WifiApViewConnectedDevices.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApViewConnectedDevices;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-static {v0, p3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$102(Lcom/android/settings/wifi/WifiApViewConnectedDevices;I)I

    .line 119
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    const-class v2, Lcom/android/settings/wifi/WifiApViewDeviceDetail;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const-string v2, "IPADDR"

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->IP:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v2, "MACADDR"

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->MAC:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v2, "CON_TIME"

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->Connected:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v2, "CON_DUR"

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->Connection_duration:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method
