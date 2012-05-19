.class public Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;
.super Ljava/lang/Object;
.source "BluetoothPopupAlertAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$1;,
        Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$LoadListener;
    }
.end annotation


# instance fields
.field private final PAIR_SOUND_PATH:Ljava/lang/String;

.field mAudioManager:Landroid/media/AudioManager;

.field private mPopupSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field mVolFloat:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "/media/audio/notifications/Cloud.ogg"

    iput-object v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->PAIR_SOUND_PATH:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mSoundPool:Landroid/media/SoundPool;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$LoadListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$LoadListener;-><init>(Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$1;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 41
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mAudioManager:Landroid/media/AudioManager;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mVolFloat:F

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mPopupSoundId:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method


# virtual methods
.method public loadAndPlayDefaultAlert()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/media/audio/notifications/Cloud.ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mPopupSoundId:I

    .line 49
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mPopupSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 59
    iget-object v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 60
    return-void
.end method
