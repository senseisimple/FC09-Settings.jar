.class public Lcom/android/settings/LocalePicker;
.super Landroid/app/ListActivity;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocalePicker$Loc;
    }
.end annotation


# instance fields
.field mLocales:[Lcom/android/settings/LocalePicker$Loc;

.field mSpecialLocaleCodes:[Ljava/lang/String;

.field mSpecialLocaleNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 55
    return-void
.end method

.method private getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "l"

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 197
    :goto_1
    return-object v2

    .line 191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getContentView()I
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f030025

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .parameter "icicle"

    .prologue
    .line 82
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v14, v0

    .line 85
    .local v14, locale:Ljava/util/Locale;
    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v17

    .line 86
    .local v17, mCountry:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    .line 87
    .local v18, mLanguage:Ljava/lang/String;
    const/4 v15, 0x0

    .line 88
    .local v15, locale_index:I
    const-string v22, "LocalePicker"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Country: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", Language: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getContentView()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->setContentView(I)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f05002d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f05002e

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LocalePicker;->mSpecialLocaleNames:[Ljava/lang/String;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v16

    .line 96
    .local v16, locales:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 98
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    .line 99
    .local v19, origSize:I
    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v20, v0

    .line 100
    .local v20, preprocess:[Lcom/android/settings/LocalePicker$Loc;
    const/4 v8, 0x0

    .line 101
    .local v8, finalSize:I
    const/4 v10, 0x0

    .local v10, i:I
    move v9, v8

    .end local v8           #finalSize:I
    .local v9, finalSize:I
    :goto_0
    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 102
    aget-object v21, v16, v10

    .line 103
    .local v21, s:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v13

    .line 104
    .local v13, len:I
    const/16 v22, 0x5

    move v0, v13

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 105
    const/16 v22, 0x0

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 106
    .local v12, language:Ljava/lang/String;
    const/16 v22, 0x3

    const/16 v23, 0x5

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, country:Ljava/lang/String;
    new-instance v11, Ljava/util/Locale;

    invoke-direct {v11, v12, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v11, l:Ljava/util/Locale;
    if-nez v9, :cond_0

    .line 113
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v22, Lcom/android/settings/LocalePicker$Loc;

    invoke-virtual {v11, v11}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v20, v9

    .line 101
    .end local v6           #country:Ljava/lang/String;
    .end local v11           #l:Ljava/util/Locale;
    .end local v12           #language:Ljava/lang/String;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    goto :goto_0

    .line 120
    .restart local v6       #country:Ljava/lang/String;
    .restart local v11       #l:Ljava/util/Locale;
    .restart local v12       #language:Ljava/lang/String;
    :cond_0
    const/16 v22, 0x1

    sub-int v22, v9, v22

    aget-object v22, v20, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 127
    const/16 v22, 0x1

    sub-int v22, v9, v22

    aget-object v22, v20, v22

    const/16 v23, 0x1

    sub-int v23, v9, v23

    aget-object v23, v20, v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/LocalePicker;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/settings/LocalePicker$Loc;->label:Ljava/lang/String;

    .line 132
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v22, Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/settings/LocalePicker;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v20, v9

    goto :goto_1

    .line 136
    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    :cond_1
    const-string v22, "zz_ZZ"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 137
    const-string v7, "Pseudo..."

    .line 144
    .local v7, displayName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v22, Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v20, v9

    goto :goto_1

    .line 139
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    :cond_2
    invoke-virtual {v11, v11}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 149
    .end local v6           #country:Ljava/lang/String;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v11           #l:Ljava/util/Locale;
    .end local v12           #language:Ljava/lang/String;
    .end local v13           #len:I
    .end local v21           #s:Ljava/lang/String;
    :cond_3
    move v0, v9

    new-array v0, v0, [Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    .line 150
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_4

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v22, v0

    aget-object v23, v20, v10

    aput-object v23, v22, v10

    .line 150
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 153
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 155
    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, c:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, l:Ljava/lang/String;
    const-string v22, "LocalePicker"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "for loop// Country: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", Language: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 161
    const-string v22, "LocalePicker"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "for loop// index: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move v15, v10

    .line 171
    .end local v5           #c:Ljava/lang/String;
    .end local v11           #l:Ljava/lang/String;
    :cond_5
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v22, 0x109000f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v23, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 173
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/settings/LocalePicker$Loc;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move v1, v15

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 178
    return-void

    .line 155
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/settings/LocalePicker$Loc;>;"
    .restart local v5       #c:Ljava/lang/String;
    .restart local v11       #l:Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .end local v5           #c:Ljava/lang/String;
    .end local v11           #l:Ljava/lang/String;
    .restart local v13       #len:I
    .restart local v21       #s:Ljava/lang/String;
    :cond_7
    move v8, v9

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    goto/16 :goto_1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 209
    new-instance v0, Lcom/android/settings/LocalePicker$1;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/LocalePicker$1;-><init>(Lcom/android/settings/LocalePicker;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 204
    return-void
.end method
