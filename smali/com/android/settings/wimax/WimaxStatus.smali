.class public Lcom/android/settings/wimax/WimaxStatus;
.super Ljava/lang/Object;
.source "WimaxStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxStatus$1;
    }
.end annotation


# static fields
.field private static m_bLog:Z

.field private static m_bNapId:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bLog:Z

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static getPrintable(Landroid/content/Context;Landroid/net/wimax/WimaxState;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "wimaxState"
    .parameter "wimaxStateDetail"

    .prologue
    const v3, 0x7f0905df

    const v2, 0x7f0905de

    .line 44
    sget-object v0, Landroid/net/wimax/WimaxState;->CONNECTED:Landroid/net/wimax/WimaxState;

    if-ne p1, v0, :cond_0

    .line 45
    packed-switch p2, :pswitch_data_0

    .line 56
    :cond_0
    sget-object v0, Lcom/android/settings/wimax/WimaxStatus$1;->$SwitchMap$android$net$wimax$WimaxState:[I

    invoke-virtual {p1}, Landroid/net/wimax/WimaxState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 77
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_1
    const v0, 0x7f0905d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_2
    const v0, 0x7f0905d2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_3
    sget-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_4
    const v0, 0x7f0905d5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_5
    const v0, 0x7f0905d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_6
    const v0, 0x7f0905da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_7
    const v0, 0x7f0905d9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_8
    const v0, 0x7f0905d3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_9
    const v0, 0x7f0905d4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 56
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getStatus(Landroid/content/Context;Landroid/net/wimax/WimaxState;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "wimaxState"
    .parameter "wimaxStateDetail"

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getStatus]\tm_bNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", WimaxState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extraStateDetail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/wimax/WimaxStatus;->getPrintable(Landroid/content/Context;Landroid/net/wimax/WimaxState;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setEnableLog(Z)V
    .locals 0
    .parameter "blog"

    .prologue
    .line 86
    sput-boolean p0, Lcom/android/settings/wimax/WimaxStatus;->m_bLog:Z

    .line 87
    return-void
.end method

.method public static updateNapId(Z)V
    .locals 0
    .parameter "bNapId"

    .prologue
    .line 82
    sput-boolean p0, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    .line 83
    return-void
.end method
