.class public Lcom/android/settings/VibrationFeedbackPreference;
.super Landroid/preference/SeekBarPreference;
.source "VibrationFeedbackPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mIntensityValue:[I

.field private mOldSlideLevel:I

.field private mOldVibrationIntensity:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVibrationIntensity:I

.field mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    .line 58
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setDialogLayoutResource(I)V

    .line 59
    return-void

    .line 44
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x28t 0x23t 0x0t 0x0t
        0xact 0x26t 0x0t 0x0t
    .end array-data
.end method

.method private convertIntensityToLevel(I)I
    .locals 5
    .parameter "mIntensity"

    .prologue
    const-string v4, "]"

    .line 89
    const/4 v0, 0x0

    .local v0, mLevel:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 97
    :goto_1
    return v0

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    const-string v1, "VibrationFeedbackPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertIntensityToLevel : mIntensity["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIntensityValue.length["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private convertLevelToIntensity(I)I
    .locals 5
    .parameter "mLevel"

    .prologue
    const-string v2, "mIntensityValue["

    const-string v4, "VibrationFeedbackPreference"

    const-string v3, "]"

    .line 101
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 103
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertLevelToIntensity : mLevel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIntensityValue["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    aget v0, v0, p1

    .line 107
    :goto_0
    return v0

    .line 106
    :cond_0
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertLevelToIntensity : mIntensityValue.length["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIntensityValue["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v2, v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v1, v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private setVibrationIntensity(I)V
    .locals 5
    .parameter "mVibrationIntensityLevel"

    .prologue
    const-string v4, "]"

    const-string v3, "VibrationFeedbackPreference"

    .line 145
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVibrationIntensity : level["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/VibrationFeedbackPreference;->convertLevelToIntensity(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    .line 148
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVibrationIntensity : mVibrationIntensity["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVibrationIntensity : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v5, 0x5

    const-string v6, "]"

    const-string v4, "VibrationFeedbackPreference"

    .line 63
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    .line 64
    invoke-static {p1}, Lcom/android/settings/VibrationFeedbackPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 67
    const-string v1, "VibrationFeedbackPreference"

    const-string v1, "onBindDialogView : mSeekBar.setMax(MAXIMUM_VIBRATION_INTENSITY[5])"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldVibrationIntensity:I

    .line 73
    const-string v1, "VibrationFeedbackPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindDialogView : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldVibrationIntensity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldVibrationIntensity:I

    invoke-direct {p0, v1}, Lcom/android/settings/VibrationFeedbackPreference;->convertIntensityToLevel(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    const-string v1, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : mOldSlideLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 83
    const-string v1, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : mSeekBar.setProgress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 85
    return-void

    .line 76
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 77
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldVibrationIntensity:I

    .line 78
    iput v5, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    .line 79
    const-string v1, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : SettingNotFoundException : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const-string v4, "]"

    const-string v3, "VibrationFeedbackPreference"

    .line 129
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onDialogClosed(Z)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogClosed : positiveResult = true, progress["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->convertLevelToIntensity(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    .line 134
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogClosed : mVibrationIntensity["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogClosed : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setVibrationIntensity(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 113
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged : setVibrationIntensity(progress["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, p2}, Lcom/android/settings/VibrationFeedbackPreference;->setVibrationIntensity(I)V

    .line 115
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 117
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 121
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 125
    return-void
.end method
