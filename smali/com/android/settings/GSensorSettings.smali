.class public Lcom/android/settings/GSensorSettings;
.super Landroid/app/Activity;
.source "GSensorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GSensorSettings$1;,
        Lcom/android/settings/GSensorSettings$setHandler;,
        Lcom/android/settings/GSensorSettings$GSensorSettingsView;,
        Lcom/android/settings/GSensorSettings$handlersensor;
    }
.end annotation


# static fields
.field static ani_count:I

.field static ani_gap_x:F

.field static ani_gap_y:F

.field private static circlePaint:Landroid/graphics/Paint;

.field private static sampleCount:I

.field static sampleData_x:F

.field static sampleData_y:F


# instance fields
.field private btn_cal:Landroid/widget/Button;

.field private drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field mHandler:Lcom/android/settings/GSensorSettings$setHandler;

.field mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 265
    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/android/settings/GSensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput p0, Lcom/android/settings/GSensorSettings;->sampleCount:I

    return p0
.end method

.method static synthetic access$304()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/android/settings/GSensorSettings;->sampleCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/GSensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 40
    sget v0, Lcom/android/settings/GSensorSettings;->sampleCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/settings/GSensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    return-object v0
.end method

.method static synthetic access$500()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/GSensorSettings;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/GSensorSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/GSensorSettings;->diplayCompleted()V

    return-void
.end method

.method private diplayCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    const v1, 0x7f09054f

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 203
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 90
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 91
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 93
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    .line 100
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 111
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 112
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x7f0b0049
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v0, Lcom/android/settings/GSensorSettings$setHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/GSensorSettings$setHandler;-><init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    .line 79
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->setContentView(I)V

    .line 80
    new-instance v0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    invoke-direct {v0, p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    .line 81
    const v0, 0x7f0b0048

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    .line 82
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/GSensorSettings;->init()V

    .line 85
    new-instance v0, Lcom/android/settings/GSensorSettings$handlersensor;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/GSensorSettings$handlersensor;-><init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    .line 86
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    sput v3, Lcom/android/settings/GSensorSettings;->sampleCount:I

    .line 122
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;

    const v1, 0x7f09054d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    iget-object v2, p0, Lcom/android/settings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 133
    return-void
.end method
