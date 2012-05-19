.class public Lcom/android/settings/TextToSpeechSettings;
.super Landroid/preference/PreferenceActivity;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDefaultCountry:Ljava/lang/String;

.field private mDefaultEng:Ljava/lang/String;

.field private mDefaultLanguage:Ljava/lang/String;

.field private mDefaultLocPref:Landroid/preference/ListPreference;

.field private mDefaultLocVariant:Ljava/lang/String;

.field private mDefaultRate:I

.field private mDefaultRatePref:Landroid/preference/ListPreference;

.field private mDefaultSynthPref:Landroid/preference/ListPreference;

.field private mDemoStringIndex:I

.field private mDemoStrings:[Ljava/lang/String;

.field private mEnableDemo:Z

.field private mInstallData:Landroid/preference/Preference;

.field private mPlayExample:Landroid/preference/Preference;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsStarted:Z

.field private mUseDefaultPref:Landroid/preference/CheckBoxPreference;

.field private mVoicesMissing:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 93
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 94
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    .line 96
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    .line 97
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 98
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    .line 99
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    .line 100
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    .line 104
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    .line 109
    iput v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDemoStringIndex:I

    .line 111
    iput-boolean v2, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    .line 114
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 115
    iput-boolean v2, p0, Lcom/android/settings/TextToSpeechSettings;->mTtsStarted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TextToSpeechSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->loadEngines()V

    return-void
.end method

.method private addEngineSpecificSettings()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 192
    const-string v10, "tts_engines_section"

    invoke-virtual {p0, v10}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 193
    .local v2, enginesCategory:Landroid/preference/PreferenceGroup;
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.START_TTS_ENGINE"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v4, intent:Landroid/content/Intent;
    new-array v1, v14, [Landroid/content/pm/ResolveInfo;

    .line 195
    .local v1, enginesArray:[Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 196
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #enginesArray:[Landroid/content/pm/ResolveInfo;
    check-cast v1, [Landroid/content/pm/ResolveInfo;

    .line 197
    .restart local v1       #enginesArray:[Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v1

    if-ge v3, v10, :cond_2

    .line 198
    const-string v8, ""

    .line 199
    .local v8, prefKey:Ljava/lang/String;
    aget-object v10, v1, v3

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 200
    .local v5, pluginPackageName:Ljava/lang/String;
    aget-object v10, v1, v3

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.svox.pico"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 201
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, chkbxPref:Landroid/preference/CheckBoxPreference;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ENABLED_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 203
    invoke-virtual {v0, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 204
    aget-object v10, v1, v3

    invoke-virtual {v10, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    .end local v0           #chkbxPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/settings/TextToSpeechSettings;->pluginHasSettings(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 208
    new-instance v7, Landroid/preference/Preference;

    invoke-direct {v7, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 209
    .local v7, pref:Landroid/preference/Preference;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SETTINGS_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 210
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 211
    aget-object v10, v1, v3

    invoke-virtual {v10, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090442

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aget-object v13, v1, v3

    invoke-virtual {v13, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, settingsLabel:Ljava/lang/CharSequence;
    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v10, Lcom/android/settings/TextToSpeechSettings$1;

    invoke-direct {v10, p0, v5}, Lcom/android/settings/TextToSpeechSettings$1;-><init>(Lcom/android/settings/TextToSpeechSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 224
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 197
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v9           #settingsLabel:Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 227
    .end local v5           #pluginPackageName:Ljava/lang/String;
    .end local v8           #prefKey:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private checkVoiceData()V
    .locals 7

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 312
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 316
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 317
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 318
    .local v0, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const/16 v5, 0x7b9

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 316
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v0           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    :cond_1
    return-void
.end method

.method private getSampleText()V
    .locals 7

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 352
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 355
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v5, "language"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v5, "country"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v5, "variant"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 361
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 362
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 363
    .local v0, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 364
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const/16 v5, 0x7bf

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 361
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v0           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    :cond_1
    return-void
.end method

.method private hasLangPref()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 751
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "tts_default_lang"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 752
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_1

    :cond_0
    move v4, v5

    .line 763
    :goto_0
    return v4

    .line 755
    :cond_1
    const-string v4, "tts_default_country"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, country:Ljava/lang/String;
    if-nez v0, :cond_2

    move v4, v5

    .line 757
    goto :goto_0

    .line 759
    :cond_2
    const-string v4, "tts_default_variant"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 760
    .local v3, variant:Ljava/lang/String;
    if-nez v3, :cond_3

    move v4, v5

    .line 761
    goto :goto_0

    :cond_3
    move v4, v6

    .line 763
    goto :goto_0
.end method

.method private initClickers()V
    .locals 1

    .prologue
    .line 241
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 242
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 244
    const-string v0, "tts_install_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    .line 245
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 246
    return-void
.end method

.method private initDefaultLang()V
    .locals 4

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->hasLangPref()Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->isCurrentLocSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 723
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->useCurrentLocAsDefault()V

    .line 732
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 733
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tts_default_lang"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 734
    const-string v1, "tts_default_country"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 735
    const-string v1, "tts_default_variant"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 738
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDemoStringIndex:I

    .line 740
    iget v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDemoStringIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 741
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    iget v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDemoStringIndex:I

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 743
    :cond_1
    return-void

    .line 726
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->useSupportedLocAsDefault()V

    goto :goto_0
.end method

.method private initDefaultSettings()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const-string v8, "tts_use_defaults"

    const-string v7, "tts_default_synth"

    const-string v6, "tts_default_rate"

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 256
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 257
    .local v3, useDefault:I
    const-string v4, "toggle_use_default_tts_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    .line 259
    :try_start_0
    const-string v4, "tts_use_defaults"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 265
    :goto_0
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    if-ne v3, v5, :cond_1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 266
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    const-string v4, "tts_default_synth"

    invoke-virtual {p0, v7}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    .line 276
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->loadEngines()V

    .line 277
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 278
    const-string v4, "tts_default_synth"

    invoke-static {v2, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, engine:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 281
    const-string v1, "com.svox.pico"

    .line 282
    const-string v4, "tts_default_synth"

    invoke-static {v2, v7, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 284
    :cond_0
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    .line 287
    const-string v4, "tts_default_rate"

    invoke-virtual {p0, v6}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 289
    :try_start_1
    const-string v4, "tts_default_rate"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    :goto_2
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 296
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 300
    const-string v4, "tts_default_lang"

    invoke-virtual {p0, v4}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    .line 301
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->initDefaultLang()V

    .line 302
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 303
    return-void

    .line 260
    .end local v1           #engine:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 262
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v3, 0x0

    .line 263
    const-string v4, "tts_use_defaults"

    invoke-static {v2, v8, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 265
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 290
    .restart local v1       #engine:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 292
    .restart local v0       #e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v4, 0x64

    iput v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    .line 293
    const-string v4, "tts_default_rate"

    iget v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method private installVoiceData()V
    .locals 7

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 332
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 335
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 337
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 338
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 339
    .local v0, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 340
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v2}, Lcom/android/settings/TextToSpeechSettings;->startActivity(Landroid/content/Intent;)V

    .line 337
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v0           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    :cond_1
    return-void
.end method

.method private isCurrentLocSupported()Z
    .locals 3

    .prologue
    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, currentLocID:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadEngines()V
    .locals 19

    .prologue
    .line 802
    const-string v17, "tts_default_synth"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    .line 806
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.intent.action.START_TTS_ENGINE"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v8, intent:Landroid/content/Intent;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/content/pm/ResolveInfo;

    move-object v4, v0

    .line 808
    .local v4, enginesArray:[Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 809
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move-object v0, v10

    move-object v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #enginesArray:[Landroid/content/pm/ResolveInfo;
    check-cast v4, [Landroid/content/pm/ResolveInfo;

    .line 810
    .restart local v4       #enginesArray:[Landroid/content/pm/ResolveInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v5, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v15, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v3, ""

    .line 813
    .local v3, enabledEngines:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object v0, v4

    array-length v0, v0

    move/from16 v17, v0

    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 814
    aget-object v17, v4, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v9, v0

    .line 815
    .local v9, pluginPackageName:Ljava/lang/String;
    const-string v17, "com.svox.pico"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 816
    aget-object v17, v4, v7

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 819
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ENABLED_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 821
    .local v11, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 822
    aget-object v17, v4, v7

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 828
    .end local v9           #pluginPackageName:Ljava/lang/String;
    .end local v11           #pref:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 829
    .local v12, resolver:Landroid/content/ContentResolver;
    const-string v17, "tts_enabled_plugins"

    move-object v0, v12

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 831
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v6, v0

    .line 832
    .local v6, entriesArray:[Ljava/lang/CharSequence;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 834
    .local v16, valuesArray:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #enabledEngines:Ljava/lang/String;
    check-cast v3, [Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "tts_default_synth"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 839
    .local v13, selectedEngine:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v14

    .line 840
    .local v14, selectedEngineIndex:I
    const/16 v17, -0x1

    move v0, v14

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const-string v18, "com.svox.pico"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v14

    .line 843
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 844
    return-void
.end method

.method private parseLocaleInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "locale"

    .prologue
    const-string v2, ""

    .line 697
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .local v0, tokenizer:Ljava/util/StringTokenizer;
    const-string v1, ""

    iput-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 699
    const-string v1, ""

    iput-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 700
    const-string v1, ""

    iput-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 701
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 704
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 707
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 708
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 710
    :cond_2
    return-void
.end method

.method private pluginHasSettings(Ljava/lang/String;)Z
    .locals 4
    .parameter "pluginPackageName"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 231
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v0, i:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".EngineSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 234
    const/4 v2, 0x1

    .line 236
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateWidgetState()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 688
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 689
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 693
    return-void
.end method

.method private useCurrentLocAsDefault()V
    .locals 4

    .prologue
    .line 782
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 783
    .local v0, currentLocale:Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 784
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "tts_default_lang"

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 785
    const-string v2, "tts_default_country"

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 786
    const-string v2, "tts_default_variant"

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 787
    return-void
.end method

.method private useSupportedLocAsDefault()V
    .locals 3

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 795
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tts_default_lang"

    const-string v2, "eng"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 796
    const-string v1, "tts_default_country"

    const-string v2, "USA"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 797
    const-string v1, "tts_default_variant"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 798
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 23
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 407
    const/16 v18, 0x7b9

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 408
    if-nez p3, :cond_1

    .line 411
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 412
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 518
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 416
    .restart local p1
    :cond_1
    const-string v18, "availableVoices"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 418
    .local v4, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v18, "unavailableVoices"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 420
    .local v17, unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    if-nez v17, :cond_3

    .line 423
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 424
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    goto :goto_0

    .line 428
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_f

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 430
    new-instance v18, Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 432
    :cond_4
    const-string v18, "tts_default_lang"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/ListPreference;

    .line 434
    .local v16, ttsLanguagePref:Landroid/preference/ListPreference;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v6, v0

    .line 435
    .local v6, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v7, v0

    .line 436
    .local v7, entryValues:[Ljava/lang/CharSequence;
    const/4 v14, -0x1

    .line 437
    .local v14, selectedLanguageIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object v15, v0

    .line 438
    .local v15, selectedLanguagePref:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_5

    .line 439
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 442
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 443
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 446
    :cond_6
    const/4 v8, 0x0

    .end local p1
    .local v8, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 447
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v18, "-"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, langCountryVariant:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 449
    .local v11, loc:Ljava/util/Locale;
    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 450
    new-instance v11, Ljava/util/Locale;

    .end local v11           #loc:Ljava/util/Locale;
    const/16 v18, 0x0

    aget-object v18, v9, v18

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 457
    .restart local v11       #loc:Ljava/util/Locale;
    :cond_7
    :goto_2
    if-eqz v11, :cond_8

    .line 458
    invoke-virtual {v11}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v8

    .line 459
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    aput-object p1, v7, v8

    .line 460
    aget-object v18, v7, v8

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 461
    move v14, v8

    .line 446
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 451
    :cond_9
    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 452
    new-instance v11, Ljava/util/Locale;

    .end local v11           #loc:Ljava/util/Locale;
    const/16 v18, 0x0

    aget-object v18, v9, v18

    const/16 v19, 0x1

    aget-object v19, v9, v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v11       #loc:Ljava/util/Locale;
    goto :goto_2

    .line 453
    :cond_a
    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 454
    new-instance v11, Ljava/util/Locale;

    .end local v11           #loc:Ljava/util/Locale;
    const/16 v18, 0x0

    aget-object v18, v9, v18

    const/16 v19, 0x1

    aget-object v19, v9, v19

    const/16 v20, 0x2

    aget-object v20, v9, v20

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v11       #loc:Ljava/util/Locale;
    goto :goto_2

    .line 465
    .end local v9           #langCountryVariant:[Ljava/lang/String;
    .end local v11           #loc:Ljava/util/Locale;
    :cond_b
    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 466
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 467
    const/16 v18, -0x1

    move v0, v14

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 468
    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 470
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v10

    .line 474
    .local v10, languageResult:I
    if-gez v10, :cond_e

    .line 475
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 476
    .local v5, currentLocale:Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 477
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 478
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v10

    .line 483
    if-gez v10, :cond_d

    .line 484
    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/TextToSpeechSettings;->parseLocaleInfo(Ljava/lang/String;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 488
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 489
    .local v12, resolver:Landroid/content/ContentResolver;
    const-string v18, "tts_default_lang"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 490
    const-string v18, "tts_default_country"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 491
    const-string v18, "tts_default_variant"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 497
    .end local v5           #currentLocale:Ljava/util/Locale;
    .end local v6           #entries:[Ljava/lang/CharSequence;
    .end local v7           #entryValues:[Ljava/lang/CharSequence;
    .end local v8           #i:I
    .end local v10           #languageResult:I
    .end local v12           #resolver:Landroid/content/ContentResolver;
    .end local v14           #selectedLanguageIndex:I
    .end local v15           #selectedLanguagePref:Ljava/lang/String;
    .end local v16           #ttsLanguagePref:Landroid/preference/ListPreference;
    :cond_e
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_10

    .line 498
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    .line 503
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    goto/16 :goto_0

    .line 494
    .restart local p1
    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    goto :goto_3

    .line 500
    .end local p1
    :cond_10
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    goto :goto_4

    .line 504
    .end local v4           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p1
    :cond_11
    const/16 v18, 0x7bf

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 505
    if-nez p2, :cond_13

    .line 506
    const v18, 0x7f09043b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 507
    .local v13, sample:Ljava/lang/String;
    if-eqz p3, :cond_12

    const-string v18, "sampleText"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_12

    .line 508
    const-string v18, "sampleText"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 510
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object v1, v13

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_0

    .line 515
    .end local v13           #sample:Ljava/lang/String;
    :cond_13
    const-string v18, "TextToSpeechSettings"

    const-string v19, "Did not have a sample string for the requested language"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v1, 0x7f040027

    invoke-virtual {p0, v1}, Lcom/android/settings/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 132
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->addEngineSpecificSettings()V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDemoStrings:[Ljava/lang/String;

    .line 136
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/TextToSpeechSettings;->setVolumeControlStream(I)V

    .line 138
    iput-boolean v3, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 139
    iput-boolean v3, p0, Lcom/android/settings/TextToSpeechSettings;->mTtsStarted:Z

    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 142
    .local v0, currentLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 143
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 146
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v1, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 148
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/TextToSpeechSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 149
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 172
    :cond_0
    return-void
.end method

.method public onInit(I)V
    .locals 7
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    const-string v6, "TextToSpeechSettings"

    .line 375
    if-nez p1, :cond_3

    .line 376
    iput-boolean v5, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 377
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 381
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 384
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 387
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->initDefaultSettings()V

    .line 388
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 390
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->initClickers()V

    .line 391
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 392
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->checkVoiceData()V

    .line 393
    iput-boolean v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTtsStarted:Z

    .line 394
    const-string v0, "TextToSpeechSettings"

    const-string v0, "TTS engine for settings screen initialized."

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 400
    return-void

    .line 396
    :cond_3
    const-string v0, "TextToSpeechSettings"

    const-string v0, "TTS engine for settings screen failed to initialize successfully."

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 187
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "Settings"

    const-string v7, "/"

    const-string v8, "TextToSpeechSettings"

    .line 522
    const-string v5, "toggle_use_default_tts_settings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 524
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v11

    .line 525
    .local v4, value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_use_defaults"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 527
    const-string v5, "TextToSpeechSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTS use default settings is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .end local v4           #value:I
    .end local p2
    :cond_0
    :goto_1
    return v11

    .restart local p2
    :cond_1
    move v4, v10

    .line 524
    goto :goto_0

    .line 528
    :cond_2
    const-string v5, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 530
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    .line 532
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_rate"

    iget v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_3

    .line 535
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 537
    :cond_3
    const-string v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTS default rate is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 538
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 539
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "TextToSpeechSettings"

    const-string v5, "could not persist default TTS rate setting"

    invoke-static {v8, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 541
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_4
    const-string v5, "tts_default_lang"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 544
    .local v3, resolver:Landroid/content/ContentResolver;
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-direct {p0, v5}, Lcom/android/settings/TextToSpeechSettings;->parseLocaleInfo(Ljava/lang/String;)V

    .line 545
    const-string v5, "tts_default_lang"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 546
    const-string v5, "tts_default_country"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 547
    const-string v5, "tts_default_variant"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 548
    const-string v5, "TextToSpeechSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTS default lang/country/variant set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_5

    .line 551
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v6, Ljava/util/Locale;

    iget-object v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 553
    :cond_5
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 554
    .local v2, newIndex:I
    const-string v5, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " selected is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v5, -0x1

    if-le v2, v5, :cond_6

    move v5, v2

    :goto_2
    iput v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDemoStringIndex:I

    goto/16 :goto_1

    :cond_6
    move v5, v10

    goto :goto_2

    .line 556
    .end local v2           #newIndex:I
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .restart local p2
    :cond_7
    const-string v5, "tts_default_synth"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 557
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_synth"

    iget-object v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 559
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_8

    .line 560
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setEngineByPackageName(Ljava/lang/String;)I

    .line 561
    iput-boolean v10, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 562
    iput-boolean v10, p0, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    .line 563
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 564
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->checkVoiceData()V

    .line 566
    :cond_8
    const-string v5, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The default synth is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 577
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->getSampleText()V

    move v0, v1

    .line 597
    :goto_0
    return v0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 584
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->installVoiceData()V

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->finish()V

    move v0, v1

    .line 587
    goto :goto_0

    .line 597
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 602
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    .line 648
    :goto_0
    return v3

    .line 606
    :cond_0
    instance-of v3, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 607
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    .line 608
    .local v1, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toggle_use_default_tts_settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 609
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 619
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090440

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/TextToSpeechSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/TextToSpeechSettings$3;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/TextToSpeechSettings$3;-><init>(Lcom/android/settings/TextToSpeechSettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings/TextToSpeechSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/TextToSpeechSettings$2;-><init>(Lcom/android/settings/TextToSpeechSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 640
    .local v2, d:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .end local v2           #d:Landroid/app/AlertDialog;
    :goto_1
    move v3, v8

    .line 645
    goto :goto_0

    .line 643
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->loadEngines()V

    goto :goto_1

    .end local v1           #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_2
    move v3, v7

    .line 648
    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 155
    iget-boolean v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTtsStarted:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->initClickers()V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->checkVoiceData()V

    .line 163
    :cond_0
    return-void
.end method
