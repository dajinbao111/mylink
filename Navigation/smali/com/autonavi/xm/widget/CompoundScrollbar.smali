.class public Lcom/autonavi/xm/widget/CompoundScrollbar;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;
.implements Lcom/autonavi/xm/widget/ScrollView$OnScrollChangedListener;


# static fields
.field private static final CAN_SMOOTH_SCROLL:Z = false

.field private static final MIN_SCROLL_OFFSET_Y:I = 0xa


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mIsThumbDragging:Z

.field private mPageCount:I

.field private mPageNumber:Landroid/widget/TextView;

.field private mScrollDown:Landroid/view/View;

.field private final mScrollThumb:Landroid/view/View;

.field private final mScrollTrack:Landroid/view/ViewGroup;

.field private mScrollUp:Landroid/view/View;

.field private mScrollView:Lcom/autonavi/xm/widget/ScrollView;

.field private mThumbLastRawY:I

.field private mTotalCount:I

.field private mTrackScrollableHeight:I

.field private mVisibleCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTrackScrollableHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mIsThumbDragging:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->setOrientation(I)V

    sget v0, Lcom/autonavi/xm/framework/R$layout;->compound_scrollbar:I

    invoke-static {p1, v0, p0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/autonavi/xm/framework/R$id;->thumb:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    sget v0, Lcom/autonavi/xm/framework/R$id;->track:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/autonavi/xm/framework/R$id;->scrollUp:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/xm/view/ClickRepeater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/xm/view/ClickRepeater;

    sget v0, Lcom/autonavi/xm/framework/R$id;->scrollDown:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/xm/view/ClickRepeater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/xm/view/ClickRepeater;

    return-void
.end method

.method private doScroll(III)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTotalCount:I

    if-eq v0, p3, :cond_0

    iput p2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mVisibleCount:I

    iput p3, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTotalCount:I

    if-lez p2, :cond_5

    int-to-double v3, p3

    int-to-double v5, p2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    :goto_0
    iput v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageCount:I

    invoke-direct {p0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->initTrack()V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->setPageNumber()V

    if-lez p1, :cond_6

    move v3, v2

    :goto_1
    add-int v0, p1, p2

    if-ge v0, p3, :cond_7

    move v0, v2

    :goto_2
    if-nez v3, :cond_8

    iget-object v4, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_3
    if-nez v0, :cond_9

    iget-object v4, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    :goto_4
    if-nez v3, :cond_a

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    :goto_5
    iget-boolean v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mIsThumbDragging:Z

    if-nez v0, :cond_4

    int-to-float v0, p1

    sub-int v2, p3, p2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTrackScrollableHeight:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    neg-int v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5
.end method

.method private getFastScrollPosition(I)I
    .locals 3

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    :goto_0
    add-int/2addr v0, p1

    iget v1, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTotalCount:I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    goto :goto_0
.end method

.method private initTrack()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTotalCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mVisibleCount:I

    int-to-float v0, v0

    int-to-float v2, v1

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTotalCount:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    sub-int v0, v1, v0

    iput v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTrackScrollableHeight:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private scrollContent(I)V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/autonavi/xm/widget/CompoundScrollbar;->getFastScrollPosition(I)I

    move-result v1

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    const/4 v2, 0x0

    if-ltz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    const/16 v3, 0xa

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private setPageNumber()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mVisibleCount:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageCount:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTotalCount:I

    if-ne v2, v3, :cond_2

    iget v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageCount:I

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/autonavi/xm/framework/R$string;->format_page_number:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x1

    iget v1, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mVisibleCount:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    invoke-virtual {v0}, Lcom/autonavi/xm/widget/ScrollView;->getScrollY()I

    move-result v0

    iget v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mVisibleCount:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTotalCount:I

    if-ne v2, v3, :cond_4

    iget v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageCount:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mVisibleCount:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autonavi/xm/framework/R$id;->scrollUp:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mVisibleCount:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->scrollContent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/autonavi/xm/framework/R$id;->scrollDown:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mVisibleCount:I

    invoke-direct {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->scrollContent(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    invoke-virtual {v0}, Lcom/autonavi/xm/widget/ScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    invoke-virtual {v1}, Lcom/autonavi/xm/widget/ScrollView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    invoke-virtual {v2}, Lcom/autonavi/xm/widget/ScrollView;->getContentHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/xm/widget/CompoundScrollbar;->doScroll(III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->initTrack()V

    goto :goto_0
.end method

.method public onRepeat(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autonavi/xm/framework/R$id;->scrollUp:I

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->scrollContent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/autonavi/xm/framework/R$id;->scrollDown:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->scrollContent(I)V

    goto :goto_0
.end method

.method public onRepeatEnd(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onRepeatStart(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/autonavi/xm/widget/CompoundScrollbar;->doScroll(III)V

    return-void
.end method

.method public onScrollChanged(Lcom/autonavi/xm/widget/ScrollView;IIII)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    invoke-virtual {v0}, Lcom/autonavi/xm/widget/ScrollView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    invoke-virtual {v1}, Lcom/autonavi/xm/widget/ScrollView;->getContentHeight()I

    move-result v1

    invoke-direct {p0, p3, v0, v1}, Lcom/autonavi/xm/widget/CompoundScrollbar;->doScroll(III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mIsThumbDragging:Z

    iput v1, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mThumbLastRawY:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mThumbLastRawY:I

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTrackScrollableHeight:I

    neg-int v2, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    int-to-float v0, v0

    iget v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTrackScrollableHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mTotalCount:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v2, v0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    :goto_1
    iput v1, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mThumbLastRawY:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/xm/widget/ScrollView;->scrollTo(II)V

    goto :goto_1

    :pswitch_2
    iput-boolean v3, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mIsThumbDragging:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAbsListView(Landroid/widget/AbsListView;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/widget/ScrollView;->setOnScrollChangedListener(Lcom/autonavi/xm/widget/ScrollView$OnScrollChangedListener;)V

    iput-object v1, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    :cond_0
    iput-object p1, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_1
    return-void
.end method

.method public setPageNumberEnabled(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget v0, Lcom/autonavi/xm/framework/R$id;->thumb_handle:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/autonavi/xm/framework/R$id;->page_number:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->setPageNumber()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/autonavi/xm/framework/R$id;->thumb_handle:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setScrollView(Lcom/autonavi/xm/widget/ScrollView;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v1, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    :cond_0
    iput-object p1, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/widget/ScrollView;->setOnScrollChangedListener(Lcom/autonavi/xm/widget/ScrollView$OnScrollChangedListener;)V

    :cond_1
    return-void
.end method
