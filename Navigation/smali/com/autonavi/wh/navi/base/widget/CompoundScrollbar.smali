.class public Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;
.implements Lcom/autonavi/wh/widget/ScrollView$OnScrollChangedListener;


# static fields
.field private static final CAN_SMOOTH_SCROLL:Z = false

.field private static final MIN_SCROLL_OFFSET_Y:I = 0xa


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private final mHandler:Landroid/os/Handler;

.field private mInitListViewBottom:I

.field private mInitListViewTop:I

.field private mIsNeedToInit:Z

.field private mIsThumbDragging:Z

.field private mIsThumbEnabled:Z

.field private mPageCount:I

.field private mPageNumber:Landroid/widget/TextView;

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mScrollDown:Landroid/view/View;

.field private final mScrollThumb:Landroid/view/View;

.field private final mScrollTrack:Landroid/view/ViewGroup;

.field private final mScrollUp:Landroid/view/View;

.field private mScrollView:Lcom/autonavi/wh/widget/ScrollView;

.field private mThumbLastRawY:I

.field private mTotalCount:I

.field private final mTrackScrollableHeight:I

.field private mVisibleCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, -0x3e7

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mTrackScrollableHeight:I

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsThumbDragging:Z

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsThumbEnabled:Z

    iput v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mInitListViewTop:I

    iput v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mInitListViewBottom:I

    iput-boolean v3, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsNeedToInit:Z

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar$1;-><init>(Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->setOrientation(I)V

    const v0, 0x7f030015

    invoke-static {p1, v0, p0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mHandler:Landroid/os/Handler;

    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/wh/view/ClickRepeater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/wh/view/ClickRepeater;

    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/wh/view/ClickRepeater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/wh/view/ClickRepeater;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;)Lcom/autonavi/wh/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;Landroid/view/ViewGroup;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->doScroll(Landroid/view/ViewGroup;III)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->initTrack()V

    return-void
.end method

.method private doScroll(Landroid/view/ViewGroup;III)V
    .locals 8

    const/16 v7, -0x3e7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput p3, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mVisibleCount:I

    iget v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mTotalCount:I

    if-eq v0, p4, :cond_0

    iput p4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mTotalCount:I

    if-lez p3, :cond_a

    int-to-double v3, p4

    int-to-double v5, p3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    :goto_0
    iput v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageCount:I

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsNeedToInit:Z

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsNeedToInit:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->initTrack()V

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->setPageNumber()V

    if-lez p4, :cond_12

    if-eqz p1, :cond_12

    instance-of v0, p1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_14

    iget v3, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mInitListViewTop:I

    if-ne v3, v7, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mInitListViewTop:I

    :cond_2
    if-gtz p2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mInitListViewTop:I

    if-ge v0, v3, :cond_14

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v4, :cond_13

    iget v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mInitListViewTop:I

    if-eq v0, v7, :cond_4

    iget v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mInitListViewBottom:I

    if-ne v0, v7, :cond_4

    iget v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mInitListViewTop:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mInitListViewBottom:I

    :cond_4
    add-int v0, p2, p3

    if-lt v0, p4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mInitListViewBottom:I

    if-le v0, v4, :cond_13

    :cond_5
    move v0, v2

    :goto_2
    if-nez v3, :cond_e

    iget-object v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    :goto_3
    if-nez v0, :cond_f

    iget-object v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    :goto_4
    if-nez v3, :cond_10

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    :goto_5
    iget-boolean v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsThumbDragging:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz p1, :cond_9

    if-lez v0, :cond_9

    if-lez v2, :cond_9

    instance-of v3, p1, Landroid/widget/AbsListView;

    if-eqz v3, :cond_11

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v4, p2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v5, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mTotalCount:I

    mul-int/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    if-eqz v3, :cond_9

    sub-int/2addr v0, v2

    mul-int/2addr v0, v4

    div-int/2addr v0, v3

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    neg-int v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_9
    :goto_6
    return-void

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    instance-of v0, p1, Lcom/autonavi/wh/widget/ScrollView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-lez p2, :cond_c

    move v0, v2

    :goto_7
    add-int v3, p2, p3

    if-ge v3, p4, :cond_d

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_c
    move v0, v1

    goto :goto_7

    :cond_d
    move v3, v0

    move v0, v1

    goto :goto_2

    :cond_e
    iget-object v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollUp:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_f
    iget-object v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollDown:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_11
    instance-of v0, p1, Lcom/autonavi/wh/widget/ScrollView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0}, Lcom/autonavi/wh/widget/ScrollView;->getHeight()I

    move-result v0

    mul-int/2addr v2, p2

    div-int v0, v2, v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    neg-int v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_6

    :cond_12
    move v0, v1

    move v3, v1

    goto/16 :goto_2

    :cond_13
    move v0, v1

    goto/16 :goto_2

    :cond_14
    move v3, v1

    goto/16 :goto_1
