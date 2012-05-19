.class Lcom/android/settings/deviceinfo/Status$3;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 545
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->access$400(Lcom/android/settings/deviceinfo/Status;)V

    .line 549
    :cond_0
    return-void
.end method
