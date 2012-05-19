.class Lcom/android/settings/wifi/WifiDialog$1;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 408
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiDialog;->access$000(Lcom/android/settings/wifi/WifiDialog;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "FAST"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiDialog;->access$100(Lcom/android/settings/wifi/WifiDialog;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiDialog;->access$200(Lcom/android/settings/wifi/WifiDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiDialog;->access$300(Lcom/android/settings/wifi/WifiDialog;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiDialog;->access$300(Lcom/android/settings/wifi/WifiDialog;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v1

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiDialog;->access$300(Lcom/android/settings/wifi/WifiDialog;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, phase1Value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiDialog;->access$100(Lcom/android/settings/wifi/WifiDialog;)Landroid/widget/Spinner;

    move-result-object v2

    const-string v3, "fast_provisioning="

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->access$400(Lcom/android/settings/wifi/WifiDialog;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 421
    .end local v0           #phase1Value:Ljava/lang/String;
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiDialog;->access$100(Lcom/android/settings/wifi/WifiDialog;)Landroid/widget/Spinner;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/WifiDialog;->access$400(Lcom/android/settings/wifi/WifiDialog;Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiDialog;->access$200(Lcom/android/settings/wifi/WifiDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiDialog;->access$100(Lcom/android/settings/wifi/WifiDialog;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
