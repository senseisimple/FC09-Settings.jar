.class public Lcom/nemustech/tiffany/widget/TFScrollView;
.super Landroid/widget/FrameLayout;
.source "TFScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;
    }
.end annotation


# instance fields
.field protected mBlockExcessScroll:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

.field private mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

.field protected mExcessScroll:I

.field private mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

.field protected mExcessScrollEnabled:Z

.field private mExcessScrollMode:I

.field protected mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mMotionX:F

.field private mMotionY:F

.field private mOrientation:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private mTFScrollViewMovedFocus:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 279
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 103
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 117
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    .line 133
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    .line 146
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 185
    new-instance v1, Lcom/nemustech/tiffany/widget/TFScrollView$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFScrollView$1;-><init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 231
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    .line 238
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    .line 260
    new-instance v1, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

    .line 272
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    .line 284
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->initScrollView()V

    .line 286
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0x105

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 289
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setFillViewport(Z)V

    .line 291
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/widget/TFScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/nemustech/tiffany/widget/TFScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private canScroll()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 439
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 440
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 441
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_1

    .line 442
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 443
    .local v2, childWidth:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    move v3, v7

    .line 449
    .end local v2           #childWidth:I
    :goto_0
    return v3

    .restart local v2       #childWidth:I
    :cond_0
    move v3, v6

    .line 443
    goto :goto_0

    .line 445
    .end local v2           #childWidth:I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 446
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    move v3, v7

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_0

    .end local v1           #childHeight:I
    :cond_3
    move v3, v6

    .line 449
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 2336
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_1

    .line 2352
    :cond_0
    const/4 v0, 0x0

    .line 2362
    :goto_0
    return v0

    .line 2354
    :cond_1
    add-int v0, p2, p1

    if-le v0, p3, :cond_2

    .line 2360
    sub-int v0, p3, p2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 2362
    goto :goto_0
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 962
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 963
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 964
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-ne v1, v4, :cond_1

    .line 965
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_0

    sub-int v1, v0, v4

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBottom:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTop:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    move v1, v4

    .line 969
    :goto_0
    return v1

    :cond_0
    move v1, v5

    .line 965
    goto :goto_0

    .line 967
    :cond_1
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ltz v1, :cond_2

    sub-int v1, v0, v4

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mRight:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLeft:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    move v1, v4

    .line 969
    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1752
    if-eqz p1, :cond_0

    .line 1753
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1754
    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1756
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1737
    if-eqz p1, :cond_0

    .line 1738
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1739
    invoke-virtual {p0, v1, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    .line 1744
    :cond_0
    :goto_0
    return-void

    .line 1741
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1358
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1359
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1368
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1370
    .local v3, foundFullyContainedFocusable:Z
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    .line 1371
    .local v5, orientation:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1372
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_d

    .line 1373
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1374
    .local v6, view:Landroid/view/View;
    const/4 v10, 0x0

    .line 1375
    .local v10, viewTop:I
    const/4 v7, 0x0

    .line 1376
    .local v7, viewBottom:I
    if-nez v5, :cond_1

    .line 1377
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 1378
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1384
    :goto_1
    if-ge p2, v7, :cond_0

    if-ge v10, p3, :cond_0

    .line 1390
    if-ge p2, v10, :cond_2

    if-ge v7, p3, :cond_2

    const/4 v11, 0x1

    move v9, v11

    .line 1393
    .local v9, viewIsFullyContained:Z
    :goto_2
    if-nez v1, :cond_3

    .line 1395
    move-object v1, v6

    .line 1396
    move v3, v9

    .line 1372
    .end local v9           #viewIsFullyContained:Z
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1380
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    .line 1381
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    goto :goto_1

    .line 1390
    :cond_2
    const/4 v11, 0x0

    move v9, v11

    goto :goto_2

    .line 1398
    .restart local v9       #viewIsFullyContained:Z
    :cond_3
    const/4 v8, 0x0

    .line 1399
    .local v8, viewIsCloserToBoundary:Z
    if-nez v5, :cond_7

    .line 1400
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    if-lt v10, v11, :cond_5

    :cond_4
    if-nez p1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v7, v11, :cond_6

    :cond_5
    const/4 v11, 0x1

    move v8, v11

    .line 1411
    :goto_4
    if-eqz v3, :cond_b

    .line 1412
    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 1418
    move-object v1, v6

    goto :goto_3

    .line 1400
    :cond_6
    const/4 v11, 0x0

    move v8, v11

    goto :goto_4

    .line 1405
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v10, v11, :cond_9

    :cond_8
    if-nez p1, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v7, v11, :cond_a

    :cond_9
    const/4 v11, 0x1

    move v8, v11

    :goto_5
    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    move v8, v11

    goto :goto_5

    .line 1421
    :cond_b
    if-eqz v9, :cond_c

    .line 1423
    move-object v1, v6

    .line 1424
    const/4 v3, 0x1

    goto :goto_3

    .line 1425
    :cond_c
    if-eqz v8, :cond_0

    .line 1430
    move-object v1, v6

    goto :goto_3

    .line 1437
    .end local v6           #view:Landroid/view/View;
    .end local v7           #viewBottom:I
    .end local v8           #viewIsCloserToBoundary:Z
    .end local v9           #viewIsFullyContained:Z
    .end local v10           #viewTop:I
    :cond_d
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 1312
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v5, :cond_1

    .line 1313
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 1314
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 1315
    .local v2, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v5

    add-int/2addr v5, p2

    sub-int v3, v5, v1

    .line 1317
    .local v3, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ge v5, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v5, v2, :cond_0

    move-object v5, p3

    .line 1337
    .end local v2           #leftWithoutFadingEdge:I
    .end local v3           #rightWithoutFadingEdge:I
    :goto_0
    return-object v5

    .line 1323
    .restart local v2       #leftWithoutFadingEdge:I
    .restart local v3       #rightWithoutFadingEdge:I
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 1327
    .end local v1           #fadingEdgeLength:I
    .end local v2           #leftWithoutFadingEdge:I
    .end local v3           #rightWithoutFadingEdge:I
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 1328
    .restart local v1       #fadingEdgeLength:I
    add-int v4, p2, v1

    .line 1329
    .local v4, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v5

    add-int/2addr v5, p2

    sub-int v0, v5, v1

    .line 1331
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v5, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v5, v4, :cond_2

    move-object v5, p3

    .line 1334
    goto :goto_0

    .line 1337
    :cond_2
    invoke-direct {p0, p1, v4, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 6

    .prologue
    .line 377
    new-instance v4, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    .line 378
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->setFocusable(Z)V

    .line 379
    const/high16 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 380
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->setWillNotDraw(Z)V

    .line 381
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 382
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTouchSlop:I

    .line 383
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMinimumVelocity:I

    .line 384
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMaximumVelocity:I

    .line 387
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    if-nez v4, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 389
    .local v3, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 391
    .local v1, edge:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 393
    .local v2, glow:Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-direct {v4, v1, v2}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    .line 394
    new-instance v4, Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-direct {v4, v1, v2}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    .line 397
    .end local v1           #edge:Landroid/graphics/drawable/Drawable;
    .end local v2           #glow:Landroid/graphics/drawable/Drawable;
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 3
    .parameter "descendant"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1701
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v0, :cond_1

    .line 1702
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1704
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1702
    goto :goto_0

    .line 1704
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 2246
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 2251
    :goto_0
    return v1

    .line 2250
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2251
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1725
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1727
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1713
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1715
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1564
    const/4 v3, 0x1

    .line 1566
    .local v3, handled:Z
    const/4 v4, 0x0

    .line 1567
    .local v4, height:I
    const/4 v1, 0x0

    .line 1568
    .local v1, containerTop:I
    const/4 v0, 0x0

    .line 1569
    .local v0, containerBottom:I
    const/4 v6, 0x0

    .line 1571
    .local v6, up:Z
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v7, :cond_3

    .line 1572
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v4

    .line 1573
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v1

    .line 1574
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    move v6, v9

    .line 1580
    :goto_0
    add-int v0, v1, v4

    .line 1582
    invoke-direct {p0, v6, p2, p3}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1583
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1584
    move-object v5, p0

    .line 1587
    :cond_0
    if-lt p2, v1, :cond_5

    if-gt p3, v0, :cond_5

    .line 1588
    const/4 v3, 0x0

    .line 1598
    :goto_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1599
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1600
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1603
    :cond_1
    return v3

    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v6, v8

    .line 1574
    goto :goto_0

    .line 1576
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v4

    .line 1577
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v1

    .line 1578
    const/16 v7, 0x21

    if-ne p1, v7, :cond_4

    move v6, v9

    :goto_2
    goto :goto_0

    :cond_4
    move v6, v8

    goto :goto_2

    .line 1590
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_5
    if-eqz v6, :cond_6

    sub-int v7, p2, v1

    move v2, v7

    .line 1591
    .local v2, delta:I
    :goto_3
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v7, :cond_7

    .line 1592
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1590
    .end local v2           #delta:I
    :cond_6
    sub-int v7, p3, v0

    move v2, v7

    goto :goto_3

    .line 1594
    .restart local v2       #delta:I
    :cond_7
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    goto :goto_1
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    .line 1958
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1961
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1963
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1965
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1966
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v1, :cond_1

    .line 1967
    invoke-virtual {p0, v0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 1972
    :cond_0
    :goto_0
    return-void

    .line 1969
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 1983
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1984
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1985
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1986
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v2, :cond_3

    .line 1987
    if-eqz p2, :cond_2

    .line 1988
    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 2000
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v3

    .line 1984
    goto :goto_0

    .line 1990
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    goto :goto_1

    .line 1993
    :cond_3
    if-eqz p2, :cond_4

    .line 1994
    invoke-virtual {p0, v3, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_1

    .line 1996
    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 406
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 415
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 433
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 14
    .parameter "direction"

    .prologue
    const/16 v13, 0x82

    const/16 v12, 0x42

    const/4 v11, 0x0

    .line 1615
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1616
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1618
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v9

    invoke-virtual {v9, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1620
    .local v5, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getMaxScrollAmount()I

    move-result v4

    .line 1622
    .local v4, maxJump:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v9, :cond_7

    .line 1623
    if-eqz v5, :cond_2

    invoke-direct {p0, v5, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1624
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1625
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1626
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v8

    .line 1627
    .local v8, scrollDelta:I
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollX(I)V

    .line 1628
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1681
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1688
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getDescendantFocusability()I

    move-result v3

    .line 1689
    .local v3, descendantFocusability:I
    const/high16 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 1690
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->requestFocus()Z

    .line 1691
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 1693
    .end local v3           #descendantFocusability:I
    :cond_1
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 1631
    .end local v8           #scrollDelta:I
    :cond_2
    move v8, v4

    .line 1633
    .restart local v8       #scrollDelta:I
    const/16 v9, 0x11

    if-ne p1, v9, :cond_4

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v9

    if-ge v9, v8, :cond_4

    .line 1634
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v8

    .line 1645
    :cond_3
    :goto_2
    if-nez v8, :cond_5

    move v9, v11

    .line 1646
    goto :goto_1

    .line 1635
    :cond_4
    if-ne p1, v12, :cond_3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 1637
    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1639
    .local v2, daRight:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v10

    add-int v7, v9, v10

    .line 1641
    .local v7, screenRight:I
    sub-int v9, v2, v7

    if-ge v9, v4, :cond_3

    .line 1642
    sub-int v8, v2, v7

    goto :goto_2

    .line 1648
    .end local v2           #daRight:I
    .end local v7           #screenRight:I
    :cond_5
    if-ne p1, v12, :cond_6

    move v9, v8

    :goto_3
    invoke-direct {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollX(I)V

    goto :goto_0

    :cond_6
    neg-int v9, v8

    goto :goto_3

    .line 1651
    .end local v8           #scrollDelta:I
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v9

    invoke-direct {p0, v5, v4, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1652
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1653
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1654
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v8

    .line 1655
    .restart local v8       #scrollDelta:I
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    .line 1656
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    .line 1659
    .end local v8           #scrollDelta:I
    :cond_8
    move v8, v4

    .line 1661
    .restart local v8       #scrollDelta:I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_a

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v9

    if-ge v9, v8, :cond_a

    .line 1662
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v8

    .line 1674
    :cond_9
    :goto_4
    if-nez v8, :cond_b

    move v9, v11

    .line 1675
    goto :goto_1

    .line 1663
    :cond_a
    if-ne p1, v13, :cond_9

    .line 1664
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_9

    .line 1665
    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1667
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v10

    add-int v6, v9, v10

    .line 1669
    .local v6, screenBottom:I
    sub-int v9, v1, v6

    if-ge v9, v4, :cond_9

    .line 1670
    sub-int v8, v1, v6

    goto :goto_4

    .line 1677
    .end local v1           #daBottom:I
    .end local v6           #screenBottom:I
    :cond_b
    if-ne p1, v13, :cond_c

    move v9, v8

    :goto_5
    invoke-direct {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    goto/16 :goto_0

    :cond_c
    neg-int v9, v8

    goto :goto_5
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2442
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    .line 2443
    .local v0, extent:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-ne v2, v4, :cond_0

    move v2, v0

    .line 2451
    :goto_0
    return v2

    .line 2446
    :cond_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeHorizontalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2447
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 2448
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 2451
    .end local v1           #ratio:F
    :cond_1
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 8

    .prologue
    .line 2456
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v2

    .line 2457
    .local v2, offset:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    move v3, v2

    .line 2470
    .end local v2           #offset:I
    .local v3, offset:I
    :goto_0
    return v3

    .line 2459
    .end local v3           #offset:I
    .restart local v2       #offset:I
    :cond_0
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v6, :cond_1

    .line 2460
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2461
    .local v4, savedExcessScroll:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeHorizontalScrollExtent()I

    move-result v5

    .line 2462
    .local v5, shrinkedScrollExtent:I
    const/4 v6, 0x0

    iput v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2463
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 2464
    .local v1, normalScrollExtent:I
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2466
    sub-int v0, v1, v5

    .line 2468
    .local v0, delta:I
    add-int/2addr v2, v0

    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v4           #savedExcessScroll:I
    .end local v5           #shrinkedScrollExtent:I
    :cond_1
    move v3, v2

    .line 2470
    .end local v2           #offset:I
    .restart local v3       #offset:I
    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1812
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1813
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollRange()I

    move-result v1

    .line 1817
    :goto_0
    return v1

    .line 1816
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1817
    .local v0, count:I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1869
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1886
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1887
    .local v2, oldX:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 1888
    .local v3, oldY:I
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v7

    .line 1889
    .local v7, x:I
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrY()I

    move-result v8

    .line 1890
    .local v8, y:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_a

    .line 1891
    invoke-virtual {p0, v12}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1892
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-direct {p0, v7, v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result v9

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1893
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result v9

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 1895
    const/4 v4, 0x0

    .line 1896
    .local v4, scroll:I
    const/4 v5, 0x0

    .line 1897
    .local v5, value:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v9, :cond_8

    .line 1898
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1899
    move v5, v7

    .line 1904
    :goto_0
    if-eq v4, v5, :cond_4

    .line 1905
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v6

    .line 1907
    .local v6, velocity:F
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1908
    float-to-int v1, v6

    .line 1909
    .local v1, decelerationFlingSpeed:I
    if-nez v4, :cond_0

    .line 1910
    mul-int/lit8 v1, v1, -0x1

    .line 1912
    :cond_0
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

    int-to-float v10, v1

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->start(F)V

    .line 1915
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->contentFits()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1916
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1917
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    .line 1919
    :cond_1
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1920
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    .line 1923
    :cond_2
    if-gez v1, :cond_9

    .line 1924
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    int-to-float v10, v1

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMaximumVelocity:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v9, v12, v10}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onPull(ZF)V

    .line 1925
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1926
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    .line 1934
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 1943
    .end local v0           #child:Landroid/view/View;
    .end local v1           #decelerationFlingSpeed:I
    .end local v4           #scroll:I
    .end local v5           #value:I
    .end local v6           #velocity:F
    :cond_4
    :goto_2
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    if-ne v2, v9, :cond_5

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    if-eq v3, v9, :cond_6

    .line 1944
    :cond_5
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {p0, v9, v10, v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->onScrollChanged(IIII)V

    .line 1948
    :cond_6
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->postInvalidate()V

    .line 1950
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_7
    return-void

    .line 1901
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #oldX:I
    .restart local v3       #oldY:I
    .restart local v4       #scroll:I
    .restart local v5       #value:I
    .restart local v7       #x:I
    .restart local v8       #y:I
    :cond_8
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 1902
    move v5, v8

    goto :goto_0

    .line 1928
    .restart local v1       #decelerationFlingSpeed:I
    .restart local v6       #velocity:F
    :cond_9
    if-lez v1, :cond_3

    .line 1929
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    int-to-float v10, v1

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMaximumVelocity:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v9, v12, v10}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onPull(ZF)V

    .line 1930
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1931
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    goto :goto_1

    .line 1940
    .end local v0           #child:Landroid/view/View;
    .end local v1           #decelerationFlingSpeed:I
    .end local v4           #scroll:I
    .end local v5           #value:I
    .end local v6           #velocity:F
    :cond_a
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1941
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 17
    .parameter "rect"

    .prologue
    .line 2012
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x0

    .line 2122
    :goto_0
    return v15

    .line 2014
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    move v15, v0

    if-nez v15, :cond_7

    .line 2015
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v14

    .line 2016
    .local v14, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v9

    .line 2017
    .local v9, screenLeft:I
    add-int v10, v9, v14

    .line 2019
    .local v10, screenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v5

    .line 2022
    .local v5, fadingEdge:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-lez v15, :cond_1

    .line 2023
    add-int/2addr v9, v5

    .line 2027
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 2028
    sub-int/2addr v10, v5

    .line 2031
    :cond_2
    const/4 v12, 0x0

    .line 2033
    .local v12, scrollXDelta:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-le v15, v10, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-le v15, v9, :cond_5

    .line 2038
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_4

    .line 2040
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v12, v15

    .line 2047
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v7

    .line 2048
    .local v7, right:I
    sub-int v4, v7, v10

    .line 2049
    .local v4, distanceToRight:I
    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    .end local v4           #distanceToRight:I
    .end local v7           #right:I
    :cond_3
    :goto_2
    move v15, v12

    .line 2067
    goto :goto_0

    .line 2043
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v12, v15

    goto :goto_1

    .line 2051
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-ge v15, v9, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-ge v15, v10, :cond_3

    .line 2056
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_6

    .line 2058
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int v15, v10, v15

    sub-int/2addr v12, v15

    .line 2065
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v15

    neg-int v15, v15

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_2

    .line 2061
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v12, v15

    goto :goto_3

    .line 2070
    .end local v5           #fadingEdge:I
    .end local v9           #screenLeft:I
    .end local v10           #screenRight:I
    .end local v12           #scrollXDelta:I
    .end local v14           #width:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v6

    .line 2071
    .local v6, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v11

    .line 2072
    .local v11, screenTop:I
    add-int v8, v11, v6

    .line 2074
    .local v8, screenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 2077
    .restart local v5       #fadingEdge:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-lez v15, :cond_8

    .line 2078
    add-int/2addr v11, v5

    .line 2082
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 2083
    sub-int/2addr v8, v5

    .line 2086
    :cond_9
    const/4 v13, 0x0

    .line 2088
    .local v13, scrollYDelta:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v8, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-le v15, v11, :cond_c

    .line 2093
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v6, :cond_b

    .line 2095
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int/2addr v15, v11

    add-int/2addr v13, v15

    .line 2102
    :goto_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 2103
    .local v2, bottom:I
    sub-int v3, v2, v8

    .line 2104
    .local v3, distanceToBottom:I
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .end local v2           #bottom:I
    .end local v3           #distanceToBottom:I
    :cond_a
    :goto_5
    move v15, v13

    .line 2122
    goto/16 :goto_0

    .line 2098
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int/2addr v15, v8

    add-int/2addr v13, v15

    goto :goto_4

    .line 2106
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v11, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-ge v15, v8, :cond_a

    .line 2111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v6, :cond_d

    .line 2113
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v15, v8, v15

    sub-int/2addr v13, v15

    .line 2120
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v15

    neg-int v15, v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_5

    .line 2116
    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v15, v11, v15

    sub-int/2addr v13, v15

    goto :goto_6
.end method

.method protected computeVerticalScrollExtent()I
    .locals 4

    .prologue
    .line 2409
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    .line 2410
    .local v0, extent:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v2, :cond_0

    move v2, v0

    .line 2418
    :goto_0
    return v2

    .line 2413
    :cond_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2414
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 2415
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 2418
    .end local v1           #ratio:F
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 7

    .prologue
    .line 2423
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v2

    .line 2424
    .local v2, offset:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_0

    move v3, v2

    .line 2437
    .end local v2           #offset:I
    .local v3, offset:I
    :goto_0
    return v3

    .line 2426
    .end local v3           #offset:I
    .restart local v2       #offset:I
    :cond_0
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v6, :cond_1

    .line 2427
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2428
    .local v4, savedExcessScroll:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollExtent()I

    move-result v5

    .line 2429
    .local v5, shrinkedScrollExtent:I
    const/4 v6, 0x0

    iput v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2430
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollExtent()I

    move-result v1

    .line 2431
    .local v1, normalScrollExtent:I
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 2433
    sub-int v0, v1, v5

    .line 2435
    .local v0, delta:I
    add-int/2addr v2, v0

    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v4           #savedExcessScroll:I
    .end local v5           #shrinkedScrollExtent:I
    :cond_1
    move v3, v2

    .line 2437
    .end local v2           #offset:I
    .restart local v3       #offset:I
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1798
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v1, :cond_0

    .line 1799
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollRange()I

    move-result v1

    .line 1803
    :goto_0
    return v1

    .line 1802
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1803
    .local v0, count:I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 2403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2405
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 552
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 553
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 554
    const/4 v1, 0x1

    .line 556
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 975
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 978
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 979
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    if-eqz v7, :cond_3

    .line 980
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 981
    .local v5, scrollY:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v6

    .line 982
    .local v6, width:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    .line 983
    .local v2, height:I
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v7}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 984
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 987
    .local v3, restoreCount:I
    neg-int v7, v6

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 988
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    mul-int/lit8 v8, v6, 0x2

    invoke-virtual {v7, v8, v2}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->setSize(II)V

    .line 989
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v7, p1}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 992
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 994
    .end local v3           #restoreCount:I
    :cond_1
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v7}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 995
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 996
    .restart local v3       #restoreCount:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    move v0, v7

    .line 999
    .local v0, childHeight:I
    :goto_0
    neg-int v7, v6

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    int-to-float v8, v0

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1000
    const/high16 v7, 0x4334

    int-to-float v8, v6

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1001
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    mul-int/lit8 v8, v6, 0x2

    invoke-virtual {v7, v8, v2}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->setSize(II)V

    .line 1002
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v7, p1}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1003
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 1005
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1041
    .end local v0           #childHeight:I
    .end local v2           #height:I
    .end local v3           #restoreCount:I
    .end local v5           #scrollY:I
    .end local v6           #width:I
    :cond_3
    :goto_1
    return-void

    .restart local v2       #height:I
    .restart local v3       #restoreCount:I
    .restart local v5       #scrollY:I
    .restart local v6       #width:I
    :cond_4
    move v0, v2

    .line 996
    goto :goto_0

    .line 1009
    .end local v2           #height:I
    .end local v3           #restoreCount:I
    .end local v5           #scrollY:I
    .end local v6           #width:I
    :cond_5
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    if-eqz v7, :cond_3

    .line 1010
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1011
    .local v4, scrollX:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v6

    .line 1012
    .restart local v6       #width:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    .line 1013
    .restart local v2       #height:I
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v7}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1014
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1017
    .restart local v3       #restoreCount:I
    neg-int v7, v6

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1018
    const/high16 v7, -0x3d4c

    int-to-float v8, v6

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1019
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    mul-int/lit8 v8, v6, 0x2

    invoke-virtual {v7, v8, v2}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->setSize(II)V

    .line 1020
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v7, p1}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1021
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 1023
    :cond_6
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1025
    .end local v3           #restoreCount:I
    :cond_7
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v7}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1026
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1027
    .restart local v3       #restoreCount:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_9

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    move v1, v7

    .line 1030
    .local v1, childWidth:I
    :goto_2
    neg-int v7, v6

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v1

    int-to-float v7, v7

    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1031
    const/high16 v7, 0x42b4

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1032
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    mul-int/lit8 v8, v6, 0x2

    invoke-virtual {v7, v8, v2}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->setSize(II)V

    .line 1033
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v7, p1}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1034
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 1036
    :cond_8
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    .end local v1           #childWidth:I
    :cond_9
    move v1, v6

    .line 1027
    goto :goto_2
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/16 v8, 0x21

    const/16 v7, 0x11

    const/4 v6, 0x0

    const/16 v5, 0x82

    const/16 v4, 0x42

    .line 568
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 570
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_8

    .line 571
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 572
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 573
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 574
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 575
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 577
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 645
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v3, v6

    .line 577
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 580
    goto :goto_0

    .line 583
    :cond_3
    const/4 v1, 0x0

    .line 584
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 585
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 606
    goto :goto_0

    .line 587
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 588
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 590
    :cond_5
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 592
    goto :goto_1

    .line 594
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 595
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 597
    :cond_6
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 599
    goto :goto_1

    .line 601
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v7

    :goto_2
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2

    .line 609
    .end local v1           #handled:Z
    :cond_8
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_c

    .line 610
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 611
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 612
    .restart local v0       #currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_9

    const/4 v0, 0x0

    .line 613
    :cond_9
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 615
    .restart local v2       #nextFocused:Landroid/view/View;
    if-eqz v2, :cond_a

    if-eq v2, p0, :cond_a

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_0

    :cond_a
    move v3, v6

    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_b
    move v3, v6

    .line 619
    goto :goto_0

    .line 622
    :cond_c
    const/4 v1, 0x0

    .line 623
    .restart local v1       #handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_d

    .line 624
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_d
    :goto_3
    move v3, v1

    .line 645
    goto :goto_0

    .line 626
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_e

    .line 627
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3

    .line 629
    :cond_e
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 631
    goto :goto_3

    .line 633
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_f

    .line 634
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3

    .line 636
    :cond_f
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 638
    goto :goto_3

    .line 640
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v8

    :goto_4
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->pageScroll(I)Z

    goto :goto_3

    :cond_10
    move v3, v5

    goto :goto_4

    .line 585
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch

    .line 624
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 20
    .parameter "velocity"

    .prologue
    .line 2262
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 2263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    move v4, v0

    if-nez v4, :cond_7

    .line 2264
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    move v5, v0

    sub-int v19, v4, v5

    .line 2265
    .local v19, width:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 2267
    .local v18, right:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move v4, v0

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move v4, v0

    if-nez v4, :cond_4

    .line 2268
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    move v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sub-int v10, v18, v19

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v7, p1

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2273
    :goto_0
    if-lez p1, :cond_5

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 2275
    .local v16, movingRight:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v17

    .line 2278
    .local v17, newFocused:Landroid/view/View;
    if-nez v17, :cond_1

    .line 2279
    move-object/from16 v17, p0

    .line 2282
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    if-eq v0, v1, :cond_2

    if-eqz v16, :cond_6

    const/16 v4, 0x42

    :goto_2
    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2284
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 2285
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 2313
    .end local v16           #movingRight:Z
    .end local v18           #right:I
    .end local v19           #width:I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/Scroller;->getDuration()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars(I)Z

    .line 2314
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 2316
    .end local v17           #newFocused:Landroid/view/View;
    :cond_3
    return-void

    .line 2270
    .restart local v18       #right:I
    .restart local v19       #width:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    move v6, v0

    const/4 v8, 0x0

    const/high16 v9, -0x8000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v7, p1

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 2273
    :cond_5
    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_1

    .line 2282
    .restart local v16       #movingRight:Z
    .restart local v17       #newFocused:Landroid/view/View;
    :cond_6
    const/16 v4, 0x11

    goto :goto_2

    .line 2288
    .end local v16           #movingRight:Z
    .end local v17           #newFocused:Landroid/view/View;
    .end local v18           #right:I
    .end local v19           #width:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    move v5, v0

    sub-int v14, v4, v5

    .line 2289
    .local v14, height:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 2291
    .local v13, bottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move v4, v0

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move v4, v0

    if-nez v4, :cond_a

    .line 2292
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    move v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sub-int v12, v13, v14

    move/from16 v8, p1

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2298
    :goto_4
    if-lez p1, :cond_b

    const/4 v4, 0x1

    move v15, v4

    .line 2300
    .local v15, movingDown:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v15

    move v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v17

    .line 2302
    .restart local v17       #newFocused:Landroid/view/View;
    if-nez v17, :cond_9

    .line 2303
    move-object/from16 v17, p0

    .line 2306
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    if-eq v0, v1, :cond_2

    if-eqz v15, :cond_c

    const/16 v4, 0x82

    :goto_6
    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2308
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 2309
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    goto/16 :goto_3

    .line 2294
    .end local v15           #movingDown:Z
    .end local v17           #newFocused:Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    move v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x8000

    const v12, 0x7fffffff

    move/from16 v8, p1

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_4

    .line 2298
    :cond_b
    const/4 v4, 0x0

    move v15, v4

    goto :goto_5

    .line 2306
    .restart local v15       #movingDown:Z
    .restart local v17       #newFocused:Landroid/view/View;
    :cond_c
    const/16 v4, 0x21

    goto :goto_6
.end method

.method public fullScroll(I)Z
    .locals 9
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1513
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_2

    .line 1514
    const/16 v6, 0x42

    if-ne p1, v6, :cond_1

    move v3, v8

    .line 1515
    .local v3, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v5

    .line 1517
    .local v5, width:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1518
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v6, Landroid/graphics/Rect;->right:I

    .line 1520
    if-eqz v3, :cond_0

    .line 1521
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1522
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1523
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1524
    .local v4, view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1525
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1529
    .end local v0           #count:I
    .end local v4           #view:Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v6, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v6

    .line 1547
    .end local v3           #right:Z
    .end local v5           #width:I
    :goto_1
    return v6

    :cond_1
    move v3, v7

    .line 1514
    goto :goto_0

    .line 1532
    :cond_2
    const/16 v6, 0x82

    if-ne p1, v6, :cond_4

    move v1, v8

    .line 1533
    .local v1, down:Z
    :goto_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    .line 1535
    .local v2, height:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1536
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 1538
    if-eqz v1, :cond_3

    .line 1539
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1540
    .restart local v0       #count:I
    if-lez v0, :cond_3

    .line 1541
    sub-int v6, v0, v8

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1542
    .restart local v4       #view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1543
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1547
    .end local v0           #count:I
    .end local v4           #view:Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v6, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v6

    goto :goto_1

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_4
    move v1, v7

    .line 1532
    goto :goto_2
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 313
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getBottomFadingEdgeStrength()F

    move-result v3

    .line 326
    :goto_0
    return v3

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 316
    const/4 v3, 0x0

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 320
    .local v1, length:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 321
    .local v0, bottomEdge:I
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    add-int v2, v3, v4

    .line 322
    .local v2, span:I
    if-ge v2, v1, :cond_3

    .line 323
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .end local v2           #span:I
    :cond_2
    move v4, v5

    .line 321
    goto :goto_1

    .line 326
    .restart local v2       #span:I
    :cond_3
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 331
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getLeftFadingEdgeStrength()F

    move-result v2

    .line 343
    :goto_0
    return v2

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 334
    const/4 v2, 0x0

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 338
    .local v0, length:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v3, :cond_2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    sub-int v1, v2, v3

    .line 339
    .local v1, span:I
    if-ge v1, v0, :cond_3

    .line 340
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 338
    .end local v1           #span:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 343
    .restart local v1       #span:I
    :cond_3
    const/high16 v2, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    const/high16 v2, 0x3f00

    .line 369
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v0, :cond_0

    .line 370
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mRight:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 372
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBottom:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 348
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getRightFadingEdgeStrength()F

    move-result v3

    .line 361
    :goto_0
    return v3

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 351
    const/4 v3, 0x0

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 355
    .local v0, length:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 356
    .local v1, rightEdge:I
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    add-int v2, v3, v4

    .line 357
    .local v2, span:I
    if-ge v2, v0, :cond_3

    .line 358
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .end local v2           #span:I
    :cond_2
    move v4, v5

    .line 356
    goto :goto_1

    .line 361
    .restart local v2       #span:I
    :cond_3
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 296
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getTopFadingEdgeStrength()F

    move-result v2

    .line 308
    :goto_0
    return v2

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 299
    const/4 v2, 0x0

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 303
    .local v0, length:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v3, :cond_2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    sub-int v1, v2, v3

    .line 304
    .local v1, span:I
    if-ge v1, v0, :cond_3

    .line 305
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 303
    .end local v1           #span:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 308
    .restart local v1       #span:I
    :cond_3
    const/high16 v2, 0x3f80

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1823
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1828
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_0

    .line 1829
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1832
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1840
    .local v1, childWidthMeasureSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1841
    return-void

    .line 1834
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    :cond_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1837
    .restart local v1       #childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightMeasureSpec:I
    goto :goto_0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    const/4 v5, 0x0

    .line 1846
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1850
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_0

    .line 1851
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1854
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1864
    .local v1, childWidthMeasureSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1865
    return-void

    .line 1857
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    :cond_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1860
    .restart local v1       #childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightMeasureSpec:I
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 662
    .local v0, action:I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    if-eqz v6, :cond_0

    move v6, v8

    .line 731
    :goto_0
    return v6

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    if-nez v6, :cond_1

    .line 667
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    move v6, v7

    .line 668
    goto :goto_0

    .line 671
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 672
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 674
    .local v4, y:F
    packed-switch v0, :pswitch_data_0

    .line 731
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 685
    :pswitch_0
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v3, v6

    .line 690
    .local v3, xDiff:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v5, v6

    .line 692
    .local v5, yDiff:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_3

    move v1, v3

    .line 693
    .local v1, diff:I
    :goto_2
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTouchSlop:I

    if-le v1, v6, :cond_2

    .line 694
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    .line 695
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .end local v1           #diff:I
    :cond_3
    move v1, v5

    .line 692
    goto :goto_2

    .line 701
    .end local v3           #xDiff:I
    .end local v5           #yDiff:I
    :pswitch_1
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMotionX:F

    .line 702
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMotionY:F

    .line 709
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v8

    :goto_3
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    .line 712
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

    invoke-virtual {v6}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->cancel()V

    .line 713
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    if-eqz v6, :cond_2

    .line 714
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v6}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->finish()V

    .line 715
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v6}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->finish()V

    goto :goto_1

    :cond_4
    move v6, v7

    .line 709
    goto :goto_3

    .line 723
    :pswitch_2
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2200
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    .line 2203
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2206
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2209
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollTo(II)V

    .line 2210
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x4000

    .line 492
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 494
    iget-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    if-nez v9, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    .line 499
    .local v6, orientation:I
    if-nez v6, :cond_3

    .line 500
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 501
    .local v8, widthMode:I
    if-eqz v8, :cond_0

    .line 511
    .end local v8           #widthMode:I
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 512
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 517
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 518
    .local v0, child:Landroid/view/View;
    if-nez v6, :cond_4

    .line 519
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getMeasuredWidth()I

    move-result v7

    .line 520
    .local v7, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ge v9, v7, :cond_0

    .line 521
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 523
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 525
    .local v1, childHeightMeasureSpec:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v9

    .line 526
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int/2addr v7, v9

    .line 527
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 529
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 505
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v4           #heightMode:I
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #width:I
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 506
    .restart local v4       #heightMode:I
    if-nez v4, :cond_2

    goto :goto_0

    .line 532
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getMeasuredHeight()I

    move-result v3

    .line 533
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v3, :cond_0

    .line 534
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 536
    .restart local v5       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v9, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 538
    .restart local v2       #childWidthMeasureSpec:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    sub-int/2addr v3, v9

    .line 539
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v9

    .line 540
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 543
    .restart local v1       #childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2152
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v1, :cond_2

    .line 2153
    if-ne p1, v4, :cond_1

    .line 2154
    const/16 p1, 0x42

    .line 2166
    :cond_0
    :goto_0
    if-nez p2, :cond_4

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 2171
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_5

    move v1, v3

    .line 2179
    :goto_2
    return v1

    .line 2155
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_1
    if-ne p1, v2, :cond_0

    .line 2156
    const/16 p1, 0x11

    goto :goto_0

    .line 2159
    :cond_2
    if-ne p1, v4, :cond_3

    .line 2160
    const/16 p1, 0x82

    goto :goto_0

    .line 2161
    :cond_3
    if-ne p1, v2, :cond_0

    .line 2162
    const/16 p1, 0x21

    goto :goto_0

    .line 2166
    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 2175
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_5
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    .line 2176
    goto :goto_2

    .line 2179
    :cond_6
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2216
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2217
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 2240
    :cond_0
    :goto_0
    return-void

    .line 2223
    :cond_1
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v3, :cond_2

    .line 2224
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mRight:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 2226
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2227
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2228
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2229
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 2230
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollX(I)V

    goto :goto_0

    .line 2233
    .end local v1           #maxJump:I
    .end local v2           #scrollDelta:I
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p4}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2234
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2235
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2236
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 2237
    .restart local v2       #scrollDelta:I
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 737
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    if-eqz v18, :cond_0

    .line 740
    const/16 v18, 0x0

    .line 955
    :goto_0
    return v18

    .line 743
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 744
    const/16 v18, 0x0

    goto :goto_0

    .line 747
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 748
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 750
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 752
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v18, v0

    if-eqz v18, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 757
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->start(F)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->clear()V

    .line 770
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 771
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 772
    .local v16, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    .line 774
    .local v17, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    move v10, v0

    .line 776
    .local v10, orientation:I
    packed-switch v3, :pswitch_data_0

    .line 955
    :cond_5
    :goto_1
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 778
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->cancel()V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->finish()V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->finish()V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_6

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 793
    :cond_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    .line 794
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    goto :goto_1

    .line 798
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    move/from16 v18, v0

    sub-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move v7, v0

    .line 799
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    move/from16 v18, v0

    sub-float v18, v18, v17

    move/from16 v0, v18

    float-to-int v0, v0

    move v8, v0

    .line 800
    .local v8, deltaY:I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionX:F

    .line 801
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    .line 803
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move v11, v0

    .line 805
    .local v11, prevExcessScroll:I
    const/4 v6, 0x0

    .line 806
    .local v6, delta:I
    const/4 v14, 0x0

    .line 807
    .local v14, scroll:I
    if-nez v10, :cond_e

    .line 808
    move v6, v7

    .line 809
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    move v14, v0

    .line 817
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v18, v0

    mul-int v18, v18, v6

    if-lez v18, :cond_7

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    .line 820
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v18, v0

    sub-int v18, v18, v6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 821
    const/4 v6, 0x0

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 829
    :cond_7
    :goto_3
    if-gez v6, :cond_14

    .line 830
    if-lez v14, :cond_13

    .line 831
    add-int v18, v14, v6

    if-gez v18, :cond_11

    .line 832
    add-int v18, v14, v6

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 833
    if-nez v10, :cond_10

    .line 834
    move v0, v14

    neg-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 881
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 882
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 884
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 885
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollMode:I

    .line 887
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v11

    if-eq v0, v1, :cond_c

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars()Z

    .line 892
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->contentFits()Z

    move-result v18

    if-nez v18, :cond_5

    .line 893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b

    .line 894
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMotionY:F

    move/from16 v18, v0

    sub-float v18, v17, v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v13, v0

    .line 895
    .local v13, rawDeltaY:I
    if-lez v13, :cond_1a

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->blockDecay()V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onPull(ZF)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v18

    if-nez v18, :cond_d

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    .line 924
    .end local v13           #rawDeltaY:I
    :cond_d
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    goto/16 :goto_1

    .line 811
    :cond_e
    move v6, v8

    .line 812
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    move v14, v0

    goto/16 :goto_2

    .line 824
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v18, v0

    sub-int v6, v6, v18

    .line 825
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    goto/16 :goto_3

    .line 836
    :cond_10
    const/16 v18, 0x0

    move v0, v14

    neg-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 839
    :cond_11
    if-nez v10, :cond_12

    .line 840
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 842
    :cond_12
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 846
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v18, v0

    sub-int v18, v18, v6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    goto/16 :goto_4

    .line 849
    :cond_14
    if-lez v6, :cond_8

    .line 850
    const/4 v5, 0x0

    .line 851
    .local v5, bottomEdge:I
    const/4 v4, 0x0

    .line 852
    .local v4, availableToScroll:I
    if-nez v10, :cond_15

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 854
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    sub-int v18, v18, v14

    sub-int v4, v18, v5

    .line 860
    :goto_6
    if-lez v4, :cond_19

    .line 861
    if-le v4, v6, :cond_17

    .line 862
    if-nez v10, :cond_16

    .line 863
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 856
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 857
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v18

    sub-int v18, v18, v14

    sub-int v4, v18, v5

    goto :goto_6

    .line 865
    :cond_16
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 868
    :cond_17
    sub-int v18, v4, v6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 869
    if-nez v10, :cond_18

    .line 870
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 872
    :cond_18
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto/16 :goto_4

    .line 876
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v18, v0

    sub-int v18, v18, v6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    goto/16 :goto_4

    .line 901
    .end local v4           #availableToScroll:I
    .end local v5           #bottomEdge:I
    .restart local v13       #rawDeltaY:I
    :cond_1a
    if-gez v13, :cond_d

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->blockDecay()V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onPull(ZF)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v18

    if-nez v18, :cond_d

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    goto/16 :goto_5

    .line 909
    .end local v13           #rawDeltaY:I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMotionX:F

    move/from16 v18, v0

    sub-float v18, v16, v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v12, v0

    .line 910
    .local v12, rawDeltaX:I
    if-lez v12, :cond_1c

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->blockDecay()V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onPull(ZF)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v18

    if-nez v18, :cond_d

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    goto/16 :goto_5

    .line 916
    :cond_1c
    if-gez v12, :cond_d

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->blockDecay()V

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onPull(ZF)V

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v18

    if-nez v18, :cond_d

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    goto/16 :goto_5

    .line 929
    .end local v6           #delta:I
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    .end local v11           #prevExcessScroll:I
    .end local v12           #rawDeltaX:I
    .end local v14           #scroll:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    .line 930
    .local v15, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 932
    const/4 v9, 0x0

    .line 933
    .local v9, initialVelocity:I
    if-nez v10, :cond_1f

    .line 934
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v9, v0

    .line 939
    :goto_7
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_1d

    .line 940
    move v0, v9

    neg-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->fling(I)V

    .line 943
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1e

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 945
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 949
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    goto/16 :goto_1

    .line 936
    :cond_1f
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v9, v0

    goto :goto_7

    .line 776
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1453
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mOrientation:I

    if-nez v6, :cond_3

    .line 1454
    const/16 v6, 0x42

    if-ne p1, v6, :cond_1

    move v3, v9

    .line 1455
    .local v3, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v5

    .line 1457
    .local v5, width:I
    if-eqz v3, :cond_2

    .line 1458
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1459
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1460
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1461
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1462
    .local v4, view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 1463
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1472
    .end local v0           #count:I
    .end local v4           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1474
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v6, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v6

    .line 1497
    .end local v3           #right:Z
    .end local v5           #width:I
    :goto_2
    return v6

    :cond_1
    move v3, v8

    .line 1454
    goto :goto_0

    .line 1467
    .restart local v3       #right:Z
    .restart local v5       #width:I
    :cond_2
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollX()I

    move-result v7

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1468
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-gez v6, :cond_0

    .line 1469
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v8, v6, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 1477
    .end local v3           #right:Z
    .end local v5           #width:I
    :cond_3
    const/16 v6, 0x82

    if-ne p1, v6, :cond_5

    move v1, v9

    .line 1478
    .local v1, down:Z
    :goto_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    .line 1480
    .local v2, height:I
    if-eqz v1, :cond_6

    .line 1481
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v7

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1482
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1483
    .restart local v0       #count:I
    if-lez v0, :cond_4

    .line 1484
    sub-int v6, v0, v9

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1485
    .restart local v4       #view:Landroid/view/View;
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 1486
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1495
    .end local v0           #count:I
    .end local v4           #view:Landroid/view/View;
    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1497
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v6, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v6

    goto :goto_2

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_5
    move v1, v8

    .line 1477
    goto :goto_3

    .line 1490
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_6
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1491
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_4

    .line 1492
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v8, v6, Landroid/graphics/Rect;->top:I

    goto :goto_4
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 2127
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 2128
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 2129
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2135
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2136
    return-void

    .line 2132
    :cond_1
    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2186
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2189
    invoke-direct {p0, p2, p3}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    .line 2195
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2196
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2325
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2326
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2327
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result p1

    .line 2328
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result p2

    .line 2329
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 2330
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2333
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 470
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    .line 471
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->requestLayout()V

    .line 473
    :cond_0
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1768
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1769
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1770
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1771
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars(I)Z

    .line 1772
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 1779
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastScroll:J

    .line 1780
    return-void

    .line 1774
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1775
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1777
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method
