.class public Lcom/android/settings/wimax/WimaxNetworkPreference;
.super Landroid/preference/Preference;
.source "WimaxNetworkPreference.java"


# static fields
.field private static m_bLog:Z

.field private static m_nCurrentStateDetail:I

.field private static m_nSignalLevel:I


# instance fields
.field private mImageViewSignal:Landroid/widget/ImageView;

.field private m_strNapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    .line 39
    sput v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wimax/WimaxSettings;Ljava/lang/String;)V
    .locals 3
    .parameter "wimaxSettings"
    .parameter "strNapId"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_strNapId:Ljava/lang/String;

    .line 52
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxNetworkPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WimaxNetworkPreference]\tNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/android/settings/wimax/WimaxNetworkPreference;->setWidgetLayoutResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxNetworkPreference;->refresh()V

    .line 57
    return-void
.end method

.method public static setEnableLog(Z)V
    .locals 0
    .parameter "blog"

    .prologue
    .line 123
    sput-boolean p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    .line 124
    return-void
.end method

.method public static updateWimaxSignal(II)V
    .locals 0
    .parameter "nWimaxSignalLevel"
    .parameter "nStateDetail"

    .prologue
    .line 118
    sput p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    .line 119
    sput p1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nCurrentStateDetail:I

    .line 120
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const-string v2, "WimaxNetworkPreference"

    .line 66
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 67
    const v0, 0x7f0b009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 69
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxNetworkPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onBindView]\tIf signal != null, signal level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    sget v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nCurrentStateDetail:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 71
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxNetworkPreference"

    const-string v0, "[onBindView]\textraStateDetail == 6"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 80
    :cond_2
    :goto_0
    return-void

    .line 75
    :cond_3
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_4

    const-string v0, "WimaxNetworkPreference"

    const-string v0, "[onBindView]\textraStateDetail != 6"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "000002"

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "000004"

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0905dc

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wimax/WimaxNetworkPreference;->setTitle(I)V

    .line 62
    return-void

    .line 61
    :cond_1
    const v0, 0x7f0905dd

    goto :goto_0
.end method

.method public updateIdleSignalLevelIcon(I)V
    .locals 3
    .parameter "nStateDetail"

    .prologue
    const-string v2, "WimaxNetworkPreference"

    .line 101
    sput p1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nCurrentStateDetail:I

    .line 102
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxNetworkPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateIdleSignalLevelIcon]  Signal level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 104
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxNetworkPreference"

    const-string v0, "[updateIdleSignalLevelIcon]  if signal != null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    sget v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nCurrentStateDetail:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 106
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_2

    const-string v0, "WimaxNetworkPreference"

    const-string v0, "[updateIdleSignalLevelIcon]  extraStateDetail == 6"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 115
    :cond_3
    :goto_0
    return-void

    .line 110
    :cond_4
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_5

    const-string v0, "WimaxNetworkPreference"

    const-string v0, "[updateIdleSignalLevelIcon]  extraStateDetail != 6"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0
.end method

.method public updateWimaxSignalLevelIcon(I)V
    .locals 3
    .parameter "nSignalLevel"

    .prologue
    const-string v2, "WimaxNetworkPreference"

    .line 84
    sput p1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    .line 85
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxNetworkPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateWimaxSignalLevelIcon]\tSignal level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 87
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxNetworkPreference"

    const-string v0, "[updateWimaxSignalLevelIcon]\tif signal != null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    sget v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nCurrentStateDetail:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 89
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_2

    const-string v0, "WimaxNetworkPreference"

    const-string v0, "[updateWimaxSignalLevelIcon]\textraStateDetail == 6"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 98
    :cond_3
    :goto_0
    return-void

    .line 93
    :cond_4
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_5

    const-string v0, "WimaxNetworkPreference"

    const-string v0, "[updateWimaxSignalLevelIcon]\textraStateDetail != 6"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0
.end method
