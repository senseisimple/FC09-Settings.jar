.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Activity;
.source "MasterClear.java"


# instance fields
.field isOkClicked:Z

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPhonePwdET:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/android/settings/MasterClear$5;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$5;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->runMobileTrackerPwdConfirmation()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalButton:Landroid/widget/Button;

    .line 255
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->setContentView(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 278
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 281
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 283
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v1, Lcom/android/settings/MasterClear$6;

    invoke-direct {v1, p0}, Lcom/android/settings/MasterClear$6;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->setContentView(Landroid/view/View;)V

    .line 292
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 117
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f09029b

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f09029c

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private runMobileTrackerPwdConfirmation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0b0082

    const/16 v5, 0x8

    .line 148
    const v3, 0x7f030031

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 151
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b007f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 152
    const v3, 0x7f0b0034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 153
    const v3, 0x7f0b0080

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    const v3, 0x7f0b0081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 160
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 161
    .local v1, enterpwdET:Landroid/widget/EditText;
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 162
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 164
    const v3, 0x7f0b007e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/MasterClear;->mPhonePwdET:Landroid/widget/EditText;

    .line 169
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mPhonePwdET:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getInputType()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 171
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 174
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09051e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/MasterClear$3;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;Landroid/view/View;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings/MasterClear$2;

    invoke-direct {v5, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 212
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 214
    new-instance v3, Lcom/android/settings/MasterClear$4;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 225
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 226
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    const/16 v1, 0x37

    if-eq p1, v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mt_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, mobileTrackerStatus:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->runMobileTrackerPwdConfirmation()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V

    goto :goto_0

    .line 140
    .end local v0           #mobileTrackerStatus:I
    :cond_2
    if-nez p2, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->finish()V

    goto :goto_0

    .line 143
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 298
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    .line 299
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    .line 300
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    .line 301
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 303
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 304
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 317
    :cond_0
    return-void
.end method
