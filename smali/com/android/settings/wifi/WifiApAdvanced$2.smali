.class Lcom/android/settings/wifi/WifiApAdvanced$2;
.super Ljava/lang/Object;
.source "WifiApAdvanced.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApAdvanced;->onCreate(Landroid/os/Bundle;)V
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
    .line 171
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 173
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Lcom/android/settings/wifi/WifiApAdvanced;->access$502(Lcom/android/settings/wifi/WifiApAdvanced;I)I

    .line 176
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApAdvanced;->access$500(Lcom/android/settings/wifi/WifiApAdvanced;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApAdvanced;->access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ne v3, v4, :cond_0

    move v3, v6

    .line 204
    .end local p2
    :goto_0
    return v3

    .line 181
    .restart local p2
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApAdvanced;->access$300(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 183
    .local v2, wifiApState:I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApAdvanced;->access$300(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v1

    .line 184
    .local v1, numClient:I
    if-ne v2, v7, :cond_1

    if-eqz v1, :cond_1

    .line 187
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-virtual {v3, v5}, Lcom/android/settings/wifi/WifiApAdvanced;->showDialog(I)V

    move v3, v6

    .line 188
    goto :goto_0

    .line 191
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApAdvanced;->access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApAdvanced;->access$500(Lcom/android/settings/wifi/WifiApAdvanced;)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 193
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/settings/wifi/WifiApAdvanced;->access$400(Lcom/android/settings/wifi/WifiApAdvanced;I)V

    .line 195
    if-ne v2, v7, :cond_2

    .line 197
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApAdvanced;->access$300(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApAdvanced;->access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :goto_1
    move v3, v6

    .line 204
    goto :goto_0

    .line 199
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApAdvanced;->access$300(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApAdvanced;->access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 200
    const-string v3, "WifiApAdvanced"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxclient\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$2;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApAdvanced;->access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
