.class Lcom/android/settings/wifi/AccessPointListDialog$2;
.super Ljava/lang/Object;
.source "AccessPointListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AccessPointListDialog;->showProgressDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AccessPointListDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AccessPointListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog$2;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "whichButton"

    .prologue
    .line 420
    const-string v0, "AccessPointListDialog"

    const-string v1, "mProgressDialog: onClick(), CANCEL clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$2;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$200(Lcom/android/settings/wifi/AccessPointListDialog;)V

    .line 423
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$2;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$300(Lcom/android/settings/wifi/AccessPointListDialog;)V

    .line 424
    return-void
.end method
