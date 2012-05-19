.class Lcom/android/settings/wifi/WifiApAdvanced$1;
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
    .line 124
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v12, "wifiap_power_mode_alarm_option"

    const-string v11, "com.android.settings.wifi.wifiap_power_mode_alarm"

    .line 126
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/wifi/WifiApAdvanced;->access$002(Lcom/android/settings/wifi/WifiApAdvanced;I)I

    .line 128
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApAdvanced;->access$000(Lcom/android/settings/wifi/WifiApAdvanced;)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApAdvanced;->access$100(Lcom/android/settings/wifi/WifiApAdvanced;)I

    move-result v6

    if-ne v5, v6, :cond_0

    move v5, v9

    .line 167
    :goto_0
    return v5

    .line 132
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApAdvanced;->access$000(Lcom/android/settings/wifi/WifiApAdvanced;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/wifi/WifiApAdvanced;->access$102(Lcom/android/settings/wifi/WifiApAdvanced;I)I

    .line 134
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApAdvanced;->access$100(Lcom/android/settings/wifi/WifiApAdvanced;)I

    move-result v5

    if-nez v5, :cond_3

    .line 136
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApAdvanced;->access$200(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/preference/ListPreference;

    move-result-object v5

    const v6, 0x7f0905f0

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 146
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApAdvanced;->access$300(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 148
    .local v4, wifiApState:I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApAdvanced;->access$300(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v2

    .line 149
    .local v2, numClient:I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApAdvanced;->access$100(Lcom/android/settings/wifi/WifiApAdvanced;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, alarm_intent:Landroid/content/Intent;
    const-string v5, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-virtual {v5, v0}, Lcom/android/settings/wifi/WifiApAdvanced;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 159
    .end local v0           #alarm_intent:Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApAdvanced;->access$100(Lcom/android/settings/wifi/WifiApAdvanced;)I

    move-result v5

    if-nez v5, :cond_2

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v0       #alarm_intent:Landroid/content/Intent;
    const-string v5, "wifiap_power_mode_alarm_option"

    const/4 v5, 0x2

    invoke-virtual {v0, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-virtual {v5, v0}, Lcom/android/settings/wifi/WifiApAdvanced;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 166
    .end local v0           #alarm_intent:Landroid/content/Intent;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v5, v9}, Lcom/android/settings/wifi/WifiApAdvanced;->access$400(Lcom/android/settings/wifi/WifiApAdvanced;I)V

    move v5, v9

    .line 167
    goto :goto_0

    .line 139
    .end local v2           #numClient:I
    .end local v4           #wifiApState:I
    :cond_3
    const/4 v1, 0x0

    .line 140
    .local v1, mm:I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApAdvanced;->access$100(Lcom/android/settings/wifi/WifiApAdvanced;)I

    move-result v5

    div-int/lit8 v1, v5, 0x3c

    .line 141
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    const v6, 0x7f0905f1

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/wifi/WifiApAdvanced;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, ss:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApAdvanced;->access$200(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/preference/ListPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
