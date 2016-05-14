.class public Lcom/autonavi/xm/navi/base/widget/PagedListView;
.super Lcom/autonavi/xm/navi/base/widget/CircularListView;

# interfaces
.implements Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;


# instance fields
.field private mBtnPageDown:Landroid/view/View;

.field private mBtnPageUp:Landroid/view/View;

.field private mCanPageDown:Z

.field private mCanPageUp:Z

.field private mHasPagebilityDetected:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mTotalCount:I

.field private mVisibleCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/xm/navi/base/widget/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/xm/navi/base/widget/CircularListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mHasPagebilityDetected:Z

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mCanPageUp:Z

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mCanPageDown:Z

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/PagedListView$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView$1;-><init>(Lcom/autonavi/xm/navi/base/widget/PagedListView;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/PagedListView$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView$2;-><init>(Lcom/autonavi/xm/navi/base/widget/PagedListView;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/autonavi/xm/navi/base/widget/PagedListView;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mVisibleCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navi/base/widget/PagedListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->detectPagebility()V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navi/base/widget/PagedListView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageDown:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navi/base/widget/PagedListView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageUp:Landroid/view/View;

    return-object v0
.end method

.method private detectPagebility()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mTotalCount:I

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-le v0, v3, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v3, :cond_0

    move v2, v1

    :cond_0
    iget-boolean v3, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mHasPagebilityDetected:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageDown:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageDown:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->setEnable(Landroid/view/View;Z)V

    :cond_1
    iget-object v3, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageUp:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageUp:Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->setEnable(Landroid/view/View;Z)V

    :cond_2
    iput-boolean v1, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mHasPagebilityDetected:Z

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mCanPageDown:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mCanPageUp:Z

    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mCanPageDown:Z

    if-eq v1, v0, :cond_6

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageDown:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageDown:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->setEnable(Landroid/view/View;Z)V

    :cond_6
    iget-boolean v1, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mCanPageUp:Z

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageUp:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageUp:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->setEnable(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method private getFastScrollPosition(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->getLastVisiblePosition()I

    move-result v1

    if-gez p1, :cond_0

    :goto_0
    add-int/2addr v0, p1

    iget v1, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mTotalCount:I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private scrollContent(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->getFastScrollPosition(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->smoothScrollToPosition(II)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->getFastScrollPosition(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method private setEnable(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected handleDataChanged()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->handleDataChanged()V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->getCount()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mTotalCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mHasPagebilityDetected:Z

    return-void
.end method

.method public onRepeat(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageDown:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->scrollContent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageUp:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->scrollContent(I)V

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

.method public pageDown()V
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mVisibleCount:I

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->scrollContent(I)V

    return-void
.end method

.method public pageUp()V
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mVisibleCount:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->scrollContent(I)V

    return-void
.end method

.method public setPageDownButton(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageDown:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageDown:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageDown:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageDown:Landroid/view/View;

    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/xm/view/ClickRepeater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/xm/view/ClickRepeater;

    :cond_0
    return-void
.end method

.method public setPageUpButton(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageUp:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageUp:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageUp:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/PagedListView;->mBtnPageUp:Landroid/view/View;

    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/xm/view/ClickRepeater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/xm/view/ClickRepeater;

    :cond_0
    return-void
.end method
