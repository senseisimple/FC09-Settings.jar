.class Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mCheckHideMyDevice:Z

.field private mDefaultSsid:Ljava/lang/String;

.field private mHideMyDevice:Landroid/widget/CheckBox;

.field private mHideView:Landroid/widget/RelativeLayout;

.field private mHintView:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityType:I

.field private mSsid:Landroid/widget/EditText;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private setHide:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mDefaultSsid:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 110
    if-eqz p3, :cond_0

    .line 111
    invoke-static {p3}, Lcom/android/settings/wifi/AccessPoint;->getSecurity2(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 113
    :cond_0
    return-void
.end method

.method private isHexString(Ljava/lang/String;)Z
    .locals 3
    .parameter "wepPass"

    .prologue
    .line 500
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 501
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 502
    const/4 v1, 0x0

    .line 504
    :goto_1
    return v1

    .line 500
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private showSecurityFields()V
    .locals 2

    .prologue
    const v1, 0x7f0b0127

    .line 392
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHintView:Landroid/widget/TextView;

    const v1, 0x7f0905f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 400
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 401
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHintView:Landroid/widget/TextView;

    const v1, 0x7f0905f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHintView:Landroid/widget/TextView;

    const v1, 0x7f0904ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 335
    :goto_0
    return-void

    .line 315
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 318
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 320
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->isHexString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 323
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 325
    :cond_4
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->isHexString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 328
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 331
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 368
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 364
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v6, "WifiApDialog"

    const-string v5, ""

    .line 117
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 125
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v7

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 128
    const-string v2, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig - hiddenSSID  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b012f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 132
    iput-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->useMifi:Z

    .line 135
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    packed-switch v2, :pswitch_data_0

    .line 198
    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_0
    move v2, v4

    .line 127
    goto :goto_0

    .line 137
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 139
    const-string v2, ""

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 141
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v4, ""

    aput-object v5, v2, v3

    .line 142
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 143
    const-string v2, "WifiApDialog"

    const-string v2, "getConfig SECURITY_NONE - GroupCipher  0"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 146
    goto :goto_1

    .line 150
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 151
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 152
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 153
    const-string v2, "WifiApDialog"

    const-string v2, "getConfig SECURITY_WEP 64 : 0"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, password:Ljava/lang/String;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aput-object v1, v2, v3

    .line 157
    const-string v2, ""

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v1           #password:Ljava/lang/String;
    :cond_1
    move-object v2, v0

    .line 159
    goto :goto_1

    .line 161
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 162
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 163
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 164
    const-string v2, "WifiApDialog"

    const-string v2, "getConfig SECURITY_WEP 128 : 1"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .restart local v1       #password:Ljava/lang/String;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aput-object v1, v2, v3

    .line 168
    const-string v2, ""

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v1           #password:Ljava/lang/String;
    :cond_2
    move-object v2, v0

    .line 170
    goto/16 :goto_1

    .line 173
    :pswitch_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 174
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 175
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 176
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 177
    const-string v2, "WifiApDialog"

    const-string v2, "getConfig SECURITY_PSK2 : 2"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 181
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v4, ""

    aput-object v5, v2, v3

    .end local v1           #password:Ljava/lang/String;
    :cond_3
    move-object v2, v0

    .line 183
    goto/16 :goto_1

    .line 185
    :pswitch_4
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 186
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 187
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 188
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 189
    const-string v2, "WifiApDialog"

    const-string v2, "getConfig SECURITY_PSK2 : 3"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 193
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v4, ""

    aput-object v5, v2, v3

    .end local v1           #password:Ljava/lang/String;
    :cond_4
    move-object v2, v0

    .line 195
    goto/16 :goto_1

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const-string v2, "WifiApDialog"

    .line 338
    const-string v0, "WifiApDialog"

    const-string v0, "========== onClick =============="

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mCheckHideMyDevice:Z

    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mCheckHideMyDevice:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 343
    const-string v0, "WifiApDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHideMyDevice set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mCheckHideMyDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local p1
    :goto_0
    return-void

    .line 344
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mCheckHideMyDevice:Z

    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 350
    :cond_2
    const/16 v1, 0x80

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const v5, 0x7f0b0126

    const-string v7, "WifiApDialog"

    const-string v6, ""

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030059

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 208
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 209
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 216
    .local v0, context:Landroid/content/Context;
    const v2, 0x7f090557

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 217
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0124

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0125

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 219
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0128

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 222
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b012d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    .line 223
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->setHide:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideView:Landroid/widget/RelativeLayout;

    .line 228
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const/4 v2, -0x1

    const v3, 0x7f090191

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 232
    const/4 v2, -0x2

    const v3, 0x7f090192

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHintView:Landroid/widget/TextView;

    .line 238
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_5

    .line 239
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    packed-switch v2, :pswitch_data_0

    .line 280
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b012f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 287
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 288
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0129

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 292
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 294
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 295
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 296
    return-void

    .line 245
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 249
    :pswitch_1
    const-string v2, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wepKey Index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v2, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wepKey String"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v2, v3

    .line 252
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, ""

    if-eq v1, v6, :cond_1

    .line 253
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 259
    .end local v1           #str:Ljava/lang/String;
    :pswitch_2
    const-string v2, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wepKey Index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v2, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wepKey String"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v2, v3

    .line 262
    .restart local v1       #str:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, ""

    if-eq v1, v6, :cond_2

    .line 263
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 268
    .end local v1           #str:Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 269
    .restart local v1       #str:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, ""

    if-eq v1, v6, :cond_3

    .line 270
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 274
    .end local v1           #str:Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 275
    .restart local v1       #str:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v2, ""

    if-eq v1, v6, :cond_4

    .line 276
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 284
    .end local v1           #str:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mDefaultSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 372
    if-nez p3, :cond_0

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 384
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 385
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 386
    return-void

    .line 374
    :cond_0
    if-ne p3, v0, :cond_1

    .line 375
    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    goto :goto_0

    .line 376
    :cond_1
    if-ne p3, v1, :cond_2

    .line 377
    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    goto :goto_0

    .line 378
    :cond_2
    if-ne p3, v2, :cond_3

    .line 379
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    goto :goto_0

    .line 381
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 389
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0129

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 300
    .local v0, showPassword:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x90

    :goto_0
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 305
    const v1, 0x7f090187

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 308
    .end local v0           #showPassword:Landroid/widget/CheckBox;
    :cond_0
    return-void

    .line 301
    .restart local v0       #showPassword:Landroid/widget/CheckBox;
    :cond_1
    const/16 v2, 0x80

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 361
    return-void
.end method

.method public setChannel(I)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 492
    const-string v0, "WifiApDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChannel  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 495
    return-void
.end method

.method public setCheckHideMyDeivce(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 449
    const-string v0, "WifiApDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog;->setHide:Z

    .line 451
    return-void
.end method

.method public setDefaultSsidText(Ljava/lang/String;)V
    .locals 2
    .parameter "defaultSsid"

    .prologue
    .line 421
    const-string v0, "WifiApDialog"

    const-string v1, "setDefaultSsidText"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mDefaultSsid:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setHideDeviceStatus(Z)V
    .locals 2
    .parameter "bSet"

    .prologue
    .line 426
    const-string v0, "WifiApDialog"

    const-string v1, "setDefaultSsidText"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideMyDevice:Landroid/widget/CheckBox;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 429
    :cond_0
    return-void

    .line 428
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordText(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 439
    if-eqz p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 447
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public setSecurityMode(I)V
    .locals 9
    .parameter "securityMode"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x7f0b0126

    .line 454
    const-string v1, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSecurityMode  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-nez p1, :cond_0

    .line 459
    iput v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 460
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 487
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 489
    return-void

    .line 462
    :cond_0
    if-ne p1, v5, :cond_1

    .line 463
    iput v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 464
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v1, v2

    .line 466
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 468
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    if-ne p1, v6, :cond_2

    .line 469
    iput v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 470
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v1, v2

    .line 472
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 474
    .end local v0           #str:Ljava/lang/String;
    :cond_2
    if-ne p1, v7, :cond_3

    .line 475
    iput v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 476
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 478
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 481
    .end local v0           #str:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityType:I

    .line 482
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 484
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method public setSsidText(Ljava/lang/String;)V
    .locals 2
    .parameter "ssid"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 414
    return-void
.end method
