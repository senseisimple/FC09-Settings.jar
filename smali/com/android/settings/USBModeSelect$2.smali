.class Lcom/android/settings/USBModeSelect$2;
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
    .line 57
    iput-object p1, p0, Lcom/android/settings/USBModeSelect$2;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 59
    invoke-static {}, Lcom/android/settings/USBModeSelect;->access$000()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/android/settings/USBModeSelect$2;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-static {v2}, Lcom/android/settings/USBModeSelect;->access$100(Lcom/android/settings/USBModeSelect;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_select_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, state:Ljava/lang/String;
    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "checking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/android/settings/USBModeSelect$2;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-static {v2}, Lcom/android/settings/USBModeSelect;->access$100(Lcom/android/settings/USBModeSelect;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SD Card is not present."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.UsbStorageActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v2, p0, Lcom/android/settings/USBModeSelect$2;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-virtual {v2, v0}, Lcom/android/settings/USBModeSelect;->startActivity(Landroid/content/Intent;)V

    .line 72
    iget-object v2, p0, Lcom/android/settings/USBModeSelect$2;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-virtual {v2}, Lcom/android/settings/USBModeSelect;->finish()V

    goto :goto_0
.end method
