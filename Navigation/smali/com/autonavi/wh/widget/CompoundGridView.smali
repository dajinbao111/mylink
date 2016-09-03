.class public Lcom/autonavi/wh/widget/CompoundGridView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mGridView:Landroid/widget/GridView;

.field private mScrollbar:Lcom/autonavi/wh/widget/CompoundScrollbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/widget/CompoundGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/autonavi/wh/framework/R$layout;->compound_grid_view:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/autonavi/wh/framework/R$id;->grid:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/CompoundGridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/autonavi/wh/widget/CompoundGridView;->mGridView:Landroid/widget/GridView;

    sget v0, Lcom/autonavi/wh/framework/R$id;->scrollbar:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/CompoundGridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/widget/CompoundScrollbar;

    iput-object v0, p0, Lcom/autonavi/wh/widget/CompoundGridView;->mScrollbar:Lcom/autonavi/wh/widget/CompoundScrollbar;

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundGridView;->mScrollbar:Lcom/autonavi/wh/widget/CompoundScrollbar;

    iget-object v1, p0, Lcom/autonavi/wh/widget/CompoundGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/widget/CompoundScrollbar;->setAbsListView(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public getGridView()Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundGridView;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public setPageNumberEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundGridView;->mScrollbar:Lcom/autonavi/wh/widget/CompoundScrollbar;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/widget/CompoundScrollbar;->setPageNumberEnabled(Z)V

    return-void
.end method
