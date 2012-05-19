.class public Lcom/android/settings/wifi/WifiApViewConnectedDevices;
.super Landroid/app/Activity;
.source "WifiApViewConnectedDevices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;
    }
.end annotation


# instance fields
.field DevList:Landroid/widget/ListView;

.field private final TAG:Ljava/lang/String;

.field connectedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/ConnectedDevice;",
            ">;"
        }
    .end annotation
.end field

.field devAdapter:Lcom/android/settings/wifi/DevListAdapter;

.field private mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private remove_from_devicelist_checked:Z

.field private selected_position:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, "WifiApViewConnectedDevices"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->TAG:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->selected_position:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->remove_from_devicelist_checked:Z

    .line 57
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 60
    new-instance v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$1;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    return-void
.end method

.method private Addintentfilter()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mIntentFilter:Landroid/content/IntentFilter;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->updateStaList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->selected_position:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiApViewConnectedDevices;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->selected_position:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private final updateStaList(Ljava/lang/String;)V
    .locals 24
    .parameter "sta_list"

    .prologue
    .line 161
    const-string v4, " "

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 162
    .local v23, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v23, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 163
    .local v21, numClient:I
    const-string v4, "WifiApViewConnectedDevices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numClient: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 166
    .local v19, now:J
    const-string v4, "WifiApViewConnectedDevices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current_time :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/16 v16, 0x1

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    .line 171
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2000

    invoke-direct {v9, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 173
    .local v9, buf:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, mData:Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 175
    const-string v4, " "

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 176
    .local v22, sta_info:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, v22, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    aget-object v4, v22, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    aget-object v4, v22, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    aget-object v4, v22, v4

    if-eqz v4, :cond_0

    .line 177
    const-string v4, "WifiApViewConnectedDevices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sta_info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v22, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v22, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v22, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v22, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v4, 0x0

    aget-object v4, v22, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 180
    .local v14, expire_time:J
    const-wide/16 v4, 0xe10

    sub-long v4, v14, v4

    const-wide/16 v6, 0x3e8

    mul-long v10, v4, v6

    .line 181
    .local v10, connected_milisec:J
    sub-long v12, v19, v10

    .line 183
    .local v12, duration_milisec:J
    const-string v4, "WifiApViewConnectedDevices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tok["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v23, v16

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/sta_info[1]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v22, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/expire_time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/connected_milisec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/duration_milisec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v4, 0x1

    aget-object v4, v22, v4

    aget-object v5, v23, v16

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    const-string v4, "WifiApViewConnectedDevices"

    const-string v5, "STA Detected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v4, 0x3

    aget-object v4, v22, v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    new-instance v3, Lcom/android/settings/wifi/ConnectedDevice;

    const-string v4, "EMPTY_NAME"

    aget-object v5, v23, v16

    const/4 v6, 0x2

    aget-object v6, v22, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    .end local v10           #connected_milisec:J
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v3, devlist:Lcom/android/settings/wifi/ConnectedDevice;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 201
    .end local v3           #devlist:Lcom/android/settings/wifi/ConnectedDevice;
    .end local v9           #buf:Ljava/io/BufferedReader;
    .end local v12           #duration_milisec:J
    .end local v14           #expire_time:J
    .end local v18           #mData:Ljava/lang/String;
    .end local v22           #sta_info:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object/from16 v17, v4

    .line 202
    .local v17, io:Ljava/io/IOException;
    const-string v4, "WifiApViewConnectedDevices"

    const-string v5, "mac read exception"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v17           #io:Ljava/io/IOException;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 192
    .restart local v9       #buf:Ljava/io/BufferedReader;
    .restart local v10       #connected_milisec:J
    .restart local v12       #duration_milisec:J
    .restart local v14       #expire_time:J
    .restart local v18       #mData:Ljava/lang/String;
    .restart local v22       #sta_info:[Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/settings/wifi/ConnectedDevice;

    const/4 v4, 0x3

    aget-object v4, v22, v4

    aget-object v5, v23, v16

    const/4 v6, 0x2

    aget-object v6, v22, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    .end local v10           #connected_milisec:J
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3       #devlist:Lcom/android/settings/wifi/ConnectedDevice;
    goto :goto_2

    .line 199
    .end local v3           #devlist:Lcom/android/settings/wifi/ConnectedDevice;
    .end local v12           #duration_milisec:J
    .end local v14           #expire_time:J
    .end local v22           #sta_info:[Ljava/lang/String;
    :cond_2
    const-string v4, "WifiApViewConnectedDevices"

    const-string v5, "sta_info end"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 205
    .end local v9           #buf:Ljava/io/BufferedReader;
    .end local v18           #mData:Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstancestate"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v1, 0x7f030057

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->setContentView(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->Addintentfilter()V

    .line 95
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 96
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApProfileConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    .line 106
    new-instance v1, Lcom/android/settings/wifi/DevListAdapter;

    const v2, 0x7f030058

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/wifi/DevListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->devAdapter:Lcom/android/settings/wifi/DevListAdapter;

    .line 109
    const v1, 0x7f0b011f

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->DevList:Landroid/widget/ListView;

    .line 110
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->DevList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->devAdapter:Lcom/android/settings/wifi/DevListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    move-object v0, p0

    .line 114
    .local v0, ctx:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->DevList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const-string v3, "WifiApViewConnectedDevices"

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    const-string v1, "WifiApViewConnectedDevices"

    const-string v1, "onResume"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, sta_list:Ljava/lang/String;
    const-string v1, "WifiApViewConnectedDevices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiApStaList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->updateStaList(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->DevList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->devAdapter:Lcom/android/settings/wifi/DevListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->devAdapter:Lcom/android/settings/wifi/DevListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/wifi/DevListAdapter;->notifyDataSetChanged()V

    .line 146
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void
.end method
