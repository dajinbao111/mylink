.class public Lcom/autonavi/wh/widget/CompoundScrollView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mScrollView:Lcom/autonavi/wh/widget/ScrollView;

.field private mScrollbar:Lcom/autonavi/wh/widget/CompoundScrollbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/widget/CompoundScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/autonavi/wh/framework/R$layout;->compound_scroll_view:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/CompoundScrollView;->setOrientation(I)V

    sget v0, Lcom/autonavi/wh/framework/R$id;->scroll_view:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/CompoundScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/widget/ScrollView;

    iput-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    sget v0, Lcom/autonavi/wh/framework/R$id;->scrollbar:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/CompoundScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/widget/CompoundScrollbar;

    iput-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollbar:Lcom/autonavi/wh/widget/CompoundScrollbar;

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollbar:Lcom/autonavi/wh/widget/CompoundScrollbar;

    iget-object v1, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/widget/CompoundScrollbar;->setScrollView(Lcom/autonavi/wh/widget/ScrollView;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/widget/ScrollView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/widget/ScrollView;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/wh/widget/ScrollView;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/wh/widget/ScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getScrollView()Lcom/autonavi/wh/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    return-object v0
.end method

.method public setPageNumberEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundScrollView;->mScrollbar:Lcom/autonavi/wh/widget/CompoundScrollbar;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/widget/CompoundScrollbar;->setPageNumberEnabled(Z)V

    return-void
.end method