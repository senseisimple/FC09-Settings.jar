.class public Lcom/android/settings/ActivityPicker$PickAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PickAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ActivityPicker$PickAdapter$Item;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 276
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 277
    iput-object p2, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    .line 278
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 298
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 305
    if-nez p2, :cond_0

    .line 306
    iget-object v4, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030032

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 309
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/ActivityPicker$PickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    .line 311
    .local v1, item:Lcom/android/settings/ActivityPicker$PickAdapter$Item;
    const v4, 0x7f0b0083

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 312
    .local v0, iconView:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 313
    iget-object v4, v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 314
    iget-object v4, v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :cond_1
    const v4, 0x7f0b0084

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 318
    .local v2, textView1:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 319
    iget-object v4, v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_2
    const v4, 0x7f0b0085

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 322
    .local v3, textView2:Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 323
    iget-object v4, v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->widgetMaker:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_3
    iget-object v4, v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->widgetMaker:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 327
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    :cond_4
    return-object p2
.end method
