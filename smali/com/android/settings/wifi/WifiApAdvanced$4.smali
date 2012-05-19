.class Lcom/android/settings/wifi/WifiApAdvanced$4;
.super Ljava/lang/Object;
.source "WifiApAdvanced.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApAdvanced;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApAdvanced;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApAdvanced;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApAdvanced;->access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApAdvanced;->access$500(Lcom/android/settings/wifi/WifiApAdvanced;)I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 232
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApAdvanced;->access$700(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApAdvanced;->access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiApAdvanced;->access$400(Lcom/android/settings/wifi/WifiApAdvanced;I)V

    .line 234
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApAdvanced;->access$300(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 235
    .local v0, wifiApState:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApAdvanced;->access$300(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApAdvanced;->access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApAdvanced;->access$300(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApAdvanced;->access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 240
    const-string v1, "WifiApAdvanced"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxclient "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced$4;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApAdvanced;->access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
