.class Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private mActions:Ljava/util/ArrayList;

.field private mDisabledIds:Ljava/util/HashSet;

.field final synthetic this$0:Lcom/autonavi/xm/navi/base/widget/ActionListView;


# direct methods
.method private constructor <init>(Lcom/autonavi/xm/navi/base/widget/ActionListView;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->this$0:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mDisabledIds:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xm/navi/base/widget/ActionListView;Lcom/autonavi/xm/navi/base/widget/ActionListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;-><init>(Lcom/autonavi/xm/navi/base/widget/ActionListView;)V

    return-void
.end method


# virtual methods
.method public getAction(I)Lcom/autonavi/xm/navi/base/widget/ActionListView$Action;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/ActionListView$Action;

    invoke-interface {v0}, Lcom/autonavi/xm/navi/base/widget/ActionListView$Action;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/ActionListView$Action;

    invoke-interface {v0}, Lcom/autonavi/xm/navi/base/widget/ActionListView$Action;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/ActionListView$Action;

    invoke-interface {v0}, Lcom/autonavi/xm/navi/base/widget/ActionListView$Action;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->isEnabled(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 2

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mDisabledIds:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/ActionListView$Action;

    invoke-interface {v0}, Lcom/autonavi/xm/navi/base/widget/ActionListView$Action;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionEnabled(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mDisabledIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mDisabledIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setActions(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/ActionListView$ActionAdapter;->notifyDataSetChanged()V

    return-void
.end method
