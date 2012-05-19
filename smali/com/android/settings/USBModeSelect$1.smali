.class Lcom/android/settings/USBModeSelect$1;
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
    .line 48
    iput-object p1, p0, Lcom/android/settings/USBModeSelect$1;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 50
    invoke-static {}, Lcom/android/settings/USBModeSelect;->access$000()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings/USBModeSelect$1;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-static {v0}, Lcom/android/settings/USBModeSelect;->access$100(Lcom/android/settings/USBModeSelect;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_select_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/settings/USBModeSelect$1;->this$0:Lcom/android/settings/USBModeSelect;

    invoke-virtual {v0}, Lcom/android/settings/USBModeSelect;->finish()V

    .line 54
    return-void
.end method
