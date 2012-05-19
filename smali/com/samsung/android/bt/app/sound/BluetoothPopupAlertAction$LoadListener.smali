.class Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$LoadListener;
.super Ljava/lang/Object;
.source "BluetoothPopupAlertAction.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;


# direct methods
.method private constructor <init>(Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$LoadListener;->this$0:Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$LoadListener;-><init>(Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$LoadListener;->this$0:Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;

    invoke-static {v0}, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->access$200(Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$LoadListener;->this$0:Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;

    invoke-static {v1}, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->access$100(Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$LoadListener;->this$0:Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;

    iget v2, v2, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mVolFloat:F

    iget-object v3, p0, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction$LoadListener;->this$0:Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;

    iget v3, v3, Lcom/samsung/android/bt/app/sound/BluetoothPopupAlertAction;->mVolFloat:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 54
    return-void
.end method
