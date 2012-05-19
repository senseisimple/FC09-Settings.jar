.class Lcom/android/settings/DisplaySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.settings.BACKLIGHTCHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v1, "com.android.settings.KEYPADBACKLIGHTCHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)V

    goto :goto_0
.end method
