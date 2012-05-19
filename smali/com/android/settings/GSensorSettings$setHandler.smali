.class Lcom/android/settings/GSensorSettings$setHandler;
.super Landroid/os/Handler;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$setHandler;-><init>(Lcom/android/settings/GSensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/high16 v4, 0x4220

    const-wide/16 v8, 0x32

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 267
    new-array v1, v6, [F

    .line 268
    .local v1, position:[F
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 270
    .local v0, message:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 272
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$600(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f09054e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getPoint([F)[F

    .line 274
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 275
    aget v2, v1, v7

    const/high16 v3, 0x4370

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sput v2, Lcom/android/settings/GSensorSettings;->ani_gap_x:F

    .line 276
    aget v2, v1, v5

    const/high16 v3, 0x43b9

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sput v2, Lcom/android/settings/GSensorSettings;->ani_gap_y:F

    .line 277
    const/16 v2, 0x28

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    .line 279
    iput v6, v0, Landroid/os/Message;->what:I

    .line 280
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 281
    invoke-virtual {p0, v5}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    goto :goto_0

    .line 285
    :pswitch_1
    sget v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    sub-int/2addr v2, v5

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    if-ltz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/GSensorSettings;->ani_gap_x:F

    sget v4, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sget v4, Lcom/android/settings/GSensorSettings;->ani_gap_y:F

    neg-float v4, v4

    sget v5, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setPoint(FF)V

    .line 289
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    .line 290
    invoke-virtual {p0, v6}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 291
    iput v6, v0, Landroid/os/Message;->what:I

    .line 292
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 295
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 296
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 297
    const/16 v2, 0x28

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    goto :goto_0

    .line 302
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 303
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$700(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->runCalibration(I)I

    .line 304
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$700(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    iget-object v3, v3, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    iget-object v4, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v4}, Lcom/android/settings/GSensorSettings;->access$800(Lcom/android/settings/GSensorSettings;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 307
    invoke-static {v7}, Lcom/android/settings/GSensorSettings;->access$302(I)I

    .line 308
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$600(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f09054d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 311
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)V

    goto/16 :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
