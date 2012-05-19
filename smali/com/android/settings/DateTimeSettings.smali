.class public Lcom/android/settings/DateTimeSettings;
.super Landroid/preference/PreferenceActivity;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAutoPref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 476
    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    return-void
.end method

.method private formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 448
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    .line 450
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 451
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 452
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 453
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 455
    if-gez p1, :cond_0

    .line 456
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 457
    neg-int p1, p1

    .line 462
    :goto_0
    div-int/lit8 v1, p1, 0x3c

    .line 463
    .local v1, hours:I
    rem-int/lit8 v2, p1, 0x3c

    .line 465
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 466
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 468
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 470
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 471
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 473
    return-object v0

    .line 459
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 375
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    .line 378
    :goto_0
    return v1

    .line 375
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 378
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, curDateFormat:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 368
    const-string v0, "MM-dd-yyyy"

    .line 370
    :cond_0
    return-object v0
.end method

.method private getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const-string v10, "DateTimeSettings"

    .line 414
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v3, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 417
    .local v0, date:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 418
    .local v5, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 419
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    .line 420
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 421
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 422
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 427
    :cond_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "timezone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 428
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 429
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 438
    :cond_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 444
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p1

    .line 425
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 439
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 440
    .local v4, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "DateTimeSettings"

    const-string v6, "Ill-formatted timezones.xml file"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 433
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_5

    .line 434
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 441
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 442
    .local v2, ioe:Ljava/io/IOException;
    const-string v6, "DateTimeSettings"

    const-string v6, "Unable to read timezones.xml file"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 436
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private getTimeZoneText()Ljava/lang/String;
    .locals 8

    .prologue
    .line 393
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 394
    .local v5, tz:Ljava/util/TimeZone;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 395
    .local v2, daylight:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 399
    .local v0, date:J
    invoke-virtual {v5, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, mTimeZoneDisplayName:Ljava/lang/String;
    const-string v6, "GMT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 404
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeSettings;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 406
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private initUI()V
    .locals 13

    .prologue
    const v12, 0x7f050002

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getAutoState()Z

    move-result v7

    .line 91
    .local v7, autoEnabled:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 92
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 94
    const-string v0, "auto_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    .line 95
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 97
    const-string v0, "24 hour"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 98
    const-string v0, "timezone"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 99
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 100
    const-string v0, "date_format"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, dateFormats:[Ljava/lang/String;
    array-length v0, v9

    new-array v10, v0, [Ljava/lang/String;

    .line 104
    .local v10, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, currentFormat:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 108
    const-string v8, ""

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v7, :cond_1

    move v1, v11

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v7, :cond_2

    move v1, v11

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v7, :cond_3

    move v1, v11

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 131
    return-void

    :cond_1
    move v1, v5

    .line 128
    goto :goto_0

    :cond_2
    move v1, v5

    .line 129
    goto :goto_1

    :cond_3
    move v1, v5

    .line 130
    goto :goto_2
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 356
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    if-eqz p1, :cond_0

    const-string v2, "24"

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 363
    return-void

    .line 360
    :cond_0
    const-string v2, "12"

    goto :goto_0
.end method

.method private setDefaultDateValue()V
    .locals 11

    .prologue
    const/16 v9, 0x7d0

    const/4 v8, 0x1

    const-string v10, "DateTimeSettings"

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 163
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 164
    .local v1, currentTime:J
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 166
    .local v5, year:I
    const-string v6, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v6, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "year = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/16 v6, 0x7f4

    if-gt v5, v6, :cond_0

    if-ge v5, v9, :cond_1

    .line 170
    :cond_0
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 171
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 172
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 173
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 175
    .local v3, when:J
    const-wide/16 v6, 0x3e8

    div-long v6, v3, v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 176
    invoke-static {v3, v4}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 179
    .end local v3           #when:J
    :cond_1
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method private updateTimeAndDateDisplay()V
    .locals 9

    .prologue
    const-string v8, "DateTimeSettings"

    .line 183
    const-string v6, "DateTimeSettings"

    const-string v6, "Nitz Time will be updated"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->setDefaultDateValue()V

    .line 186
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 187
    .local v5, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 188
    .local v4, now:Ljava/util/Date;
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 189
    .local v2, dummyDate:Ljava/util/Date;
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    const-string v6, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeAndDateDisplay : Current Timezone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, dateFormats:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, dateEntries:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 198
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    return-void

    .line 196
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 346
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 86
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 260
    packed-switch p1, :pswitch_data_0

    .line 284
    const/4 v0, 0x0

    .line 288
    .local v0, d:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 262
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 263
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 270
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_0

    .line 273
    .end local v0           #d:Landroid/app/Dialog;
    .end local v6           #calendar:Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 274
    .restart local v6       #calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 280
    .restart local v0       #d:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 207
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 208
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 209
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 210
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 212
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 213
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 216
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 157
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 324
    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 325
    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 339
    :cond_0
    :goto_0
    return v2

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 328
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 329
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 332
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 333
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    goto :goto_0

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 336
    const-class v1, Lcom/android/settings/ZoneList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DateTimeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 7
    .parameter "id"
    .parameter "d"

    .prologue
    .line 293
    packed-switch p1, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 295
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/DatePickerDialog;

    move-object v2, v0

    .line 296
    .local v2, datePicker:Landroid/app/DatePickerDialog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 297
    .local v1, calendar:Ljava/util/Calendar;
    const/16 v4, 0x7d0

    const/16 v5, 0x7f4

    invoke-virtual {v2, v4, v5}, Landroid/app/DatePickerDialog;->twSetRangeOfYear(II)V

    .line 298
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    .line 309
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v2           #datePicker:Landroid/app/DatePickerDialog;
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroid/app/TimePickerDialog;

    move-object v3, v0

    .line 310
    .local v3, timePicker:Landroid/app/TimePickerDialog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 311
    .restart local v1       #calendar:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/android/settings/DateTimeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 149
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 150
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "date_format"

    const-string v6, "auto_time"

    .line 238
    const-string v2, "date_format"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, format:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v7, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    .line 254
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string v2, "auto_time"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 247
    .local v0, autoEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    if-eqz v0, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 251
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v0, :cond_5

    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 247
    goto :goto_1

    :cond_3
    move v3, v5

    .line 250
    goto :goto_2

    :cond_4
    move v3, v5

    .line 251
    goto :goto_3

    :cond_5
    move v3, v5

    .line 252
    goto :goto_4
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 219
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 221
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 222
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 224
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 225
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 227
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 228
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 235
    return-void
.end method
