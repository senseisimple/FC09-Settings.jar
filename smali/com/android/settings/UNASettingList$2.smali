.class Lcom/android/settings/UNASettingList$2;
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
    .line 85
    iput-object p1, p0, Lcom/android/settings/UNASettingList$2;->this$0:Lcom/android/settings/UNASettingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/UNASettingList$2;->this$0:Lcom/android/settings/UNASettingList;

    invoke-static {v0}, Lcom/android/settings/UNASettingList;->access$000(Lcom/android/settings/UNASettingList;)V

    .line 88
    return-void
.end method
