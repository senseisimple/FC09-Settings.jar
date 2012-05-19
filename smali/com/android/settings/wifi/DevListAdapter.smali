.class Lcom/android/settings/wifi/DevListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiApViewConnectedDevices.java"


# instance fields
.field DevList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/ConnectedDevice;",
            ">;"
        }
    .end annotation
.end field

.field Inflater:Landroid/view/LayoutInflater;

.field layout:I

.field maincon:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "vlayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/ConnectedDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p3, devlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/ConnectedDevice;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 292
    iput-object p1, p0, Lcom/android/settings/wifi/DevListAdapter;->maincon:Landroid/content/Context;

    .line 293
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/wifi/DevListAdapter;->Inflater:Landroid/view/LayoutInflater;

    .line 295
    iput-object p3, p0, Lcom/android/settings/wifi/DevListAdapter;->DevList:Ljava/util/ArrayList;

    .line 296
    iput p2, p0, Lcom/android/settings/wifi/DevListAdapter;->layout:I

    .line 297
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/wifi/DevListAdapter;->DevList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/DevListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/settings/wifi/DevListAdapter;->DevList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->DeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 308
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 312
    move v3, p1

    .line 313
    .local v3, pos:I
    if-nez p2, :cond_0

    .line 314
    iget-object v4, p0, Lcom/android/settings/wifi/DevListAdapter;->Inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/settings/wifi/DevListAdapter;->layout:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 317
    :cond_0
    const v4, 0x7f0b0120

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 318
    .local v0, device_name:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/wifi/DevListAdapter;->DevList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, v4, Lcom/android/settings/wifi/ConnectedDevice;->DeviceName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    const v4, 0x7f0b0122

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 321
    .local v2, mac_addr:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/wifi/DevListAdapter;->DevList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, v4, Lcom/android/settings/wifi/ConnectedDevice;->MAC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const v4, 0x7f0b0121

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 325
    .local v1, ip_addr:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/wifi/DevListAdapter;->DevList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v4, p0, Lcom/android/settings/wifi/ConnectedDevice;->IP:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    return-object p2
.end method
