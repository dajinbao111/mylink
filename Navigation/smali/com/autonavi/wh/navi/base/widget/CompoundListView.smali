.class public Lcom/autonavi/wh/navi/base/widget/CompoundListView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

.field private mScrollbar:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f030013

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/ActionListView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->mListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->mScrollbar:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->mScrollbar:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->mListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->setAbsListView(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public getListView()Lcom/autonavi/wh/navi/base/widget/ActionListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->mListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->mListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setPageNumberEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->mScrollbar:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->setPageNumberEnabled(Z)V

    return-void
.end method
