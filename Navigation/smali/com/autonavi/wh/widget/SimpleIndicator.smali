.class public Lcom/autonavi/wh/widget/SimpleIndicator;
.super Landroid/view/View;

# interfaces
.implements Lcom/autonavi/wh/widget/Indicator;


# instance fields
.field private mCurrent:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mGoneWhenEmpty:Z

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mSpacing:I

.field private mTotal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/wh/widget/SimpleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/wh/widget/SimpleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mSpacing:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mGoneWhenEmpty:Z

    invoke-direct {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/SimpleIndicator;->setWillNotDraw(Z)V

    sget v0, Lcom/autonavi/wh/framework/R$drawable;->simple_indicator_normal:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/SimpleIndicator;->setNormalResource(I)V

    sget v0, Lcom/autonavi/wh/framework/R$drawable;->simple_indicator_current:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/SimpleIndicator;->setCurrentResource(I)V

    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrent:I

    return v0
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNormalDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSpacing()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mSpacing:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mTotal:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    iget-object v3, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mSpacing:I

    iget v6, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrent:I

    iget v7, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mTotal:I

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_2

    if-ne v1, v6, :cond_0

    iget-object v2, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    if-nez v2, :cond_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v4, v10

    add-int v11, v0, v8

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    invoke-virtual {v2, v0, v10, v11, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int v2, v8, v5

    add-int/2addr v0, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    iget v3, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mSpacing:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mTotal:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/autonavi/wh/widget/SimpleIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    const/4 v1, -0x1

    check-cast p1, Lcom/autonavi/wh/widget/SimpleIndicator$SavedState;

    invoke-virtual {p1}, Lcom/autonavi/wh/widget/SimpleIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/autonavi/wh/widget/SimpleIndicator$SavedState;->total:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/autonavi/wh/widget/SimpleIndicator$SavedState;->total:I

    iput v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mTotal:I

    :cond_0
    iget v0, p1, Lcom/autonavi/wh/widget/SimpleIndicator$SavedState;->current:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/autonavi/wh/widget/SimpleIndicator$SavedState;->current:I

    iput v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrent:I

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/autonavi/wh/widget/SimpleIndicator$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/wh/widget/SimpleIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mTotal:I

    iput v1, v0, Lcom/autonavi/wh/widget/SimpleIndicator$SavedState;->total:I

    iget v1, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrent:I

    iput v1, v0, Lcom/autonavi/wh/widget/SimpleIndicator$SavedState;->current:I

    return-object v0
.end method

.method public setCurrent(I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mTotal:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrent:I

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->invalidate()V

    return-void
.end method

.method public setNormalDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->invalidate()V

    return-void
.end method

.method public setNormalResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->invalidate()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mSpacing:I

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setTotal(I)V
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mTotal:I

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mCurrent:I

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/wh/widget/SimpleIndicator;->mGoneWhenEmpty:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/SimpleIndicator;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/widget/SimpleIndicator;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/widget/SimpleIndicator;->setVisibility(I)V

    goto :goto_0
.end method
