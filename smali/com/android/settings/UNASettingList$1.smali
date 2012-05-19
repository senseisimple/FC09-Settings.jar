.class Lcom/android/settings/UNASettingList$1;
.super Ljava/lang/Object;
.source "UNASettingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UNASettingList;->warningMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UNASettingList;


# direct methods
.method constructor <init>(Lcom/android/settings/UNASettingList;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    invoke-virtual {v0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "una_setting"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    iget-object v0, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    invoke-virtual {v0}, Lcom/android/settings/UNASettingList;->finish()V

    .line 94
    return-void
.end method
