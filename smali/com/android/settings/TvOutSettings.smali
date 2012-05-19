.class public Lcom/android/settings/TvOutSettings;
.super Landroid/preference/PreferenceActivity;
.source "TvOutSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mTvStatusMode:Landroid/preference/CheckBoxPreference;

.field private mTvSystemPref:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getTvSystem()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings/TvOutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tv_system"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateDisplaySystem()V
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/settings/TvOutSettings;->getTvSystem()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, value:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/settings/TvOutSettings;->mTvSystemPref:Landroid/preference/ListPreference;

    const-string v2, "NTSC"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/settings/TvOutSettings;->mTvSystemPref:Landroid/preference/ListPreference;

    const-string v2, "PAL"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TvOutSettings;->mTvSystemPref:Landroid/preference/ListPreference;

    const v2, 0x7f090527

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const-string v4, "tv_out"

    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Lcom/android/settings/TvOutSettings;->addPreferencesFromResource(I)V

    .line 74
    const-string v0, "tv_out"

    invoke-virtual {p0, v4}, Lcom/android/settings/TvOutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TvOutSettings;->mTvStatusMode:Landroid/preference/CheckBoxPreference;

    .line 75
    iget-object v0, p0, Lcom/android/settings/TvOutSettings;->mTvStatusMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/TvOutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tv_out"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    const-string v0, "tv_system"

    invoke-virtual {p0, v0}, Lcom/android/settings/TvOutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/TvOutSettings;->mTvSystemPref:Landroid/preference/ListPreference;

    .line 87
    iget-object v0, p0, Lcom/android/settings/TvOutSettings;->mTvSystemPref:Landroid/preference/ListPreference;

    const v1, 0x7f05002f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/TvOutSettings;->mTvSystemPref:Landroid/preference/ListPreference;

    const v1, 0x7f050030

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/TvOutSettings;->mTvSystemPref:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/TvOutSettings;->getTvSystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    return-void

    :cond_0
    move v1, v3

    .line 75
    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/TvOutSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 109
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 115
    iget-object v0, p0, Lcom/android/settings/TvOutSettings;->mTvStatusMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/TvOutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tv_out"

    iget-object v2, p0, Lcom/android/settings/TvOutSettings;->mTvStatusMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    :cond_0
    return v3

    .line 116
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/TvOutSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/TvOutSettings;->updateDisplaySystem()V

    .line 102
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "preferences"
    .parameter "key"

    .prologue
    const-string v4, "tv_system"

    .line 195
    const-string v3, "tv_system"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/TvOutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090528

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, system:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 201
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/TvOutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tv_system"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    invoke-direct {p0}, Lcom/android/settings/TvOutSettings;->updateDisplaySystem()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1           #system:Ljava/lang/String;
    .end local v2           #value:I
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v1       #system:Ljava/lang/String;
    .restart local v2       #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 207
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "TvOut-Settings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
