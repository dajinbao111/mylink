.class public Lcom/autonavi/xm/view/BaseView;
.super Landroid/view/View;


# instance fields
.field private mOnSizeChangedListener:Lcom/autonavi/xm/view/OnSizeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/xm/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xm/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static setViewEnabled(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static setViewGroupEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/autonavi/xm/view/BaseView;->setViewGroupEnabled(Landroid/view/ViewGroup;Z)V

    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/autonavi/xm/view/BaseView;->mOnSizeChangedListener:Lcom/autonavi/xm/view/OnSizeChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/view/BaseView;->mOnSizeChangedListener:Lcom/autonavi/xm/view/OnSizeChangeListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/autonavi/xm/view/OnSizeChangeListener;->onSizeChanged(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public setOnSizeChangeListener(Lcom/autonavi/xm/view/OnSizeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/view/BaseView;->mOnSizeChangedListener:Lcom/autonavi/xm/view/OnSizeChangeListener;

    return-void
.end method
