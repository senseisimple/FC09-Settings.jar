.class Lcom/android/settings/applications/InstalledAppDetails$2;
.super Landroid/os/Handler;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x6

    .line 171
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 174
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$400(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/server/ProcessStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ProcessStats;->init()V

    .line 177
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$500(Lcom/android/settings/applications/InstalledAppDetails;)V

    .line 178
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$500(Lcom/android/settings/applications/InstalledAppDetails;)V

    .line 182
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 185
    :pswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails$2;->removeMessages(I)V

    .line 186
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails$2;->removeMessages(I)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
