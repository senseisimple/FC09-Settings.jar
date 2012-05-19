.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Landroid/app/Activity;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private cpuUsage:F

.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCalcHandler:Landroid/os/Handler;

.field private mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInstallLocation:Landroid/widget/TextView;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastTotalSize:J

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveErrorCode:I

.field private mMoveInProgress:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcessStats:Lcom/android/server/ProcessStats;

.field private mState:Lcom/android/settings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private memSize:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 111
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 112
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 113
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 114
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->cpuUsage:F

    .line 146
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCalcHandler:Landroid/os/Handler;

    .line 838
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$8;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$8;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 855
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/server/ProcessStats;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mProcessStats:Lcom/android/server/ProcessStats;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->processCpuUsage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 847
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 849
    const-string v0, "android.intent.extra.PACKAGES"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 851
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/applications/InstalledAppDetails;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 853
    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 832
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 834
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 835
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 836
    return-void
.end method

.method private getCpuFormattedString(F)Ljava/lang/String;
    .locals 6
    .parameter "cpu"

    .prologue
    .line 659
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 660
    .local v0, f:Ljava/util/Formatter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%3.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentPid()I
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 664
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/InstalledAppDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 665
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 667
    .local v6, processList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 668
    .local v4, packagePid:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 669
    .local v3, item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_1

    .line 670
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v7, v7, v1

    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 672
    :cond_1
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 673
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 676
    .end local v1           #i:I
    .end local v3           #item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_4

    .line 677
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 678
    .local v5, pid:Ljava/lang/Integer;
    if-nez v5, :cond_3

    move v7, v9

    .line 684
    .end local v5           #pid:Ljava/lang/Integer;
    :goto_2
    return v7

    .line 681
    .restart local v5       #pid:Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    .end local v5           #pid:Ljava/lang/Integer;
    :cond_4
    move v7, v9

    .line 684
    goto :goto_2
.end method

