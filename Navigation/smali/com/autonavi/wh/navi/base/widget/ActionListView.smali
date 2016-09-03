.class public Lcom/autonavi/wh/navi/base/widget/ActionListView;
.super Lcom/autonavi/wh/navi/base/widget/CircularListView;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mActionAdapter:Lcom/autonavi/wh/navi/base/widget/ActionListView$ActionAdapter;

.field private mOnActionListener:Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/wh/navi/base/widget/ActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/wh/navi/base/widget/ActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/wh/navi/base/widget/CircularListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p0}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/ActionListView$ActionAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/wh/navi/base/widget/ActionListView$ActionAdapter;-><init>(Lcom/autonavi/wh/navi/base/widget/ActionListView;Lcom/autonavi/wh/navi/base/widget/ActionListView$1;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/ActionListView;->mActionAdapter:Lcom/autonavi/wh/navi/base/widget/ActionListView$ActionAdapter;

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/ActionListView;->mActionAdapter:Lcom/autonavi/wh/navi/base/widget/ActionListView$ActionAdapter;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public getAction(I)Lcom/autonavi/wh/navi/base/widget/ActionListView$Action;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/ActionListView;->mActionAdapter:Lcom/autonavi/wh/navi/base/widget/ActionListView$ActionAdapter;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navi/base/widget/ActionListView$ActionAdapter;->getAction(I)Lcom/autonavi/wh/navi/base/widget/ActionListView$Action;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/ActionListView;->mOnActionListener:Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/ActionListView;->mOnActionListener:Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;

    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;->onAction(I)V

    :cond_0
    return-void
.end method

.method public setActionEnabled(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/ActionListView;->mActionAdapter:Lcom/autonavi/wh/navi/base/widget/ActionListView$ActionAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navi/base/widget/ActionListView$ActionAdapter;->setActionEnabled(IZ)V

    return-void
.end method

.method public setActions(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/ActionListView;->mActionAdapter:Lcom/autonavi/wh/navi/base/widget/ActionListView$ActionAdapter;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navi/base/widget/ActionListView$ActionAdapter;->setActions(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setOnActionListener(Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/base/widget/ActionListView;->mOnActionListener:Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;

    return-void
.end method
