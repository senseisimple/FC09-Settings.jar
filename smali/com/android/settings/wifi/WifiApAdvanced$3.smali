.class Lcom/android/settings/wifi/WifiApAdvanced$3;
.super Ljava/lang/Object;
.source "WifiApAdvanced.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApAdvanced;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApAdvanced;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApAdvanced;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApAdvanced$3;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApAdvanced$3;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApAdvanced;->access$700(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApAdvanced$3;->this$0:Lcom/android/settings/wifi/WifiApAdvanced;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApAdvanced;->access$600(Lcom/android/settings/wifi/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 247
    return-void
.end method