.method private getMemSize(I)I
    .locals 4
    .parameter "pid"

    .prologue
    const/4 v3, 0x0

    .line 688
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 689
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    .line 690
    .local v1, memUsage:I
    return v1
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    const-string v1, ""

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 257
    const-string v0, ""

    move-object v0, v1

    :goto_0
    return-object v0

    .line 245
    :pswitch_0
    const v0, 0x7f090361

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_1
    const v0, 0x7f090362

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_2
    const v0, 0x7f090363

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_3
    const v0, 0x7f090364

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :pswitch_4
    const v0, 0x7f090365

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :pswitch_5
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 219
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getStats(I)Lcom/android/server/ProcessStats$Stats;
    .locals 3
    .parameter "pid"

    .prologue
    .line 693
    const/4 v1, 0x0

    .line 695
    .local v1, stat:Lcom/android/server/ProcessStats$Stats;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mProcessStats:Lcom/android/server/ProcessStats;

    invoke-virtual {v2}, Lcom/android/server/ProcessStats;->countWorkingStats()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 696
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mProcessStats:Lcom/android/server/ProcessStats;

    invoke-virtual {v2, v0}, Lcom/android/server/ProcessStats;->getWorkingStats(I)Lcom/android/server/ProcessStats$Stats;

    move-result-object v2

    iget v2, v2, Lcom/android/server/ProcessStats$Stats;->pid:I

    if-ne v2, p1, :cond_1

    .line 697
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mProcessStats:Lcom/android/server/ProcessStats;

    invoke-virtual {v2, v0}, Lcom/android/server/ProcessStats;->getWorkingStats(I)Lcom/android/server/ProcessStats$Stats;

    move-result-object v1

    .line 701
    :cond_0
    return-object v1

    .line 695
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f090334

    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 240
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f09033e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 238
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 7

    .prologue
    const v4, 0x7f0905a9

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, dataOnly:Z
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_0

    move v0, v6

    .line 263
    :goto_0
    const/4 v1, 0x1

    .line 264
    .local v1, moveDisable:Z
    if-eqz v0, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstallLocation:Landroid/widget/TextView;

    const v3, 0x7f0905aa

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f09035c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 282
    :goto_1
    if-eqz v1, :cond_5

    .line 283
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    :goto_2
    return-void

    .end local v1           #moveDisable:Z
    :cond_0
    move v0, v5

    .line 262
    goto :goto_0

    .line 267
    .restart local v1       #moveDisable:Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstallLocation:Landroid/widget/TextView;

    const v3, 0x7f0905a8

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f09035d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 271
    const/4 v1, 0x0

    goto :goto_1

    .line 273
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f09035e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 274
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v2}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 275
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v6

    .line 276
    :goto_3
    if-eqz v1, :cond_4

    .line 277
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstallLocation:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0905ab

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move v1, v5

    .line 275
    goto :goto_3

    .line 279
    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstallLocation:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 285
    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method private initUninstallButtons()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 292
    const/4 v0, 0x1

    .line 293
    .local v0, enabled:Z
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v2, 0x7f090335

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 329
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 330
    if-eqz v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :cond_0
    return-void

    .line 291
    .end local v0           #enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 296
    .restart local v0       #enabled:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 297
    const/4 v0, 0x0

    goto :goto_1

    .line 326
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v2, 0x7f090331

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initiateClearUserData()V
    .locals 6

    .prologue
    const-string v5, "InstalledAppDetails"

    .line 715
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 717
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 718
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 720
    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 722
    :cond_0
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 723
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 724
    .local v2, res:Z
    if-nez v2, :cond_1

    .line 726
    const-string v3, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldnt clear application user data for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(I)V

    .line 731
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f09034b

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 573
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 574
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 575
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f090334

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 576
    if-ne v1, v4, :cond_0

    .line 577
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 582
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 583
    return-void

    .line 580
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processCpuUsage()V
    .locals 19

    .prologue
    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mProcessStats:Lcom/android/server/ProcessStats;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/ProcessStats;->update()V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mProcessStats:Lcom/android/server/ProcessStats;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/ProcessStats;->getLastUserTime()I

    move-result v12

    .line 617
    .local v12, user:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mProcessStats:Lcom/android/server/ProcessStats;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/ProcessStats;->getLastSystemTime()I

    move-result v10

    .line 619
    .local v10, system:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mProcessStats:Lcom/android/server/ProcessStats;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/ProcessStats;->getLastIrqTime()I

    move-result v5

    .line 621
    .local v5, irq:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mProcessStats:Lcom/android/server/ProcessStats;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/ProcessStats;->getLastIdleTime()I

    move-result v4

    .line 623
    .local v4, idle:I
    add-int v13, v12, v10

    add-int/2addr v13, v5

    add-int/2addr v13, v4

    int-to-float v11, v13

    .line 624
    .local v11, totalCpuTime:F
    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-nez v13, :cond_0

    const/high16 v11, 0x3f80

    .line 626
    :cond_0
    const/4 v8, 0x0

    .line 629
    .local v8, pkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object v14, v0

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v15, 0x2000

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getCurrentPid()I

    move-result v7

    .line 637
    .local v7, pid:I
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getStats(I)Lcom/android/server/ProcessStats$Stats;

    move-result-object v9

    .line 639
    .local v9, stat:Lcom/android/server/ProcessStats$Stats;
    if-eqz v8, :cond_4

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v13, :cond_4

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    const/4 v13, -0x1

    if-eq v7, v13, :cond_3

    .line 642
    if-eqz v9, :cond_1

    .line 643
    iget v13, v9, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    int-to-long v13, v13

    iget-wide v15, v9, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    cmp-long v13, v13, v15

    if-eqz v13, :cond_2

    iget v13, v9, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    int-to-long v13, v13

    iget-wide v15, v9, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    cmp-long v13, v13, v15

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    move v6, v13

    .line 644
    .local v6, isCpuValid:Z
    :goto_0
    if-eqz v6, :cond_1

    .line 645
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getCpuUsage(Lcom/android/server/ProcessStats$Stats;F)F

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->cpuUsage:F

    .line 648
    .end local v6           #isCpuValid:Z
    :cond_1
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getMemSize(I)I

    move-result v13

    int-to-long v13, v13

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/InstalledAppDetails;->memSize:J

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    move-object v13, v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f09035b

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\nRAM:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->memSize:J

    move-wide v15, v0

    const-wide/16 v17, 0x400

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  CPU:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->cpuUsage:F

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getCpuFormattedString(F)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    .end local v7           #pid:I
    .end local v9           #stat:Lcom/android/server/ProcessStats$Stats;
    :goto_1
    return-void

    .line 631
    :catch_0
    move-exception v13

    move-object v3, v13

    .line 632
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "InstalledAppDetails"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception when retrieving package:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v0

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    const/4 v13, 0x3

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(I)V

    goto :goto_1

    .line 643
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #pid:I
    .restart local v9       #stat:Lcom/android/server/ProcessStats$Stats;
    :cond_2
    const/4 v13, 0x0

    move v6, v13

    goto/16 :goto_0

    .line 651
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    move-object v13, v0

    const v14, 0x7f09035b

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 654
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    move-object v13, v0

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 599
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 600
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 602
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 603
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 604
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 611
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 612
    return-void

    .line 608
    :cond_0
    iput v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveErrorCode:I

    .line 609
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(I)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const v2, 0x7f090360

    const/4 v1, 0x0

    .line 586
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 588
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initDataButtons()V

    .line 589
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initMoveButton()V

    .line 596
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstallLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 593
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 594
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 522
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 524
    :cond_0
    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 525
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 566
    :goto_0
    return-void

    .line 535
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 536
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 538
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    :cond_3
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 541
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 542
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    :cond_4
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 545
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 546
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    :cond_5
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 549
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 550
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v0, :cond_8

    .line 554
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 559
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_9

    .line 560
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 556
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 562
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 448
    iget-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-eqz v9, :cond_0

    move v9, v13

    .line 507
    :goto_0
    return v9

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 453
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, packageName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v9, v5}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 456
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v9, :cond_1

    move v9, v12

    .line 457
    goto :goto_0

    .line 462
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x2240

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v7, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v4, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v4, v7, v5}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 478
    const v9, 0x7f0b005c

    invoke-virtual {p0, v9}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 479
    .local v1, autoLaunchView:Landroid/widget/TextView;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_2

    .line 481
    const v9, 0x7f090337

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 482
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 490
    :goto_1
    const v9, 0x7f0b005e

    invoke-virtual {p0, v9}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 491
    .local v6, permsView:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/AppSecurityPermissions;

    invoke-direct {v0, p0, v5}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    .local v0, asp:Landroid/widget/AppSecurityPermissions;
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 493
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    const v9, 0x7f0b005f

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 497
    .local v8, securityList:Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 498
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    .end local v8           #securityList:Landroid/widget/LinearLayout;
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 504
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v9}, Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 505
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 506
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    move v9, v13

    .line 507
    goto/16 :goto_0

    .line 466
    .end local v0           #asp:Landroid/widget/AppSecurityPermissions;
    .end local v1           #autoLaunchView:Landroid/widget/TextView;
    .end local v4           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v6           #permsView:Landroid/widget/LinearLayout;
    .end local v7           #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 467
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "InstalledAppDetails"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception when retrieving package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v9, v12

    .line 468
    goto/16 :goto_0

    .line 484
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #autoLaunchView:Landroid/widget/TextView;
    .restart local v4       #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v7       #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2
    const v9, 0x7f090336

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 485
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 486
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 500
    .restart local v0       #asp:Landroid/widget/AppSecurityPermissions;
    .restart local v6       #permsView:Landroid/widget/LinearLayout;
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 8
    .parameter "pkgInfo"

    .prologue
    const/4 v7, 0x0

    .line 383
    const v3, 0x7f0b004b

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, appSnippet:Landroid/view/View;
    const v3, 0x7f0b0071

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 385
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 386
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    const v3, 0x7f0b0072

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 389
    .local v2, label:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const v3, 0x7f0b0073

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 393
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const v4, 0x7f09035b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 2
    .parameter "finish"
    .parameter "appChanged"

    .prologue
    .line 513
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 514
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "chg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->setResult(ILandroid/content/Intent;)V

    .line 516
    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->finish()V

    .line 519
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 735
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->showDialog(I)V

    .line 736
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 826
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 827
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 828
    invoke-direct {p0, v3, v3}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 829
    return-void
