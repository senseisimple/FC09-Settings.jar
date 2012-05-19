.class Lcom/android/settings/deviceinfo/Status$1;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    const-string v7, "level"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 169
    .local v1, level:I
    const-string v7, "scale"

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 170
    .local v4, scale:I
    mul-int/lit8 v7, v1, 0x64

    div-int v2, v7, v4

    .line 183
    .local v2, mbatteryPercent:I
    const-string v7, "plugged"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 184
    .local v3, plugType:I
    const-string v7, "status"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 186
    .local v5, status:I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    .line 187
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const v8, 0x7f09003d

    invoke-virtual {v7, v8}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, statusString:Ljava/lang/String;
    if-lez v3, :cond_0

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    if-ne v3, v10, :cond_2

    const v9, 0x7f09003e

    :goto_0
    invoke-virtual {v8, v9}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 203
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v7}, Lcom/android/settings/deviceinfo/Status;->access$200(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    .end local v1           #level:I
    .end local v2           #mbatteryPercent:I
    .end local v3           #plugType:I
    .end local v4           #scale:I
    .end local v5           #status:I
    .end local v6           #statusString:Ljava/lang/String;
    :cond_1
    return-void

    .line 189
    .restart local v1       #level:I
    .restart local v2       #mbatteryPercent:I
    .restart local v3       #plugType:I
    .restart local v4       #scale:I
    .restart local v5       #status:I
    .restart local v6       #statusString:Ljava/lang/String;
    :cond_2
    const v9, 0x7f09003f

    goto :goto_0

    .line 194
    .end local v6           #statusString:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x3

    if-ne v5, v7, :cond_4

    .line 195
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const v8, 0x7f090040

    invoke-virtual {v7, v8}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 196
    .end local v6           #statusString:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x4

    if-ne v5, v7, :cond_5

    .line 197
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const v8, 0x7f090041

    invoke-virtual {v7, v8}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 198
    .end local v6           #statusString:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x5

    if-ne v5, v7, :cond_6

    .line 199
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const v8, 0x7f090042

    invoke-virtual {v7, v8}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 201
    .end local v6           #statusString:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const v8, 0x7f09003c

    invoke-virtual {v7, v8}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #statusString:Ljava/lang/String;
    goto :goto_1
.end method
