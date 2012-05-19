.class Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;
.super Ljava/lang/Object;
.source "WimaxSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPreferenceClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v0}, Lcom/android/settings/wimax/WimaxSettings;->access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/wimax/WimaxState;

    move-result-object v0

    sget-object v1, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v0, p1}, Lcom/android/settings/wimax/WimaxSettings;->access$700(Lcom/android/settings/wimax/WimaxSettings;Landroid/preference/Preference;)Z

    .line 450
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
