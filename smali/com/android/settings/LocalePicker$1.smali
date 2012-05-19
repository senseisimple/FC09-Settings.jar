.class Lcom/android/settings/LocalePicker$1;
.super Landroid/os/AsyncTask;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocalePicker;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePicker;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePicker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    iput p2, p0, Lcom/android/settings/LocalePicker$1;->val$position:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/LocalePicker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "args"

    .prologue
    .line 214
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 215
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 217
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    iget-object v5, v5, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    iget v6, p0, Lcom/android/settings/LocalePicker$1;->val$position:I

    aget-object v3, v5, v6

    .line 218
    .local v3, loc:Lcom/android/settings/LocalePicker$Loc;
    iget-object v5, v3, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    iput-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 221
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 223
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 225
    const-string v5, "com.android.providers.settings"

    invoke-static {v5}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 228
    const-string v5, "gsm.sim.lenguageEvent"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    const/4 v5, 0x7

    iget-object v6, v3, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;-><init>(ILjava/lang/String;)V

    .line 230
    .local v4, stkEventLanguage:Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.stk.event"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "STK EVENT"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    iget-object v5, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    invoke-virtual {v5, v2}, Lcom/android/settings/LocalePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    const-string v5, "LocalePicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onListItemClick intent!!!!!!!!!!!!!!! = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #loc:Lcom/android/settings/LocalePicker$Loc;
    .end local v4           #stkEventLanguage:Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    invoke-virtual {v5}, Lcom/android/settings/LocalePicker;->finish()V

    .line 249
    const/4 v5, 0x0

    return-object v5

    .line 244
    :catch_0
    move-exception v5

    goto :goto_0
.end method
