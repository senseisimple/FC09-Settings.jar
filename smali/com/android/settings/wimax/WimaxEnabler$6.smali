.class Lcom/android/settings/wimax/WimaxEnabler$6;
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
    .line 222
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler$6;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$6;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler$6;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {v1}, Lcom/android/settings/wimax/WimaxEnabler;->access$1100(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->access$800(Lcom/android/settings/wimax/WimaxEnabler;Z)V

    .line 226
    return-void
.end method
