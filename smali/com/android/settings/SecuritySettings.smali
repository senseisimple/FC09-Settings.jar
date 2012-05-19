.class public Lcom/android/settings/SecuritySettings;
.super Landroid/preference/PreferenceActivity;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$CredentialStorage;,
        Lcom/android/settings/SecuritySettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private static mContext:Landroid/content/Context;

.field private static mGps:Landroid/preference/CheckBoxPreference;

.field private static mNetwork:Landroid/preference/CheckBoxPreference;

.field private static mSimlockPreferences:Landroid/preference/PreferenceScreen;


# instance fields
.field confirmPhPwd:Ljava/lang/String;

.field enterPhPwd:Ljava/lang/String;

.field firstSet:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mConfirmPhonePwdET:Landroid/widget/EditText;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnterPhonePwdET:Landroid/widget/EditText;

.field private mIsEnterPhonePwdDlgOn:Z

.field private mIsNewPhonePwdDlgOn:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPhonePwdET:Landroid/widget/EditText;

.field private mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

.field private mTrackerPreferences:Landroid/preference/Preference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field mshowDlg:Z

.field newPhPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 116
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->newPhPwd:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->confirmPhPwd:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->enterPhPwd:Ljava/lang/String;

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mIsNewPhonePwdDlgOn:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mIsEnterPhonePwdDlgOn:Z

    .line 145
    new-instance v0, Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    .line 581
    return-void
.end method

