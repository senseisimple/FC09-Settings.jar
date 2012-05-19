.class public Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private mBtClassDrawable:I

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsConnecting:Z

.field private mIsConnectingErrorPossible:Z

.field private mIsPairing:Z

.field private mIsUnpairing:Z

.field private final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mName:Ljava/lang/String;

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssi:S

.field private mUpdateBtClassDrawable:Z

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "context"
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const v0, 0x7f020025

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDialog:Landroid/app/AlertDialog;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    .line 95
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    .line 98
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 144
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 209
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 210
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 211
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use CachedBluetoothDevice without Bluetooth hardware"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 218
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelDiscovery()V
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 170
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 173
    :cond_0
    return-void
.end method

.method private connectAllProfiles()V
    .locals 5

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v3

    if-nez v3, :cond_1

    .line 513
    :cond_0
    return-void

    .line 502
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 504
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 505
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 506
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    .line 508
    .local v2, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 509
    invoke-direct {p0, p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectConnected(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 510
    invoke-direct {p0, p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    goto :goto_0
.end method

.method private connectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z
    .locals 5
    .parameter "cachedDevice"
    .parameter "profile"

    .prologue
    const/4 v3, 0x0

    const-string v4, "CachedBluetoothDevice"

    .line 541
    invoke-direct {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 555
    :goto_0
    return v2

    .line 543
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v2, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 545
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 546
    .local v1, status:I
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    const-string v2, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command sent successfully:CONNECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v2, 0x1

    goto :goto_0

    .line 553
    :cond_1
    const-string v2, "CachedBluetoothDevice"

    const-string v2, "Failed to connect"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 555
    goto :goto_0
.end method

.method private connectWithoutResettingTimer()V
    .locals 7

    .prologue
    const-string v6, "CachedBluetoothDevice"

    .line 460
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    if-nez v4, :cond_2

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    move-result v4

    if-nez v4, :cond_2

    .line 464
    const-string v4, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 472
    const/4 v1, 0x0

    .line 473
    .local v1, preferredProfiles:I
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 474
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 475
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v4, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    .line 477
    .local v3, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 478
    add-int/lit8 v1, v1, 0x1

    .line 483
    sget-object v4, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    if-eq v2, v4, :cond_4

    sget-object v4, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    if-ne v2, v4, :cond_5

    .line 484
    :cond_4
    invoke-direct {p0, p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectConnected(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 487
    :cond_5
    invoke-direct {p0, p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    goto :goto_1

    .line 491
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v3           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_6
    const-string v4, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred profiles = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-nez v1, :cond_1

    .line 494
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectAllProfiles()V

    goto :goto_0
.end method

.method private describe(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;
    .locals 3
    .parameter "cachedDevice"
    .parameter "profile"

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    if-eqz p2, :cond_0

    .line 157
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private describe(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;
    .locals 1
    .parameter "profile"

    .prologue
    .line 164
    invoke-direct {p0, p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private disconnectConnected(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .locals 7
    .parameter "device"
    .parameter "profile"

    .prologue
    .line 526
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v6, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    .line 528
    .local v5, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 529
    .local v2, cachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectedDevices()Ljava/util/Set;

    move-result-object v3

    .line 530
    .local v3, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v3, :cond_1

    .line 538
    :cond_0
    return-void

    .line 531
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 532
    .local v0, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 534
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 535
    invoke-direct {p0, v1, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    goto :goto_0
.end method

.method private disconnectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z
    .locals 5
    .parameter "cachedDevice"
    .parameter "profile"

    .prologue
    .line 343
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v2, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 345
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 356
    .local v1, status:I
    invoke-static {v1}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 367
    :goto_0
    return v2

    .line 359
    :cond_0
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command sent successfully:DISCONNECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v2, 0x1

    goto :goto_0

    .line 367
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 1292
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 1293
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;

    .line 1294
    .local v0, callback:Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 1296
    .end local v0           #callback:Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1297
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pair()V

    .line 569
    const/4 v0, 0x0

    .line 571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 859
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 860
    return-void
.end method

.method private fetchName()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 686
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 689
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Default to address. Device has no name (yet) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 651
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 652
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 656
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 657
    return-void
.end method

.method private getOneOffSummary()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 1053
    const/4 v0, 0x0

    .local v0, isA2dpConnected:Z
    const/4 v2, 0x0

    .local v2, isHeadsetConnected:Z
    const/4 v1, 0x0

    .line 1054
    .local v1, isConnecting:Z
    const/4 v3, 0x0

    .line 1056
    .local v3, isHidConnected:Z
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1057
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 1059
    .local v4, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v5, v8, :cond_3

    move v1, v9

    .line 1061
    :goto_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 1064
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1065
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 1067
    .restart local v4       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v5, v8, :cond_4

    move v5, v9

    :goto_1
    or-int/2addr v1, v5

    .line 1069
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 1072
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1073
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 1075
    .restart local v4       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v5, v8, :cond_5

    move v5, v9

    :goto_2
    or-int/2addr v1, v5

    .line 1077
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 1080
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_2
    if-eqz v1, :cond_6

    .line 1082
    invoke-static {v8}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v5

    .line 1095
    :goto_3
    return v5

    .restart local v4       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_3
    move v1, v7

    .line 1059
    goto :goto_0

    :cond_4
    move v5, v7

    .line 1067
    goto :goto_1

    :cond_5
    move v5, v7

    .line 1075
    goto :goto_2

    .line 1084
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 1085
    const v5, 0x7f090147

    goto :goto_3

    .line 1086
    :cond_7
    if-eqz v0, :cond_8

    .line 1087
    const v5, 0x7f090145

    goto :goto_3

    .line 1088
    :cond_8
    if-eqz v2, :cond_9

    .line 1089
    const v5, 0x7f090146

    goto :goto_3

    .line 1091
    :cond_9
    if-eqz v3, :cond_a

    .line 1092
    const v5, 0x7f0906a5

    goto :goto_3

    :cond_a
    move v5, v7

    .line 1095
    goto :goto_3
.end method

.method private isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z
    .locals 1
    .parameter "profile"

    .prologue
    .line 1113
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateProfiles()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const-string v9, "opp classbits != uuid"

    const-string v7, "CachedBluetoothDevice"

    .line 863
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 864
    .local v3, uuids:[Landroid/os/ParcelUuid;
    if-nez v3, :cond_0

    move v4, v5

    .line 911
    :goto_0
    return v4

    .line 866
    :cond_0
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 867
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;Ljava/util/List;)V

    .line 871
    const-string v4, "CachedBluetoothDevice"

    const-string v4, "updating profiles..."

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v2, 0x1

    .line 874
    .local v2, printUuids:Z
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 876
    .local v0, bluetoothClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_4

    .line 877
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 879
    const-string v4, "CachedBluetoothDevice"

    const-string v4, "headset classbits != uuid"

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v2, 0x1

    .line 883
    :cond_1
    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eq v4, v5, :cond_2

    .line 885
    const-string v4, "CachedBluetoothDevice"

    const-string v4, "a2dp classbits != uuid"

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/4 v2, 0x1

    .line 889
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eq v4, v5, :cond_3

    .line 891
    const-string v4, "CachedBluetoothDevice"

    const-string v4, "opp classbits != uuid"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v2, 0x1

    .line 895
    :cond_3
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->PRINTER:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eq v4, v5, :cond_4

    .line 897
    const-string v4, "CachedBluetoothDevice"

    const-string v4, "opp classbits != uuid"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v2, 0x1

    .line 903
    :cond_4
    if-eqz v2, :cond_6

    .line 904
    if-eqz v0, :cond_5

    const-string v4, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_5
    const-string v4, "CachedBluetoothDevice"

    const-string v4, "UUID:"

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_6

    .line 907
    const-string v4, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :cond_6
    move v4, v8

    .line 911
    goto/16 :goto_0
.end method


# virtual methods
.method public askDisconnect()V
    .locals 8

    .prologue
    .line 371
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    .line 372
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 419
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 391
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 393
    const v5, 0x7f090065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 395
    :cond_2
    const v5, 0x7f09005b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, message:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$2;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 413
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .parameter "another"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1322
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    sub-int v0, v1, v2

    .line 1323
    .local v0, comparison:I
    if-eqz v0, :cond_2

    move v1, v0

    .line 1339
    :goto_2
    return v1

    .end local v0           #comparison:I
    :cond_0
    move v1, v3

    .line 1322
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 1326
    .restart local v0       #comparison:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v5, :cond_4

    move v2, v4

    :goto_4
    sub-int v0, v1, v2

    .line 1328
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 1326
    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4

    .line 1331
    :cond_5
    iget-boolean v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v4

    :goto_5
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v2, :cond_7

    move v2, v4

    :goto_6
    sub-int v0, v1, v2

    .line 1332
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 1331
    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    .line 1335
    :cond_8
    iget-short v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 1336
    if-eqz v0, :cond_9

    move v1, v0

    goto :goto_2

    .line 1339
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "connect()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 446
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer()V

    goto :goto_0
.end method

.method public connect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 521
    invoke-direct {p0, p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectConnected(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 522
    invoke-direct {p0, p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    .line 523
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 329
    const-string v2, "CachedBluetoothDevice"

    const-string v3, "disconnect()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 333
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 334
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    goto :goto_0

    .line 336
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_0
    return-void
.end method

.method public disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 339
    invoke-direct {p0, p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    .line 340
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1306
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 1307
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 1310
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDialog:Landroid/app/AlertDialog;

    .line 428
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 429
    return-void
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getBtClassDrawable()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f02002c

    const v3, 0x7f020027

    const v2, 0x7f020026

    .line 754
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    if-nez v0, :cond_0

    .line 755
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 849
    :goto_0
    return v0

    .line 757
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 760
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 801
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 802
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->PRINTER:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 803
    iput v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v4

    .line 804
    goto :goto_0

    .line 763
    :sswitch_0
    const v0, 0x7f02002a

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 764
    const v0, 0x7f02002a

    goto :goto_0

    .line 767
    :sswitch_1
    const v0, 0x7f020024

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 768
    const v0, 0x7f020024

    goto :goto_0

    .line 771
    :sswitch_2
    iput v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v4

    .line 772
    goto :goto_0

    .line 776
    :cond_1
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "mBtClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 806
    iput v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v2

    .line 807
    goto :goto_0

    .line 808
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 809
    iput v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v3

    .line 810
    goto :goto_0

    .line 813
    :cond_4
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Device profile number = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_8

    .line 818
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 819
    iput v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v2

    .line 820
    goto :goto_0

    .line 822
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 823
    iput v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v3

    .line 824
    goto/16 :goto_0

    .line 827
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v1, 0x500

    if-ne v0, v1, :cond_8

    .line 828
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 839
    const v0, 0x7f020025

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 842
    :goto_2
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto/16 :goto_0

    .line 830
    :sswitch_3
    const v0, 0x7f020028

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_2

    .line 833
    :sswitch_4
    const v0, 0x7f02002b

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_2

    .line 836
    :sswitch_5
    const v0, 0x7f020029

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_2

    .line 847
    :cond_8
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 848
    const v0, 0x7f020025

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 849
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto/16 :goto_0

    .line 761
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x600 -> :sswitch_2
    .end sparse-switch

    .line 828
    :sswitch_data_1
    .sparse-switch
        0x540 -> :sswitch_3
        0x580 -> :sswitch_4
        0x5c0 -> :sswitch_5
    .end sparse-switch
.end method

.method public getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    .local v0, connectableProfiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;>;"
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 1102
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1103
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1106
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_1
    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()I
    .locals 6

    .prologue
    .line 1026
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getOneOffSummary()I

    move-result v2

    .line 1027
    .local v2, oneOffSummary:I
    if-eqz v2, :cond_0

    move v5, v2

    .line 1043
    :goto_0
    return v5

    .line 1031
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 1032
    .local v3, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v5, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 1034
    .local v4, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1036
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    .line 1039
    :cond_2
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v5

    goto :goto_0

    .line 1043
    .end local v0           #connectionStatus:I
    .end local v3           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getPairingStatusSummary(I)I

    move-result v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 737
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 738
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 740
    .local v2, status:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusBusy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 749
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v2           #status:I
    :goto_0
    return v3

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    move v3, v5

    .line 746
    goto :goto_0

    .line 749
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 5

    .prologue
    .line 725
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 726
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 728
    .local v2, status:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    const/4 v3, 0x1

    .line 733
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v2           #status:I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isHid()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 252
    goto :goto_0

    .line 254
    :cond_1
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "mBtClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 256
    goto :goto_0
.end method

.method public isHidMouse()Z
    .locals 2

    .prologue
    .line 263
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    const v1, 0x7f02002b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return v0
.end method

.method onBondingDockConnect()V
    .locals 0

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    .line 453
    return-void
.end method

.method public onBondingStateChanged(I)V
    .locals 5
    .parameter "bondState"

    .prologue
    const/16 v4, 0xa

    const/4 v2, 0x0

    const-string v3, "CachedBluetoothDevice"

    .line 957
    const-string v0, "CachedBluetoothDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBondingStateChanged: bondState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsPairing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsUnpairing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConnectAfterPairing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsConnecting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    if-ne p1, v4, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 965
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 966
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 982
    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 983
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    .line 984
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    .line 989
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 990
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 991
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 1014
    :cond_1
    :goto_0
    return-void

    .line 992
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 993
    const-string v0, "CachedBluetoothDevice"

    const-string v0, "I am in mConnectAfterPairing"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHidMouse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 995
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 996
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    .line 1000
    :cond_3
    if-ne p1, v4, :cond_1

    .line 1001
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    .line 1002
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    if-eqz v0, :cond_4

    .line 1003
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    goto :goto_0

    .line 1009
    :cond_4
    const-string v0, "CachedBluetoothDevice"

    const-string v0, "onBondingStateChanged: Unpaired but not due to unpairing, unpair anyway to clean up..."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    goto :goto_0
.end method

.method public onClicked()V
    .locals 6

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x1

    const-string v5, "CachedBluetoothDevice"

    .line 290
    const-string v2, "CachedBluetoothDevice"

    const-string v2, "############ onClicked()"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->askDisconnect()V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 298
    .local v0, bondState:I
    if-ne v0, v4, :cond_6

    .line 299
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->shouldHostConnect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHidMouse()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    const v1, 0x7f0906ad

    .line 310
    .local v1, resId:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 308
    .end local v1           #resId:I
    :cond_3
    const v1, 0x7f0906ae

    .restart local v1       #resId:I
    goto :goto_1

    .line 313
    .end local v1           #resId:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    .line 316
    :cond_5
    const-string v2, "CachedBluetoothDevice"

    const-string v2, "Bluetooth state is on"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_6
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 319
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pair()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v2, 0x1000

    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 1215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1277
    :goto_0
    return-void

    .line 1221
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    goto :goto_0

    .line 1224
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto :goto_0

    .line 1234
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1235
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pair()V

    goto :goto_0

    .line 1237
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    .line 1243
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    goto :goto_0

    .line 1247
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1249
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1250
    if-nez v1, :cond_2

    .line 1252
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1253
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1255
    :cond_2
    const-class v2, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1256
    const-string v2, "device"

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1257
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1261
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 1263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1264
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1265
    if-nez v1, :cond_3

    .line 1267
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1268
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1270
    :cond_3
    const-class v2, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1271
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1272
    const-string v2, "android.bluetooth.device.extra.NAME"

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1215
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x7f09013b

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1118
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 1161
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1163
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 1164
    const v3, 0x7f09013d

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1166
    :cond_2
    const/4 v0, 0x0

    .line 1167
    .local v0, hasConnectableProfiles:Z
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 1168
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1169
    const/4 v0, 0x1

    .line 1174
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1176
    const/4 v3, 0x3

    const v4, 0x7f09013c

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1179
    :cond_5
    const v3, 0x7f09013f

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1194
    :goto_1
    if-eqz v0, :cond_0

    .line 1195
    const/4 v3, 0x5

    const v4, 0x7f090140

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1182
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1183
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->shouldHostConnect()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1184
    invoke-interface {p1, v5, v6, v5, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1190
    :cond_7
    :goto_2
    const v3, 0x7f09013e

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1187
    :cond_8
    if-eqz v0, :cond_7

    .line 1188
    invoke-interface {p1, v5, v6, v5, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V
    .locals 6
    .parameter "profile"
    .parameter "newProfileState"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 178
    const-string v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProfileStateChanged: profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newProfileState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->convertState(I)I

    move-result v0

    .line 185
    .local v0, newState:I
    if-ne v0, v4, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 193
    :cond_0
    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_2

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHidMouse()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v1, :cond_2

    .line 196
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 197
    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 206
    :cond_2
    return-void
.end method

.method public onUuidChanged()V
    .locals 2

    .prologue
    .line 927
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "onUuidChanged..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 948
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 950
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer()V

    .line 952
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 953
    return-void
.end method

.method public pair()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 578
    const-string v2, "CachedBluetoothDevice"

    const-string v3, "pair()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const v3, 0x7f0906ac

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    .line 590
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 601
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 603
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 606
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 607
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    goto :goto_0

    .line 611
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v2

    if-nez v2, :cond_0

    .line 612
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const v4, 0x7f090130

    const v5, 0x7f090131

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 695
    return-void
.end method

.method public refreshBtClass()V
    .locals 0

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 920
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 921
    return-void
.end method

.method public refreshName()V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 680
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 681
    return-void
.end method

.method public registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1281
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    monitor-exit v0

    .line 1283
    return-void

    .line 1282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .parameter "btClass"

    .prologue
    .line 1017
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 1018
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 1020
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 1022
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 674
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 676
    :cond_0
    return-void

    .line 672
    :cond_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method setRssi(S)V
    .locals 1
    .parameter "rssi"

    .prologue
    .line 713
    iget-short v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 714
    iput-short p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 715
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 717
    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 703
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 704
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 706
    :cond_0
    return-void
.end method

.method public shouldHostConnect()Z
    .locals 3

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 272
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpair()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v5, "CachedBluetoothDevice"

    .line 622
    const-string v3, "CachedBluetoothDevice"

    const-string v3, "unpair()"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 626
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 629
    .local v1, state:I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 630
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 633
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 635
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 637
    .local v2, successful:Z
    if-eqz v2, :cond_2

    .line 639
    const-string v3, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #successful:Z
    :cond_1
    :goto_0
    return-void

    .line 642
    .restart local v0       #dev:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #successful:Z
    :cond_2
    const-string v3, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Framework rejected command immediately:REMOVE_BOND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1287
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1288
    monitor-exit v0

    .line 1289
    return-void

    .line 1288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
