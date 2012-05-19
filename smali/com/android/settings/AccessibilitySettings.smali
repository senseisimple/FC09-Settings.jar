.class public Lcom/android/settings/AccessibilitySettings;
.super Landroid/preference/PreferenceActivity;
.source "AccessibilitySettings.java"


# instance fields
.field private final POWER_BUTTON_ENDS_CALL_CHECKBOX:Ljava/lang/String;

.field private final TOGGLE_ACCESSIBILITY_SERVICE_CHECKBOX:Ljava/lang/String;

.field private mAccessibilityServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

.field private mNoAppDialog:Landroid/app/AlertDialog;

.field private mPowerButtonCategory:Landroid/preference/PreferenceCategory;

.field private mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

.field private mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mToggleCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 56
    const-string v0, "toggle_accessibility_service_checkbox"

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->TOGGLE_ACCESSIBILITY_SERVICE_CHECKBOX:Ljava/lang/String;

    .line 65
    const-string v0, "power_button_ends_call"

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->POWER_BUTTON_ENDS_CALL_CHECKBOX:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    .line 76
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoAppDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AccessibilitySettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/AccessibilitySettings;->setAccessibilityServicePreferencesState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->persistEnabledAccessibilityServices()V

    return-void
.end method

.method private addAccessibilitServicePreferences()V
    .locals 9

    .prologue
    .line 315
    const-string v7, "accessibility"

    invoke-virtual {p0, v7}, Lcom/android/settings/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 318
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 320
    .local v3, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    const-string v7, "accessibility_services_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    iput-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    .line 323
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    .line 340
    :cond_0
    return-void

    .line 329
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 330
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ServiceInfo;

    .line 331
    .local v6, serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 336
    .local v5, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private displayNoAppsAlert()V
    .locals 5

    .prologue
    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 350
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v1, noAppsAlert:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0903d9

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 357
    const v3, 0x7f0903da

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 359
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/AccessibilitySettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/AccessibilitySettings$5;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/AccessibilitySettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/AccessibilitySettings$6;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 378
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mNoAppDialog:Landroid/app/AlertDialog;

    .line 379
    .end local v1           #noAppsAlert:Landroid/app/AlertDialog$Builder;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 353
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private handleEnableAccessibilityServiceStateChange(Landroid/preference/CheckBoxPreference;)V
    .locals 9
    .parameter "preference"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 250
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    move-object v0, p1

    .line 252
    .local v0, checkBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 253
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 254
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0903d7

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/AccessibilitySettings$4;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/AccessibilitySettings$4;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/AccessibilitySettings$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/AccessibilitySettings$3;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/AccessibilitySettings$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/AccessibilitySettings$2;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 284
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 288
    .end local v0           #checkBoxPreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->persistEnabledAccessibilityServices()V

    goto :goto_0
.end method

.method private handleEnableAccessibilityStateChange(Landroid/preference/CheckBoxPreference;)V
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 217
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    invoke-direct {p0, v4}, Lcom/android/settings/AccessibilitySettings;->setAccessibilityServicePreferencesState(Z)V

    .line 242
    :goto_0
    return-void

    .line 222
    :cond_0
    move-object v0, p1

    .line 223
    .local v0, checkBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 224
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0903d8

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/AccessibilitySettings$1;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/AccessibilitySettings$1;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 240
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private persistEnabledAccessibilityServices()V
    .locals 8

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 298
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    .line 299
    .local v1, firstEnabled:I
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 301
    .local v4, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 302
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 307
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #preference:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 309
    return-void
.end method

.method private setAccessibilityServicePreferencesState(Z)V
    .locals 4
    .parameter "isEnabled"

    .prologue
    .line 177
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_1

    .line 186
    :cond_0
    return-void

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 182
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 184
    .local v2, pref:Landroid/preference/Preference;
    invoke-virtual {v2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 88
    const-string v0, "toggle_accessibility_service_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleCheckBox:Landroid/preference/CheckBoxPreference;

    .line 91
    const-string v0, "power_button_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonCategory:Landroid/preference/PreferenceCategory;

    .line 92
    const-string v0, "power_button_ends_call"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    .line 95
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->addAccessibilitServicePreferences()V

    .line 96
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->persistEnabledAccessibilityServices()V

    .line 168
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, key:Ljava/lang/String;
    const-string v3, "toggle_accessibility_service_checkbox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 194
    .local v1, isChecked:Z
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/android/settings/AccessibilitySettings;->handleEnableAccessibilityStateChange(Landroid/preference/CheckBoxPreference;)V

    .line 208
    .end local v1           #isChecked:Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 195
    :cond_1
    const-string v3, "power_button_ends_call"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 200
    .restart local v1       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "incall_power_button_behavior"

    if-eqz v1, :cond_2

    const/4 v5, 0x2

    :goto_1
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 204
    .end local v1           #isChecked:Z
    :cond_3
    instance-of v3, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 205
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/android/settings/AccessibilitySettings;->handleEnableAccessibilityServiceStateChange(Landroid/preference/CheckBoxPreference;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const-string v14, "accessibility_enabled"

    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 102
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v1, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_accessibility_services"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, settingValue:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 106
    iget-object v9, p0, Lcom/android/settings/AccessibilitySettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 107
    .local v9, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v9, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 108
    :goto_0
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 109
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v9           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    .line 115
    .local v0, accessibilityServices:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 116
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 117
    .local v6, preference:Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_1

    .line 118
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v6, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 122
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #preference:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    invoke-static {v10, v14, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 125
    .local v7, serviceState:I
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 126
    if-ne v7, v12, :cond_4

    .line 127
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mToggleCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    :goto_2
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mToggleCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 146
    :cond_3
    :goto_3
    const/16 v10, 0x1a

    invoke-static {v10}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "incall_power_button_behavior"

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 153
    .local v3, incallPowerBehavior:I
    const/4 v10, 0x2

    if-ne v3, v10, :cond_7

    move v5, v12

    .line 155
    .local v5, powerButtonCheckboxEnabled:Z
    :goto_4
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 161
    .end local v3           #incallPowerBehavior:I
    .end local v5           #powerButtonCheckboxEnabled:Z
    :goto_5
    return-void

    .line 129
    :cond_4
    invoke-direct {p0, v13}, Lcom/android/settings/AccessibilitySettings;->setAccessibilityServicePreferencesState(Z)V

    goto :goto_2

    .line 133
    :cond_5
    if-ne v7, v12, :cond_6

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    invoke-static {v10, v14, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    :cond_6
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mToggleCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 141
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mNoAppDialog:Landroid/app/AlertDialog;

    if-nez v10, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->displayNoAppsAlert()V

    goto :goto_3

    .restart local v3       #incallPowerBehavior:I
    :cond_7
    move v5, v13

    .line 153
    goto :goto_4

    .line 159
    .end local v3           #incallPowerBehavior:I
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method
