.class Lcom/android/settings/USBModeSelect$3;
.super Ljava/lang/Object;
.source "USBModeSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/USBModeSelect;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/USBModeSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/USBModeSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/USBModeSelect$3;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 79
    invoke-static {}, Lcom/android/settings/USBModeSelect;->access$000()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/settings/USBModeSelect$3;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-static {v1}, Lcom/android/settings/USBModeSelect;->access$100(Lcom/android/settings/USBModeSelect;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_select_mode"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x5080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/android/settings/USBModeSelect$3;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-virtual {v1, v0}, Lcom/android/settings/USBModeSelect;->startActivity(Landroid/content/Intent;)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/USBModeSelect$3;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-virtual {v1}, Lcom/android/settings/USBModeSelect;->finish()V

    .line 87
    return-void
.end method
