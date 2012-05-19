.class public Lcom/android/settings/SprintPrivacyInfoActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SprintPrivacyInfoActivity.java"


# instance fields
.field private mDefaultLicencePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SprintPrivacyInfoActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/SprintPrivacyInfoActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 105
    const v0, 0x7f0902eb

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->finish()V

    .line 108
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    .line 37
    .local v10, currentLocale:Ljava/util/Locale;
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "es"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 38
    const-string v5, "/system/etc/SPRINT_PRIVACY_es.html"

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SprintPrivacyInfoActivity;->mDefaultLicencePath:Ljava/lang/String;

    .line 43
    :cond_0
    :goto_0
    const-string v5, "ro.config.sprint_privacy_path"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SprintPrivacyInfoActivity;->mDefaultLicencePath:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 45
    .local v14, fileName:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 46
    const-string v5, "SprintPrivacyInfoActivity"

    const-string v6, "The system property for the license file is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->showErrorAndFinish()V

    .line 102
    :cond_1
    :goto_1
    return-void

    .line 40
    .end local v14           #fileName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "en"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    const-string v5, "/system/etc/SPRINT_PRIVACY.html"

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SprintPrivacyInfoActivity;->mDefaultLicencePath:Ljava/lang/String;

    goto :goto_0

    .line 51
    .restart local v14       #fileName:Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    .line 52
    .local v15, inputReader:Ljava/io/InputStreamReader;
    const/4 v11, 0x0

    .line 54
    .local v11, data:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v5, 0x800

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 55
    .end local v11           #data:Ljava/lang/StringBuilder;
    .local v12, data:Ljava/lang/StringBuilder;
    const/16 v5, 0x800

    :try_start_1
    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v19, v0

    .line 57
    .local v19, tmp:[C
    new-instance v16, Ljava/io/FileReader;

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 58
    .end local v15           #inputReader:Ljava/io/InputStreamReader;
    .local v16, inputReader:Ljava/io/InputStreamReader;
    :goto_2
    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v17

    .local v17, numRead:I
    if-ltz v17, :cond_4

    .line 59
    const/4 v5, 0x0

    move-object v0, v12

    move-object/from16 v1, v19

    move v2, v5

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_2

    .line 61
    .end local v17           #numRead:I
    :catch_0
    move-exception v5

    move-object v13, v5

    move-object v11, v12

    .end local v12           #data:Ljava/lang/StringBuilder;
    .restart local v11       #data:Ljava/lang/StringBuilder;
    move-object/from16 v15, v16

    .line 62
    .end local v16           #inputReader:Ljava/io/InputStreamReader;
    .end local v19           #tmp:[C
    .local v13, e:Ljava/io/FileNotFoundException;
    .restart local v15       #inputReader:Ljava/io/InputStreamReader;
    :goto_3
    :try_start_3
    const-string v5, "SprintPrivacyInfoActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Privacy HTML file not found at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->showErrorAndFinish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    if-eqz v15, :cond_1

    .line 72
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 74
    :catch_1
    move-exception v5

    goto :goto_1

    .line 71
    .end local v11           #data:Ljava/lang/StringBuilder;
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .end local v15           #inputReader:Ljava/io/InputStreamReader;
    .restart local v12       #data:Ljava/lang/StringBuilder;
    .restart local v16       #inputReader:Ljava/io/InputStreamReader;
    .restart local v17       #numRead:I
    .restart local v19       #tmp:[C
    :cond_4
    if-eqz v16, :cond_5

    .line 72
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 78
    :cond_5
    :goto_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 79
    const-string v5, "SprintPrivacyInfoActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Privacy HTML is empty (from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->showErrorAndFinish()V

    goto/16 :goto_1

    .line 65
    .end local v12           #data:Ljava/lang/StringBuilder;
    .end local v16           #inputReader:Ljava/io/InputStreamReader;
    .end local v17           #numRead:I
    .end local v19           #tmp:[C
    .restart local v11       #data:Ljava/lang/StringBuilder;
    .restart local v15       #inputReader:Ljava/io/InputStreamReader;
    :catch_2
    move-exception v5

    move-object v13, v5

    .line 66
    .local v13, e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    const-string v5, "SprintPrivacyInfoActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading Privacy HTML file at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->showErrorAndFinish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 71
    if-eqz v15, :cond_1

    .line 72
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 74
    :catch_3
    move-exception v5

    goto/16 :goto_1

    .line 70
    .end local v13           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 71
    :goto_6
    if-eqz v15, :cond_6

    .line 72
    :try_start_8
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 75
    :cond_6
    :goto_7
    throw v5

    .line 84
    .end local v11           #data:Ljava/lang/StringBuilder;
    .end local v15           #inputReader:Ljava/io/InputStreamReader;
    .restart local v12       #data:Ljava/lang/StringBuilder;
    .restart local v16       #inputReader:Ljava/io/InputStreamReader;
    .restart local v17       #numRead:I
    .restart local v19       #tmp:[C
    :cond_7
    new-instance v4, Landroid/webkit/WebView;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v4, webView:Landroid/webkit/WebView;
    const/4 v5, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/html"

    const-string v8, "utf-8"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v5, Lcom/android/settings/SprintPrivacyInfoActivity$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SprintPrivacyInfoActivity$1;-><init>(Lcom/android/settings/SprintPrivacyInfoActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SprintPrivacyInfoActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v18, v0

    .line 98
    .local v18, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v5, 0x7f0902ec

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/SprintPrivacyInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 99
    move-object v0, v4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 100
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->setupAlert()V

    goto/16 :goto_1

    .line 74
    .end local v4           #webView:Landroid/webkit/WebView;
    .end local v18           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :catch_4
    move-exception v5

    goto/16 :goto_4

    .end local v12           #data:Ljava/lang/StringBuilder;
    .end local v16           #inputReader:Ljava/io/InputStreamReader;
    .end local v17           #numRead:I
    .end local v19           #tmp:[C
    .restart local v11       #data:Ljava/lang/StringBuilder;
    .restart local v15       #inputReader:Ljava/io/InputStreamReader;
    :catch_5
    move-exception v6

    goto :goto_7

    .line 70
    .end local v11           #data:Ljava/lang/StringBuilder;
    .restart local v12       #data:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v5

    move-object v11, v12

    .end local v12           #data:Ljava/lang/StringBuilder;
    .restart local v11       #data:Ljava/lang/StringBuilder;
    goto :goto_6

    .end local v11           #data:Ljava/lang/StringBuilder;
    .end local v15           #inputReader:Ljava/io/InputStreamReader;
    .restart local v12       #data:Ljava/lang/StringBuilder;
    .restart local v16       #inputReader:Ljava/io/InputStreamReader;
    .restart local v19       #tmp:[C
    :catchall_2
    move-exception v5

    move-object v11, v12

    .end local v12           #data:Ljava/lang/StringBuilder;
    .restart local v11       #data:Ljava/lang/StringBuilder;
    move-object/from16 v15, v16

    .end local v16           #inputReader:Ljava/io/InputStreamReader;
    .restart local v15       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_6

    .line 65
    .end local v11           #data:Ljava/lang/StringBuilder;
    .end local v19           #tmp:[C
    .restart local v12       #data:Ljava/lang/StringBuilder;
    :catch_6
    move-exception v5

    move-object v13, v5

    move-object v11, v12

    .end local v12           #data:Ljava/lang/StringBuilder;
    .restart local v11       #data:Ljava/lang/StringBuilder;
    goto/16 :goto_5

    .end local v11           #data:Ljava/lang/StringBuilder;
    .end local v15           #inputReader:Ljava/io/InputStreamReader;
    .restart local v12       #data:Ljava/lang/StringBuilder;
    .restart local v16       #inputReader:Ljava/io/InputStreamReader;
    .restart local v19       #tmp:[C
    :catch_7
    move-exception v5

    move-object v13, v5

    move-object v11, v12

    .end local v12           #data:Ljava/lang/StringBuilder;
    .restart local v11       #data:Ljava/lang/StringBuilder;
    move-object/from16 v15, v16

    .end local v16           #inputReader:Ljava/io/InputStreamReader;
    .restart local v15       #inputReader:Ljava/io/InputStreamReader;
    goto/16 :goto_5

    .line 61
    .end local v19           #tmp:[C
    :catch_8
    move-exception v5

    move-object v13, v5

    goto/16 :goto_3

    .end local v11           #data:Ljava/lang/StringBuilder;
    .restart local v12       #data:Ljava/lang/StringBuilder;
    :catch_9
    move-exception v5

    move-object v13, v5

    move-object v11, v12

    .end local v12           #data:Ljava/lang/StringBuilder;
    .restart local v11       #data:Ljava/lang/StringBuilder;
    goto/16 :goto_3
.end method
