.class Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mtRouteSteps:Ljava/util/List;

.field final synthetic this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->mtRouteSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->mtRouteSteps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->mtRouteSteps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RouteStep;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->mtRouteSteps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RouteStep;

    const v1, 0x7f0800a5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0800b8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0800b7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0800a3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v7, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->mContext:Landroid/content/Context;

    const-string v8, "ic_turning_small_%d"

    iget v9, v0, Lcom/autonavi/navigation/api/route/model/RouteStep;->turnningId:I

    invoke-static {v7, v8, v9}, Lcom/autonavi/xm/navi/base/util/ResUtil;->getTurningIconRes(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/autonavi/navigation/api/route/model/RouteStep;->roadName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->mFormatter:Lcom/autonavi/xm/navi/base/util/Formatter;
    invoke-static {v1}, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->access$900(Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/xm/navi/base/util/Formatter;

    move-result-object v1

    iget v2, v0, Lcom/autonavi/navigation/api/route/model/RouteStep;->nextDistance:I

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/base/util/Formatter;->getDistance(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Lcom/autonavi/navigation/api/route/model/RouteStep;->nextDistance:I

    if-nez v1, :cond_6

    move v1, v5

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v1, v0, Lcom/autonavi/navigation/api/route/model/RouteStep;->nextDistance:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    :cond_1
    move v6, v5

    :cond_2
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RouteStep;->containsRoutePoint()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RouteStep;->isPassed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RouteStep;->isMyLocation()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->mRoutesList:Lcom/autonavi/xm/navi/base/widget/CircularListView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->access$1900(Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/xm/navi/base/widget/CircularListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->mRoutesList:Lcom/autonavi/xm/navi/base/widget/CircularListView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->access$1900(Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/xm/navi/base/widget/CircularListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->requestFocus()Z

    :cond_5
    return-object p2

    :cond_6
    move v1, v6

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->mtRouteSteps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->notifyDataSetChanged()V

    return-void
.end method
