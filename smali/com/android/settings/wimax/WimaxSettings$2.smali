.class Lcom/android/settings/wimax/WimaxSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "WimaxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wimax/WimaxSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings$2;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$2;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v0}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate Telephone state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$2;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {v0, p1}, Lcom/android/settings/wimax/WimaxSettings;->access$602(Lcom/android/settings/wimax/WimaxSettings;I)I

    .line 149
    return-void
.end method
