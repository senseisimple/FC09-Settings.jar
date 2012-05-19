.class Lcom/android/settings/GSensorSettings$GSensorSettingsView;
.super Landroid/view/View;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GSensorSettingsView"
.end annotation


# static fields
.field static sx:I

.field static sy:I


# instance fields
.field mRadius:I

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    const/16 v0, 0xcb

    sput v0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    .line 208
    const/16 v0, 0x14d

    sput v0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 209
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    .line 216
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 219
    iput p1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    .line 220
    return-void
.end method


# virtual methods
.method public getPoint([F)[F
    .locals 2
    .parameter "position"

    .prologue
    .line 236
    const/4 v0, 0x0

    sget v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    add-int/lit8 v1, v1, 0x25

    int-to-float v1, v1

    aput v1, p1, v0

    .line 237
    const/4 v0, 0x1

    sget v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    add-int/lit8 v1, v1, 0x25

    int-to-float v1, v1

    aput v1, p1, v0

    .line 239
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const-wide/high16 v5, 0x4000

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, image:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 252
    :cond_0
    :goto_0
    sget v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    sget v2, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    sget v3, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    add-int/lit8 v3, v3, 0x4a

    sget v4, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    add-int/lit8 v4, v4, 0x4a

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    return-void

    .line 245
    :cond_1
    iget v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 247
    sget v1, Lcom/android/settings/GSensorSettings;->ani_gap_x:F

    sget v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sget v3, Lcom/android/settings/GSensorSettings;->ani_gap_y:F

    sget v4, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    .line 248
    const/high16 v1, 0x4370

    const/high16 v2, 0x43b9

    iget v3, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    add-int/lit8 v3, v3, 0x25

    sget v4, Lcom/android/settings/GSensorSettings;->ani_count:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$500()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    const-string v1, "GSensorSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw mRadius "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPoint(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v6, 0x4000

    const/high16 v5, 0x4348

    .line 224
    float-to-double v1, p1

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p2

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 225
    .local v0, lengthPoint:F
    cmpl-float v1, v0, v5

    if-lez v1, :cond_0

    .line 226
    mul-float v1, p1, v5

    div-float p1, v1, v0

    .line 227
    mul-float v1, p2, v5

    div-float p2, v1, v0

    .line 230
    :cond_0
    const/high16 v1, 0x434b

    add-float/2addr v1, p1

    float-to-int v1, v1

    sput v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    .line 231
    const v1, 0x43a68000

    sub-float/2addr v1, p2

    float-to-int v1, v1

    sput v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    .line 233
    return-void
.end method
