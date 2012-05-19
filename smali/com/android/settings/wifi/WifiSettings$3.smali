.class Lcom/android/settings/wifi/WifiSettings$3;
.super Landroid/os/CountDownTimer;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showProgressDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)V

    .line 513
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    const/16 v1, 0x3e8

    .line 505
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$420(Lcom/android/settings/wifi/WifiSettings;I)I

    .line 506
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->incrementProgressBy(I)V

    .line 507
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;)I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->getTimeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$602(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$600(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 509
    return-void
.end method
