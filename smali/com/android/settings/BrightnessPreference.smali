.class public Lcom/android/settings/BrightnessPreference;
.super Landroid/preference/SeekBarPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BrightnessPreference$BrightnessObserver;
    }
.end annotation


# instance fields
.field private mAutomaticAvailable:Z

.field private mBrightnessObserver:Lcom/android/settings/BrightnessPreference$BrightnessObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object p1, p0, Lcom/android/settings/BrightnessPreference;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 69
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 70
    const v0, 0x7f02003f

    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessPreference;->setDialogIcon(I)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    new-instance v0, Lcom/android/settings/BrightnessPreference$BrightnessObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/BrightnessPreference$BrightnessObserver;-><init>(Lcom/android/settings/BrightnessPreference;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Lcom/android/settings/BrightnessPreference$BrightnessObserver;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BrightnessPreference;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessPreference;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 174
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 176
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 185
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-ne p1, v3, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const-string v3, "screen_brightness"

    const-string v4, "BrightnessPreference"

    .line 77
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    .line 78
    const-string v1, "BrightnessPreference"

    const-string v1, "onBindDialogView()"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Lcom/android/settings/BrightnessPreference$BrightnessObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    invoke-static {p1}, Lcom/android/settings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 82
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xdc

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 86
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOldBrightness :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    const/16 v3, 0x1e

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 92
    const v1, 0x7f0b0093

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 93
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v1, :cond_1

    .line 94
    const-string v1, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutomaticAvailable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 99
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOldAutomatic :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :goto_1
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 107
    :goto_3
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    return-void

    .line 87
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v1, 0xfa

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    goto :goto_0

    .line 100
    .end local v0           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 101
    .restart local v0       #snfe:Landroid/provider/Settings$SettingNotFoundException;
    iput v5, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    goto :goto_1

    .end local v0           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v5

    .line 103
    goto :goto_2

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v4, 0x5b

    const/16 v3, 0x3d

    .line 126
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged : isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz p2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 135
    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 137
    if-nez p2, :cond_1

    .line 138
    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 142
    :cond_1
    return-void

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 146
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onDialogClosed(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Lcom/android/settings/BrightnessPreference$BrightnessObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 150
    if-eqz p1, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BRIGHTNESS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v1, :cond_3

    .line 164
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 166
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-nez v1, :cond_1

    .line 167
    :cond_4
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 113
    add-int/lit8 v0, p2, 0x1e

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 115
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 119
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 123
    return-void
.end method
