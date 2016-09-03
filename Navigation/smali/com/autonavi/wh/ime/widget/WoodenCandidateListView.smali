.class public Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;
.super Landroid/widget/TableLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/autonavi/wh/ime/widget/CandidateListInterface;


# static fields
.field private static final MAX_ITEMS:I = 0x8

.field private static final MAX_LINES:I = 0x2

.field private static final MAX_ROWS:I = 0x4


# instance fields
.field private mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

.field private mCallback:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Callback;

.field private mCandidateItems:[Landroid/widget/TextView;

.field private mCurrentPage:I

.field private mNextPageView:Landroid/view/View;

.field private mPrevPageView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private clearCandidates()V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCandidateItems:[Landroid/widget/TextView;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handlePageChanged(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mPrevPageView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mPrevPageView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mNextPageView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mNextPageView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v2, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCandidateItems:[Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move v1, v2

    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_0

    sget v0, Lcom/autonavi/wh/ime/R$layout;->wooden_candidate_row:I

    invoke-virtual {v3, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCandidateItems:[Landroid/widget/TextView;

    mul-int/lit8 v6, v1, 0x2

    sget v0, Lcom/autonavi/wh/ime/R$id;->candidate_1:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v6

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCandidateItems:[Landroid/widget/TextView;

    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v6, v0, 0x1

    sget v0, Lcom/autonavi/wh/ime/R$id;->candidate_2:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v6

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public nextPage()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v0}, Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;->getCandidateCount()I

    move-result v4

    if-lez v4, :cond_0

    int-to-float v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v0, v3

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    add-int/lit8 v5, v0, -0x1

    iget v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    if-ge v0, v5, :cond_0

    iget v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    iget v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    mul-int/lit8 v0, v0, 0x8

    iget-object v6, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCandidateItems:[Landroid/widget/TextView;

    array-length v7, v6

    move v3, v0

    move v0, v2

    :goto_1
    if-ge v0, v7, :cond_3

    aget-object v8, v6, v0

    if-ge v3, v4, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v9, v3}, Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;->getCandidate(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    if-lez v0, :cond_4

    move v0, v1

    :goto_3
    iget v3, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    if-ge v3, v5, :cond_5

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->handlePageChanged(ZZ)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mPrevPageView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->previousPage()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mNextPageView:Landroid/view/View;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->nextPage()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCallback:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCallback:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Callback;

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v2, v0}, Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;->getCandidate(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/autonavi/wh/ime/widget/CandidateListInterface$Callback;->onCandidateSelected(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public previousPage()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v0}, Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;->getCandidateCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    iget v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    mul-int/lit8 v0, v0, 0x8

    iget-object v4, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCandidateItems:[Landroid/widget/TextView;

    array-length v5, v4

    move v3, v0

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v7, v3}, Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;->getCandidate(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v3}, Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;->getCandidateCount()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_4

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->handlePageChanged(ZZ)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

    invoke-interface {v0}, Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;->getCandidateCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->handlePageChanged(ZZ)V

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->clearCandidates()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->nextPage()V

    return-void
.end method

.method public setAdapter(Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mAdapter:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->reset()V

    return-void
.end method

.method public setCallback(Lcom/autonavi/wh/ime/widget/CandidateListInterface$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mCallback:Lcom/autonavi/wh/ime/widget/CandidateListInterface$Callback;

    return-void
.end method

.method public setPageTurningView(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mPrevPageView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iput-object p2, p0, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->mNextPageView:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/WoodenCandidateListView;->reset()V

    return-void
.end method
