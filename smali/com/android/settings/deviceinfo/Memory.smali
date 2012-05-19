.class public Lcom/android/settings/deviceinfo/Memory;
.super Landroid/preference/PreferenceActivity;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mMountService:Landroid/os/storage/IMountService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSdAvail:Landroid/preference/Preference;

.field private mSdFormat:Landroid/preference/Preference;

.field private mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

.field private mSdMountToggle:Landroid/preference/Preference;

.field mSdMountToggleAdded:Z

.field private mSdSize:Landroid/preference/Preference;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 80
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 82
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 125
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 196
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Ljava/lang/String;Z)V

    return-void
.end method

.method private doUnmount(Ljava/lang/String;Z)V
    .locals 5
    .parameter "extStoragePath"
    .parameter "force"

    .prologue
    .line 244
    const-string v2, "Memory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doUnmount :: extStoragePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 247
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    const v2, 0x7f090268

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 251
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090269

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f09026a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const v2, 0x7f090267

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 260
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 266
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 4
    .parameter "size"

    .prologue
    .line 427
    const-string v0, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatSize :: size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/32 v2, 0x100000

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    const-string v1, "Memory"

    .line 158
    monitor-enter p0

    :try_start_0
    const-string v1, "Memory"

    const-string v2, "getMountService ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 160
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 161
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 162
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 167
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 164
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "Memory"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage(Ljava/lang/String;)Z
    .locals 8
    .parameter "extStoragePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 277
    const-string v4, "Memory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasAppsAccessingStorage :: extStoragePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 279
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v3

    .line 280
    .local v3, stUsers:[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    move v4, v7

    .line 288
    :goto_0
    return v4

    .line 283
    :cond_0
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 284
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v1

    .line 285
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v7

    .line 286
    goto :goto_0

    .line 288
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private mount(Ljava/lang/String;)V
    .locals 4
    .parameter "extStoragePath"

    .prologue
    const-string v3, "Memory"

    .line 319
    const-string v1, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mount :: extStoragePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 322
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_2

    .line 323
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09026b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09026c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    invoke-interface {v0, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-interface {v0, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    goto :goto_0

    .line 333
    :cond_2
    const-string v1, "Memory"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 271
    const-string v0, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialogInner :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    .line 274
    return-void
.end method

.method private unmount(Ljava/lang/String;)V
    .locals 4
    .parameter "extStoragePath"

    .prologue
    const-string v3, "Memory"

    .line 292
    const-string v1, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmount :: extStoragePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->hasAppsAccessingStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    const-string v1, "Memory"

    const-string v2, "Do have storage users accessing media"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const-string v1, "Memory"

    const-string v2, "unmount :: doUnmount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 313
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Memory"

    const-string v1, "Is MountService running?"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private updateMemoryStatus()V
    .locals 22

    .prologue
    .line 340
    const-string v18, "Memory"

    const-string v19, "updateMemoryStatus :: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    .line 344
    .local v13, status:Ljava/lang/String;
    const-string v11, ""

    .line 345
    .local v11, readOnly:Ljava/lang/String;
    const-string v18, "mounted_ro"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 346
    const-string v13, "mounted"

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f09025e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 348
    const-string v18, "Memory"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateMemoryStatus :: status = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", readOnly"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 353
    const-string v18, "Memory"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EXTERNAL updateMemoryStatus :: status = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v18, "mounted"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 355
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v18

    if-nez v18, :cond_1

    .line 358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 364
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 365
    .local v10, path:Ljava/io/File;
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 366
    .local v12, stat:Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v7, v0

    .line 367
    .local v7, blockSize:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v14, v0

    .line 368
    .local v14, totalBlocks:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v3, v0

    .line 372
    .local v3, availableBlocks:J
    mul-long v16, v14, v7

    .line 373
    .local v16, totalSpace:J
    mul-long v5, v3, v7

    .line 376
    .local v5, availableSpace:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    const-string v18, "Memory"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Storage Path :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", Total space :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-wide/32 v20, 0x100000

    div-long v20, v16, v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", and Available space :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-wide/32 v20, 0x100000

    div-long v20, v5, v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f090250

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f090252

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v3           #availableBlocks:J
    .end local v5           #availableSpace:J
    .end local v7           #blockSize:J
    .end local v10           #path:Ljava/io/File;
    .end local v12           #stat:Landroid/os/StatFs;
    .end local v14           #totalBlocks:J
    .end local v16           #totalSpace:J
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    .line 420
    .restart local v10       #path:Ljava/io/File;
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 421
    .restart local v12       #stat:Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v7, v0

    .line 422
    .restart local v7       #blockSize:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v3, v0

    .line 423
    .restart local v3       #availableBlocks:J
    const-string v18, "memory_internal_avail"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    mul-long v19, v3, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    return-void

    .line 384
    .end local v3           #availableBlocks:J
    .end local v7           #blockSize:J
    .end local v10           #path:Ljava/io/File;
    .end local v12           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v18

    move-object/from16 v9, v18

    .line 387
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v13, "removed"

    .line 388
    goto :goto_0

    .line 391
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f09025d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f09025d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v18

    if-nez v18, :cond_3

    .line 396
    const-string v18, "unmounted"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 397
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 399
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 404
    :cond_3
    const-string v18, "unmounted"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "nofs"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "unmountable"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 407
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f090256

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f090258

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 412
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f090256

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f090254

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 432
    const-string v0, "Memory"

    const-string v1, "onCancel :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->finish()V

    .line 434
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 90
    const-string v0, "Memory"

    const-string v1, "onCreate ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 94
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 95
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 98
    :cond_0
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    .line 103
    const-string v0, "memory_sd_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    .line 104
    const-string v0, "memory_sd_avail"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    .line 105
    const-string v0, "memory_sd_mount_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    .line 106
    const-string v0, "memory_sd_format"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    .line 108
    const-string v0, "memory_sd"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 110
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "id"
    .parameter "args"

    .prologue
    const v5, 0x7f0900d3

    const v4, 0x7f09034e

    const/4 v3, 0x0

    .line 205
    const-string v0, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 240
    :goto_0
    return-object v0

    .line 209
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09025f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$3;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090261

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 221
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090263

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090265

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 228
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090260

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$4;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$4;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090262

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "Memory"

    const-string v1, "onDestroy ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 154
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 155
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 144
    const-string v0, "Memory"

    const-string v1, "onPause ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v2, "Memory"

    .line 172
    const-string v0, "Memory"

    const-string v0, "onPreferenceTreeClick ::"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 176
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "Memory"

    const-string v0, "onPreferenceTreeClick :: mSdMountToggle for unmount"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->unmount(Ljava/lang/String;)V

    :goto_0
    move v0, v3

    .line 193
    :goto_1
    return v0

    .line 181
    :cond_0
    const-string v0, "Memory"

    const-string v0, "onPreferenceTreeClick :: mSdMountToggle for mount"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->mount(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 186
    const-string v0, "Memory"

    const-string v0, "onPreferenceTreeClick :: mSdFormat"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    const-class v1, Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 190
    goto :goto_1

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 116
    const-string v1, "Memory"

    const-string v2, "onResume ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/Memory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    .line 123
    return-void
.end method
