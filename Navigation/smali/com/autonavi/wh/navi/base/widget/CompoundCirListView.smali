.class public Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private final mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

.field private final mScrollbar:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f030010

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CircularListView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->mScrollbar:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->mScrollbar:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->setAbsListView(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public getListView()Lcom/autonavi/wh/navi/base/widget/CircularListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setPageNumberEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->mScrollbar:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->setPageNumberEnabled(Z)V

    return-void
.end method

.method public setScrollbarIsVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->mScrollbar:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->mScrollbar:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleView(I)V
    .locals 2

    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
