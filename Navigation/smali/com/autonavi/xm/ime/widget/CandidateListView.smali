.class public Lcom/autonavi/xm/ime/widget/CandidateListView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/autonavi/xm/ime/widget/CandidateListInterface;


# static fields
.field private static final MAX_ITEMS:I = 0xa


# instance fields
.field private mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

.field private mCallback:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Callback;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstVisiblePostion:I

.field private mLastVisiblePostion:I

.field private mNextPageView:Landroid/view/View;

.field private mPrevPageView:Landroid/view/View;

.field private mTextViews:[Landroid/widget/TextView;

.field private mVisibleCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    iput v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mVisibleCount:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/xm/ime/widget/CandidateListView;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    iput v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mVisibleCount:I

    invoke-direct {p0, p1, p2, v1}, Lcom/autonavi/xm/ime/widget/CandidateListView;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    iput v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mVisibleCount:I

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/xm/ime/widget/CandidateListView;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private handlePageChanged(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mPrevPageView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mPrevPageView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mNextPageView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mNextPageView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/16 v6, 0xa

    const/4 v2, 0x0

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->setGravity(I)V

    sget-object v0, Lcom/autonavi/xm/ime/R$styleable;->CandidateListView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    new-array v0, v6, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mTextViews:[Landroid/widget/TextView;

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_0

    sget v0, Lcom/autonavi/xm/ime/R$layout;->candidate_item:I

    invoke-virtual {v4, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v5, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mTextViews:[Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v1, v0

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getChildCount()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    const v0, -0x666662

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v10, :cond_2

    invoke-virtual {p0, v6}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    div-int/lit8 v1, v7, 0x2

    sub-int/2addr v0, v1

    int-to-float v1, v0

    int-to-float v2, v8

    add-int/2addr v0, v7

    int-to-float v3, v0

    int-to-float v4, v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public nextPage()V
    .locals 15

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v0}, Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;->getCandidateCount()I

    move-result v5

    iget v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v5, :cond_0

    iget v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    iget v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mVisibleCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    const/4 v4, 0x0

    iget v3, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mTextViews:[Landroid/widget/TextView;

    array-length v6, v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    add-int/lit8 v7, v0, 0x14

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mTextViews:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    const/16 v0, 0x23

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v9

    iget v9, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v9

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int v9, v2, v1

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v14, v1

    move v1, v4

    move v4, v3

    move v3, v14

    :goto_1
    if-ge v3, v6, :cond_7

    iget-object v10, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mTextViews:[Landroid/widget/TextView;

    aget-object v10, v10, v3

    if-gt v2, v7, :cond_6

    if-ge v4, v5, :cond_6

    iget-object v11, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v11, v4}, Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;->getCandidate(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v12

    int-to-float v13, v9

    add-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/2addr v2, v12

    if-eqz v3, :cond_4

    if-gt v2, v7, :cond_5

    :cond_4
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    :goto_2
    move v14, v2

    move v2, v1

    move v1, v14

    :goto_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    goto :goto_1

    :cond_5
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    move v14, v2

    move v2, v1

    move v1, v14

    goto :goto_3

    :cond_7
    iput v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mVisibleCount:I

    iget v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    iget-object v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    iget-object v2, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v2}, Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;->getCandidateCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/ime/widget/CandidateListView;->handlePageChanged(ZZ)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mPrevPageView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->previousPage()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mNextPageView:Landroid/view/View;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->nextPage()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mCallback:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mCallback:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Callback;

    iget-object v2, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v2, v0}, Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;->getCandidate(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/autonavi/xm/ime/widget/CandidateListInterface$Callback;->onCandidateSelected(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    new-instance v0, Lcom/autonavi/xm/ime/widget/CandidateListView$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/ime/widget/CandidateListView$1;-><init>(Lcom/autonavi/xm/ime/widget/CandidateListView;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public previousPage()V
    .locals 14

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    iget v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mVisibleCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    const/4 v3, 0x0

    iget v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    add-int/lit8 v6, v0, 0x14

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mTextViews:[Landroid/widget/TextView;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/16 v0, 0x23

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_3
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int v8, v4, v2

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mTextViews:[Landroid/widget/TextView;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    move v5, v1

    move v1, v3

    move v3, v4

    :goto_1
    if-ltz v3, :cond_7

    iget-object v9, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mTextViews:[Landroid/widget/TextView;

    aget-object v9, v9, v3

    if-gt v2, v6, :cond_6

    if-ltz v5, :cond_6

    iget-object v10, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v10, v5}, Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;->getCandidate(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v11

    int-to-float v12, v8

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/2addr v2, v11

    if-eq v3, v4, :cond_4

    if-gt v2, v6, :cond_5

    :cond_4
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    :goto_2
    move v13, v2

    move v2, v1

    move v1, v13

    :goto_3
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v3, v3, -0x1

    move v13, v1

    move v1, v2

    move v2, v13

    goto :goto_1

    :cond_5
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    move v13, v2

    move v2, v1

    move v1, v13

    goto :goto_3

    :cond_7
    iput v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mVisibleCount:I

    iget v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    iget-object v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    iget-object v2, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v2}, Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;->getCandidateCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/ime/widget/CandidateListView;->handlePageChanged(ZZ)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public reset()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mFirstVisiblePostion:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mLastVisiblePostion:I

    iput v1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mVisibleCount:I

    iget-object v2, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mTextViews:[Landroid/widget/TextView;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v0}, Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;->getCandidateCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    invoke-direct {p0, v1, v1}, Lcom/autonavi/xm/ime/widget/CandidateListView;->handlePageChanged(ZZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->nextPage()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mAdapter:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Adapter;

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->reset()V

    return-void
.end method

.method public setCallback(Lcom/autonavi/xm/ime/widget/CandidateListInterface$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mCallback:Lcom/autonavi/xm/ime/widget/CandidateListInterface$Callback;

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPageTurningView(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mPrevPageView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iput-object p2, p0, Lcom/autonavi/xm/ime/widget/CandidateListView;->mNextPageView:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/CandidateListView;->reset()V

    return-void
.end method