.end method

.method private getFastScrollPosition(I)I
    .locals 3

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    iget v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mTotalCount:I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    goto :goto_0
.end method

.method private initTrack()V
    .locals 7

    const-wide/16 v5, 0xc8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-lez v0, :cond_0

    if-eqz v2, :cond_0

    mul-int/2addr v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mTotalCount:I

    mul-int/2addr v2, v3

    div-int/2addr v0, v2

    div-int/lit8 v2, v1, 0xa

    if-ge v0, v2, :cond_2

    div-int/lit8 v0, v1, 0xa

    :cond_2
    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    iput-boolean v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsNeedToInit:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0}, Lcom/autonavi/wh/widget/ScrollView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v2}, Lcom/autonavi/wh/widget/ScrollView;->getContentHeight()I

    move-result v2

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    iput-boolean v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsNeedToInit:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private scrollContent(I)V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->getFastScrollPosition(I)I

    move-result v1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

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

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private setPageNumber()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mVisibleCount:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageCount:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mTotalCount:I

    if-ne v2, v3, :cond_2

    iget v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageCount:I

    :goto_1
    iget-object v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0026

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x1

    iget v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mVisibleCount:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0}, Lcom/autonavi/wh/widget/ScrollView;->getScrollY()I

    move-result v0

    iget v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mVisibleCount:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mTotalCount:I

    if-ne v2, v3, :cond_4

    iget v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageCount:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mVisibleCount:I

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

    const v1, 0x7f080098

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mVisibleCount:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->scrollContent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f08009d

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mVisibleCount:I

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->scrollContent(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const-wide/16 v2, 0xc8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar$2;

    invoke-direct {v1, p0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar$2;-><init>(Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar$3;

    invoke-direct {v1, p0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar$3;-><init>(Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onRepeat(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080098

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->scrollContent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f08009d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->scrollContent(I)V

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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->doScroll(Landroid/view/ViewGroup;III)V

    return-void
.end method

.method public onScrollChanged(Lcom/autonavi/wh/widget/ScrollView;IIII)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0}, Lcom/autonavi/wh/widget/ScrollView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v1}, Lcom/autonavi/wh/widget/ScrollView;->getContentHeight()I

    move-result v1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->doScroll(Landroid/view/ViewGroup;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsThumbEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iput-boolean v4, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsThumbDragging:Z

    iput v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mThumbLastRawY:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mThumbLastRawY:I

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    int-to-float v0, v0

    const/high16 v2, -0x40800000    # -1.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mTotalCount:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v2, v0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    :goto_1
    iput v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mThumbLastRawY:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/GridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/wh/widget/ScrollView;->scrollTo(II)V

    goto :goto_1

    :pswitch_2
    iput-boolean v3, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsThumbDragging:Z

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

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/widget/ScrollView;->setOnScrollChangedListener(Lcom/autonavi/wh/widget/ScrollView$OnScrollChangedListener;)V

    iput-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    :cond_0
    iput-object p1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_1
    return-void
.end method

.method public setPageNumberEnabled(Z)V
    .locals 3

    const v0, 0x7f08009b

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->setPageNumber()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mPageNumber:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setScrollView(Lcom/autonavi/wh/widget/ScrollView;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mAbsListView:Landroid/widget/AbsListView;

    :cond_0
    iput-object p1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/wh/widget/ScrollView;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/widget/ScrollView;->setOnScrollChangedListener(Lcom/autonavi/wh/widget/ScrollView$OnScrollChangedListener;)V

    :cond_1
    return-void
.end method

.method public setThumbEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->mIsThumbEnabled:Z

    return-void
.end method
