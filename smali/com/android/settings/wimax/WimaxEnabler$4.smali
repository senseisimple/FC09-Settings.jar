.class Lcom/android/settings/wimax/WimaxEnabler$4;
.super Ljava/lang/Object;
.source "WimaxEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wimax/WimaxEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler$4;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$4;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->access$1000(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    return-void
.end method
