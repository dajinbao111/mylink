.class public Lcom/autonavi/xm/widget/ScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private mOnScrollChangedListener:Lcom/autonavi/xm/widget/ScrollView$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getContentHeight()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/autonavi/xm/widget/ScrollView;->mOnScrollChangedListener:Lcom/autonavi/xm/widget/ScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/widget/ScrollView;->mOnScrollChangedListener:Lcom/autonavi/xm/widget/ScrollView$OnScrollChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/autonavi/xm/widget/ScrollView$OnScrollChangedListener;->onScrollChanged(Lcom/autonavi/xm/widget/ScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/autonavi/xm/widget/ScrollView$OnScrollChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/widget/ScrollView;->mOnScrollChangedListener:Lcom/autonavi/xm/widget/ScrollView$OnScrollChangedListener;

    return-void
.end method