.method private ValidateMTData()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v8, "none"

    .line 964
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 966
    .local v0, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v6

    .line 967
    .local v6, sender:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "Not Mentioned"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v7, v9

    .line 985
    :goto_0
    return v7

    .line 970
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v1

    .line 971
    .local v1, rec1:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "none"

    invoke-virtual {v1, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 972
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, rec2:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "none"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 974
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v3

    .line 975
    .local v3, rec3:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "none"

    invoke-virtual {v3, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 976
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v4

    .line 977
    .local v4, rec4:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "none"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 978
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v5

    .line 979
    .local v5, rec5:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "none"

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    move v7, v9

    .line 980
    goto :goto_0

    .line 985
    .end local v2           #rec2:Ljava/lang/String;
    .end local v3           #rec3:Ljava/lang/String;
    .end local v4           #rec4:Ljava/lang/String;
    .end local v5           #rec5:Ljava/lang/String;
    :cond_7
    const/4 v7, 0x1

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method private createPhonePasswordDialog(Z)Landroid/app/Dialog;
    .locals 13
    .parameter "mtcheckPref"

    .prologue
    const v12, 0x7f0b0034

    const v11, 0x7f0b0030

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v5, 0x8

    .line 1000
    const v0, 0x7f030031

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1003
    .local v2, view:Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPhonePassword()Ljava/lang/String;

    move-result-object v3

    .line 1004
    .local v3, storedPhPwd:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    iput-boolean v10, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    .line 1006
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090516

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1007
    .local v8, msg:Ljava/lang/String;
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1009
    .local v7, hintTV:Landroid/widget/TextView;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iput-boolean v10, p0, Lcom/android/settings/SecuritySettings;->mIsNewPhonePwdDlgOn:Z

    .line 1013
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    .line 1014
    const v0, 0x7f0b0035

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    .line 1016
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1019
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1020
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1022
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1023
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1045
    .end local v7           #hintTV:Landroid/widget/TextView;
    .end local v8           #msg:Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/android/internal/util/NVStore;

    invoke-direct {v4, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 1047
    .local v4, filenv:Lcom/android/internal/util/NVStore;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09051d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v0, Lcom/android/settings/SecuritySettings$3;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;Landroid/view/View;Ljava/lang/String;Lcom/android/internal/util/NVStore;Z)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v5, Lcom/android/settings/SecuritySettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 1146
    .local v6, dialog:Landroid/app/Dialog;
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    if-nez v0, :cond_0

    .line 1147
    const v0, 0x7f09051e

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1149
    :cond_0
    new-instance v0, Lcom/android/settings/SecuritySettings$4;

    invoke-direct {v0, p0, v6}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1164
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1167
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1168
    return-object v6

    .line 1025
    .end local v4           #filenv:Lcom/android/internal/util/NVStore;
    .end local v6           #dialog:Landroid/app/Dialog;
    :cond_1
    iput-boolean v9, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    .line 1026
    const v0, 0x7f0b007f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    const v0, 0x7f0b0080

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    const v0, 0x7f0b0035

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1031
    const v0, 0x7f0b0081

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    const v0, 0x7f0b0082

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    iput-boolean v10, p0, Lcom/android/settings/SecuritySettings;->mIsEnterPhonePwdDlgOn:Z

    .line 1037
    const v0, 0x7f0b0082

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    .line 1039
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1041
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 215
    :cond_0
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "location_network"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sput-object v0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "location_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sput-object v0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "assisted_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sput-object v0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 234
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 255
    :goto_0
    const-string v0, "visiblepattern"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 258
    const-string v0, "unlock_tactile_feedback"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 260
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 263
    const/4 v2, 0x2

    if-eq v2, v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    .line 279
    sget-object v0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    const v2, 0x7f090214

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.IccLockSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    sget-object v2, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 285
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 286
    const v2, 0x7f090215

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 287
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 288
    sget-object v2, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 317
    :cond_1
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 318
    const v2, 0x7f0900f7

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 319
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 321
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 322
    const-string v3, "show_password"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 323
    const v3, 0x7f090399

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 324
    const v3, 0x7f09039a

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 325
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 326
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 329
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 330
    const v2, 0x7f09011e

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 331
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 333
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 334
    const v3, 0x7f09011f

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 335
    const v3, 0x7f090120

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 336
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 337
    const-class v4, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 338
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 339
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 343
    const v2, 0x7f09049d

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 344
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 345
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-static {v2, v0, v5}, Lcom/android/settings/SecuritySettings$CredentialStorage;->access$200(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V

    .line 348
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 349
    const v2, 0x7f0904b9

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 351
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->access$200(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V

    .line 352
    return-object v1

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 239
    :sswitch_0
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 242
    :sswitch_1
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 246
    :sswitch_2
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 523
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private updateMTStatusSummary()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 938
    const-string v1, "MT_Setting_Pref"

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/SecuritySettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "MT_OPS_Signed_in"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 943
    .local v0, ops_signed_in:Z
    if-nez v0, :cond_0

    .line 944
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ValidateMTData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 945
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 946
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 961
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 954
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->GetMTStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 955
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 956
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090502

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 959
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090503

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static updateToggles()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 496
    sget-object v1, Lcom/android/settings/SecuritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 499
    .local v0, gpsEnabled:Z
    sget-object v1, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/android/settings/SecuritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 502
    sget-object v1, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 503
    sget-object v1, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 505
    sget-object v1, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/android/settings/SecuritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 507
    sget-object v1, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 520
    :cond_0
    return-void

    .line 505
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public GetMTStatus()Z
    .locals 2

    .prologue
    .line 991
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 992
    .local v0, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    return v1
.end method

.method ValidatePhPwd(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "tview"
    .parameter "storedPwd"
    .parameter "newPwd"
    .parameter "confirmPwd"
    .parameter "enterPhPwd"

    .prologue
    const v6, 0x7f09051c

    const v5, 0x7f09051b

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1175
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    :cond_0
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1177
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1208
    :goto_0
    return v1

    .line 1179
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 1181
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1184
    goto :goto_0

    .line 1186
    .end local v0           #msg:Ljava/lang/String;
    :cond_3
    invoke-virtual {p3, p4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 1187
    const v1, 0x7f090519

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1188
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1189
    goto :goto_0

    .line 1193
    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1194
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1195
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1196
    goto :goto_0

    .line 1197
    :cond_5
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 1198
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    .restart local v0       #msg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1201
    goto :goto_0

    .line 1202
    .end local v0           #msg:Ljava/lang/String;
    :cond_6
    invoke-virtual {p5, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 1203
    const v1, 0x7f090518

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1204
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1205
    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 1208
    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 531
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 532
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 533
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 188
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 192
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 194
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SecuritySettings;->mContext:Landroid/content/Context;

    .line 198
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 207
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    new-instance v1, Lcom/android/settings/SecuritySettings$SettingsObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SecuritySettings$SettingsObserver;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 208
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 393
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 395
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 400
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 403
    const-string v2, "unlock_set_or_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    move v0, v3

    .line 486
    :goto_1
    return v0

    .line 406
    :cond_1
    const-string v2, "lockenabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 408
    :cond_2
    const-string v2, "visiblepattern"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 409
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 410
    :cond_3
    const-string v2, "unlock_tactile_feedback"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_0

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_2

    .line 415
    :cond_6
    sget-object v0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    sget-object v2, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 418
    :cond_7
    sget-object v0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 419
    sget-object v0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 423
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    sget-object v2, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 425
    const-string v1, "SecuritySettings"

    const-string v2, "sendBroadcast : android.settings.GPS_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v1, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 428
    sget-object v1, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 430
    :cond_8
    sget-object v0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    sget-object v2, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v4

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto :goto_3

    .line 449
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_b

    .line 450
    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings;->createPhonePasswordDialog(Z)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 451
    :cond_b
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    if-ne p2, v0, :cond_d

    .line 453
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ValidateMTData()Z

    move-result v0

    if-nez v0, :cond_c

    .line 454
    const-string v0, "ril.IMSI"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 456
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090543

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090544

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 459
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09034e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 465
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v3

    .line 466
    goto/16 :goto_1

    .line 469
    :cond_c
    invoke-direct {p0, v3}, Lcom/android/settings/SecuritySettings;->createPhonePasswordDialog(Z)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 470
    :cond_d
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPhonePassword()Ljava/lang/String;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 477
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CALLFWD_SMS_RECEIVED_SER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    const-string v1, "nv_storephpwdstate"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "1"

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 479
    :cond_e
    const-string v2, "0"

    goto :goto_4
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 357
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 359
    invoke-static {}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    .line 368
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 369
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->resume()V

    .line 390
    return-void

    .line 376
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
