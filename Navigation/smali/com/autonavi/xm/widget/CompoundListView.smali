.class public Lcom/autonavi/xm/widget/CompoundListView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mScrollbar:Lcom/autonavi/xm/widget/CompoundScrollbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xm/widget/CompoundListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/autonavi/xm/framework/R$layout;->compound_list_view:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/autonavi/xm/framework/R$id;->list:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/autonavi/xm/widget/CompoundListView;->mListView:Landroid/widget/ListView;

    sget v0, Lcom/autonavi/xm/framework/R$id;->scrollbar:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/widget/CompoundScrollbar;

    iput-object v0, p0, Lcom/autonavi/xm/widget/CompoundListView;->mScrollbar:Lcom/autonavi/xm/widget/CompoundScrollbar;

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundListView;->mScrollbar:Lcom/autonavi/xm/widget/CompoundScrollbar;

    iget-object v1, p0, Lcom/autonavi/xm/widget/CompoundListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/widget/CompoundScrollbar;->setAbsListView(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundListView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setPageNumberEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundListView;->mScrollbar:Lcom/autonavi/xm/widget/CompoundScrollbar;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/widget/CompoundScrollbar;->setPageNumberEnabled(Z)V

    return-void
.end method

.method public setTitleView(I)V
    .locals 2

    sget v0, Lcom/autonavi/xm/framework/R$id;->stub_list_title:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    sget v0, Lcom/autonavi/xm/framework/R$id;->list_title_divider:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/CompoundListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
