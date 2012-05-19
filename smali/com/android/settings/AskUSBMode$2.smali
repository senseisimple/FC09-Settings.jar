.class Lcom/android/settings/AskUSBMode$2;
.super Ljava/lang/Object;
.source "AskUSBMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AskUSBMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AskUSBMode;


# direct methods
.method constructor <init>(Lcom/android/settings/AskUSBMode;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/AskUSBMode$2;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x5080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/android/settings/AskUSBMode$2;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-virtual {v1, v0}, Lcom/android/settings/AskUSBMode;->startActivity(Landroid/content/Intent;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/AskUSBMode$2;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-virtual {v1}, Lcom/android/settings/AskUSBMode;->finish()V

    .line 141
    return-void
.end method
