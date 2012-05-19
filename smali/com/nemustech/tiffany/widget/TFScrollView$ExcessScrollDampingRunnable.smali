.class Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;
.super Ljava/lang/Object;
.source "TFScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExcessScrollDampingRunnable"
.end annotation


# instance fields
.field CMAXt:F

.field Ck:F

.field Cm:F

.field private mFirstRun:Z

.field private mStartTime:J

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

.field w0:F

.field x0:F

.field xdot0:F


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 1046
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->Ck:F

    .line 1064
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->Cm:F

    .line 1066
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->CMAXt:F

    .line 1067
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->xdot0:F

    .line 1068
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->x0:F

    .line 1069
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->w0:F

    return-void
.end method

.method private calcExcessScroll(F)F
    .locals 6
    .parameter "t"

    .prologue
    const/high16 v5, -0x4080

    .line 1103
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->x0:F

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->xdot0:F

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->w0:F

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->x0:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->w0:F

    mul-float/2addr v2, v5

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v1, v2

    .line 1104
    .local v0, ret:F
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$000(Lcom/nemustech/tiffany/widget/TFScrollView;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1105
    mul-float/2addr v0, v5

    .line 1107
    :cond_0
    return v0
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1134
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1115
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->mFirstRun:Z

    if-eqz v3, :cond_1

    .line 1116
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->mFirstRun:Z

    .line 1117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1118
    .local v1, tNow:J
    iget-wide v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->CMAXt:F

    div-float v0, v3, v4

    .line 1120
    .local v0, t:F
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->calcExcessScroll(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 1126
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v3, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->post(Ljava/lang/Runnable;)Z

    .line 1128
    .end local v0           #t:F
    .end local v1           #tNow:J
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$100(Lcom/nemustech/tiffany/widget/TFScrollView;)Z

    .line 1129
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 1130
    return-void
.end method

.method start(F)V
    .locals 4
    .parameter "flingSpeed"

    .prologue
    const/high16 v3, 0x447a

    const/4 v2, 0x0

    .line 1079
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->mFirstRun:Z

    .line 1080
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->cancel()V

    .line 1082
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$002(Lcom/nemustech/tiffany/widget/TFScrollView;I)I

    .line 1084
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->CMAXt:F

    .line 1085
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->Ck:F

    .line 1086
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->x0:F

    .line 1094
    :goto_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->Ck:F

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->Cm:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->w0:F

    .line 1095
    const/high16 v0, 0x4000

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->Cm:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->xdot0:F

    .line 1097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->mStartTime:J

    .line 1099
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->post(Ljava/lang/Runnable;)Z

    .line 1100
    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$002(Lcom/nemustech/tiffany/widget/TFScrollView;I)I

    .line 1089
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->CMAXt:F

    .line 1090
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->Ck:F

    .line 1091
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDampingRunnable;->x0:F

    goto :goto_0
.end method