.end method


# virtual methods
.method public getCpuUsage(Lcom/android/server/ProcessStats$Stats;F)F
    .locals 3
    .parameter "stat"
    .parameter "totalCpuTime"

    .prologue
    .line 704
    if-nez p1, :cond_0

    .line 705
    const/4 v1, 0x0

    .line 708
    :goto_0
    return v1

    .line 707
    :cond_0
    iget v1, p1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    iget v2, p1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    add-int v0, v1, v2

    .line 708
    .local v0, time:I
    mul-int/lit8 v1, v0, 0x64

    int-to-float v1, v1

    div-float/2addr v1, p2

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 880
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 881
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    .line 882
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 883
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(I)V

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 886
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_2

    move v2, v5

    :goto_1
    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 890
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    goto :goto_0

    .line 893
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_5

    .line 894
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 896
    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_7

    .line 897
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 898
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 903
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(I)V

    goto :goto_0

    .line 905
    :cond_7
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_9

    .line 907
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v1, :cond_8

    .line 908
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 910
    :cond_8
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 911
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    .line 912
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(I)V

    goto/16 :goto_0

    .line 914
    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v0, :cond_b

    .line 916
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 918
    :cond_b
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    move v0, v3

    .line 920
    :goto_2
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 921
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 922
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0

    :cond_c
    move v0, v5

    .line 918
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const v6, 0x7f0b00e6

    const v5, 0x7f0b00e5

    const/4 v4, 0x0

    .line 339
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 344
    new-instance v2, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v2}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    .line 346
    const v2, 0x7f030021

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setContentView(I)V

    .line 350
    const v2, 0x7f0b004d

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstallLocation:Landroid/widget/TextView;

    .line 353
    const v2, 0x7f090358

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 356
    new-instance v2, Lcom/android/server/ProcessStats;

    invoke-direct {v2, v4}, Lcom/android/server/ProcessStats;-><init>(Z)V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mProcessStats:Lcom/android/server/ProcessStats;

    .line 358
    const v2, 0x7f0b0050

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 359
    const v2, 0x7f0b0052

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 360
    const v2, 0x7f0b0055

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 363
    const v2, 0x7f0b004c

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 365
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v3, 0x7f09032d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 366
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 367
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 370
    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 371
    .local v1, data_buttons_panel:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 372
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 375
    const v2, 0x7f0b005a

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 376
    const v2, 0x7f0b005b

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 378
    const v2, 0x7f0b005d

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 379
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter
    .parameter

    .prologue
    const v3, 0x7f090350

    const v2, 0x7f09034f

    const/4 v6, 0x0

    const v5, 0x7f09034e

    const v4, 0x1080027

    .line 740
    packed-switch p1, :pswitch_data_0

    move-object v0, v6

    .line 820
    :goto_0
    return-object v0

    .line 742
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09034c

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09034d

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$3;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 756
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090353

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090354

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$4;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 770
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$5;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$5;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 783
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090355

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090356

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$6;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$6;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 797
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090366

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090367

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$7;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$7;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 811
    :pswitch_5
    const v0, 0x7f090369

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveErrorCode:I

    invoke-direct {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 813
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090368

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 430
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 441
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCalcHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 416
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->pause()V

    .line 417
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 404
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 406
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsState;->resume(Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    .line 407
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 410
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 445
    return-void
.end method
