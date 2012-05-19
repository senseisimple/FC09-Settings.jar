.class Lcom/android/settings/ActivityPicker$IconResizer;
.super Ljava/lang/Object;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconResizer"
.end annotation


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mIconHeight:I

.field private final mIconWidth:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mOldBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/util/DisplayMetrics;)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "metrics"

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 343
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 346
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 349
    iput-object p3, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    .line 350
    iput p1, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    .line 351
    iput p2, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    .line 352
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .parameter "icon"

    .prologue
    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v17, v0

    .line 368
    .local v17, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    move v9, v0

    .line 370
    .local v9, height:I
    if-nez p1, :cond_0

    .line 371
    new-instance v20, Lcom/android/settings/ActivityPicker$EmptyDrawable;

    move-object/from16 v0, v20

    move/from16 v1, v17

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ActivityPicker$EmptyDrawable;-><init>(II)V

    .line 440
    :goto_0
    return-object v20

    .line 375
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 376
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    .line 377
    .local v13, painter:Landroid/graphics/drawable/PaintDrawable;
    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 378
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 387
    .end local v13           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 388
    .local v12, iconWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 390
    .local v11, iconHeight:I
    if-lez v12, :cond_4

    if-lez v11, :cond_4

    .line 391
    move/from16 v0, v17

    move v1, v12

    if-lt v0, v1, :cond_2

    if-ge v9, v11, :cond_8

    .line 392
    :cond_2
    move v0, v12

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v11

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v14, v20, v21

    .line 394
    .local v14, ratio:F
    if-le v12, v11, :cond_6

    .line 395
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move v9, v0

    .line 400
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v7, v20

    .line 402
    .local v7, c:Landroid/graphics/Bitmap$Config;
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 403
    .local v16, thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    move-object v8, v0

    .line 404
    .local v8, canvas:Landroid/graphics/Canvas;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v17

    div-int/lit8 v18, v20, 0x2

    .line 412
    .local v18, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    move/from16 v20, v0

    sub-int v20, v20, v9

    div-int/lit8 v19, v20, 0x2

    .line 413
    .local v19, y:I
    add-int v20, v18, v17

    add-int v21, v19, v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 414
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 417
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local p1
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    :try_start_1
    move-object v0, v10

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v11, v0

    .end local v11           #iconHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 p1, v10

    .end local v7           #c:Landroid/graphics/Bitmap$Config;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v12           #iconWidth:I
    .end local v14           #ratio:F
    .end local v16           #thumb:Landroid/graphics/Bitmap;
    .end local v18           #x:I
    .end local v19           #y:I
    .restart local p1
    :cond_4
    :goto_4
    move-object/from16 v20, p1

    .line 440
    goto/16 :goto_0

    .line 379
    :cond_5
    :try_start_2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 381
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 382
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 383
    .local v5, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v20

    if-nez v20, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 436
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v20

    move-object/from16 v15, v20

    .line 437
    .local v15, t:Ljava/lang/Throwable;
    :goto_5
    new-instance p1, Lcom/android/settings/ActivityPicker$EmptyDrawable;

    .end local p1
    move-object/from16 v0, p1

    move/from16 v1, v17

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ActivityPicker$EmptyDrawable;-><init>(II)V

    .restart local p1
    goto :goto_4

    .line 396
    .end local v15           #t:Ljava/lang/Throwable;
    .restart local v11       #iconHeight:I
    .restart local v12       #iconWidth:I
    .restart local v14       #ratio:F
    :cond_6
    if-le v11, v12, :cond_3

    .line 397
    move v0, v9

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_2

    .line 400
    :cond_7
    :try_start_3
    sget-object v20, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v7, v20

    goto/16 :goto_3

    .line 419
    .end local v14           #ratio:F
    :cond_8
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    if-ge v11, v9, :cond_4

    .line 420
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 421
    .restart local v7       #c:Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 422
    .restart local v16       #thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    move-object v8, v0

    .line 423
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 425
    sub-int v20, v17, v12

    div-int/lit8 v18, v20, 0x2

    .line 426
    .restart local v18       #x:I
    sub-int v20, v9, v11

    div-int/lit8 v19, v20, 0x2

    .line 427
    .restart local v19       #y:I
    add-int v20, v18, v12

    add-int v21, v19, v11

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 428
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 431
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 432
    .end local p1
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    :try_start_4
    move-object v0, v10

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v11, v0

    .end local v11           #iconHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 p1, v10

    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_4

    .line 436
    .end local p1
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v20

    move-object/from16 v15, v20

    move-object/from16 p1, v10

    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_5
.end method
