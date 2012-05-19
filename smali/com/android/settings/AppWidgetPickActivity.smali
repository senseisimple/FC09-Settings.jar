.class public Lcom/android/settings/AppWidgetPickActivity;
.super Lcom/android/settings/ActivityPicker;
.source "AppWidgetPickActivity.java"


# instance fields
.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/ActivityPicker;-><init>()V

    return-void
.end method


# virtual methods
.method protected getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    invoke-virtual {p0, v0}, Lcom/android/settings/AppWidgetPickActivity;->putInstalledAppWidgets(Ljava/util/List;)V

    .line 281
    invoke-virtual {p0, v0}, Lcom/android/settings/AppWidgetPickActivity;->putCustomAppWidgets(Ljava/util/List;)V

    .line 284
    new-instance v1, Lcom/android/settings/AppWidgetPickActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AppWidgetPickActivity$1;-><init>(Lcom/android/settings/AppWidgetPickActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 145
    invoke-virtual {p0, p2}, Lcom/android/settings/AppWidgetPickActivity;->getIntentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    .line 148
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 151
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 183
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    .line 184
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 168
    .local v0, appWidgetIntent:Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v5, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 170
    const/4 v3, -0x1

    .line 172
    .local v3, result:I
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v3           #result:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 179
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    .line 180
    .restart local v3       #result:I
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    const-string v3, "appWidgetId"

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/ActivityPicker;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    goto :goto_0
.end method

.method putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, appWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, customExtras:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    if-nez p1, :cond_1

    .line 269
    :cond_0
    return-void

    .line 193
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    .line 194
    .local v13, size:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AppWidgetPickActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 195
    .local v12, resource:Landroid/content/res/Resources;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v13, :cond_0

    .line 196
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/appwidget/AppWidgetProviderInfo;

    .line 198
    .local v7, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v14, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 199
    .local v11, packageName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 200
    .local v4, found:Z
    const/4 v8, 0x0

    .line 205
    .local v8, isSamsungwidget:Z
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, "com.sec.android.widgetapp"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v14, v15, :cond_2

    const-string v14, "com.sec.android.widgetapp"

    const/4 v15, 0x0

    const-string v16, "com.sec.android.widgetapp"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move-object v0, v11

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 207
    const/4 v8, 0x1

    .line 223
    :cond_2
    const/4 v10, 0x0

    .line 238
    .local v10, label:Ljava/lang/CharSequence;
    iget-object v10, v7, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 240
    const/4 v6, 0x0

    .line 241
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    iget v14, v7, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v14, :cond_3

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v14, v0

    iget-object v15, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object v0, v7

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 243
    if-nez v6, :cond_3

    .line 244
    const-string v14, "AppWidgetPickActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Can\'t load icon drawable 0x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v7

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for provider: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v7

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_3
    new-instance v9, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 254
    .local v9, item:Lcom/android/settings/ActivityPicker$PickAdapter$Item;
    iget-object v14, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    .line 255
    iget-object v14, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    .line 257
    if-eqz v8, :cond_5

    .line 258
    const v14, 0x7f0905af

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->widgetMaker:Ljava/lang/String;

    .line 262
    :goto_1
    if-eqz p2, :cond_4

    .line 263
    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #found:Z
    check-cast v4, Landroid/os/Bundle;

    iput-object v4, v9, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    .line 266
    :cond_4
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 260
    .restart local v4       #found:Z
    :cond_5
    const v14, 0x7f0905ae

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->widgetMaker:Ljava/lang/String;

    goto :goto_1
.end method

.method putCustomAppWidgets(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    const-string v9, "AppWidgetPickActivity"

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 91
    .local v4, extras:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 92
    .local v2, customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v0, 0x0

    .line 94
    .local v0, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v7, "customInfo"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 96
    :cond_0
    const-string v7, "AppWidgetPickActivity"

    const-string v7, "EXTRA_CUSTOM_INFO not present."

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/settings/AppWidgetPickActivity;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 138
    return-void

    .line 100
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 101
    .local v3, customInfoSize:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 102
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 103
    .local v6, p:Landroid/os/Parcelable;
    if-eqz v6, :cond_3

    instance-of v7, v6, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v7, :cond_4

    .line 104
    :cond_3
    const/4 v2, 0x0

    .line 105
    const-string v7, "AppWidgetPickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error using EXTRA_CUSTOM_INFO index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 110
    .end local v6           #p:Landroid/os/Parcelable;
    :cond_5
    const-string v7, "customExtras"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    if-nez v0, :cond_6

    .line 112
    const/4 v2, 0x0

    .line 113
    const-string v7, "AppWidgetPickActivity"

    const-string v7, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 118
    .local v1, customExtrasSize:I
    if-eq v3, v1, :cond_7

    .line 119
    const-string v7, "AppWidgetPickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_7
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_1

    .line 126
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 127
    .restart local v6       #p:Landroid/os/Parcelable;
    if-eqz v6, :cond_8

    instance-of v7, v6, Landroid/os/Bundle;

    if-nez v7, :cond_9

    .line 128
    :cond_8
    const/4 v2, 0x0

    .line 129
    const/4 v0, 0x0

    .line 130
    const-string v7, "AppWidgetPickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 125
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method putInstalledAppWidgets(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    iget-object v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 299
    .local v0, installed:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/AppWidgetPickActivity;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 300
    return-void
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 3
    .parameter "code"
    .parameter "intent"

    .prologue
    .line 308
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 309
    .local v0, result:Landroid/content/Intent;
    :goto_0
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/AppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    .line 311
    return-void

    .line 308
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    goto :goto_0
.end method
