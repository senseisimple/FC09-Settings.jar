.class Lcom/android/settings/USBConnectionSettings$1;
.super Ljava/lang/Object;
.source "USBConnectionSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/USBConnectionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/USBConnectionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/USBConnectionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "usb_select_mode"

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    return-void

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$000(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$100(Lcom/android/settings/USBConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_select_mode"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$200(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$300(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$400(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$200(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$100(Lcom/android/settings/USBConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_select_mode"

    const/4 v1, 0x2

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$000(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$300(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$400(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$300(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$100(Lcom/android/settings/USBConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_select_mode"

    const/4 v1, 0x3

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$000(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$200(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$400(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 131
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$400(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$100(Lcom/android/settings/USBConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_select_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$000(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$200(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/USBConnectionSettings$1;->this$0:Lcom/android/settings/USBConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/USBConnectionSettings;->access$300(Lcom/android/settings/USBConnectionSettings;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x7f0b00f3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
