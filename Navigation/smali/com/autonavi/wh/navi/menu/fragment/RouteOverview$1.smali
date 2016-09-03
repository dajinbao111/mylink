.class Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculationResult(ILcom/autonavi/navigation/api/route/model/CalculationResult;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$000(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$000(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # invokes: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->dismissDialog(I)V
    invoke-static {v0, v3}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$100(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;I)V

    :cond_0
    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mExtrIsStartGuidanceOnDestory:Z
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$202(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;Z)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$302(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$400(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$300(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;
    invoke-static {v2}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$500(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    # invokes: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->selectRoute(Lcom/autonavi/navigation/api/route/model/Route;)V
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$600(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;Lcom/autonavi/navigation/api/route/model/Route;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$700(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapType()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$700(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$300(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    # invokes: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->selectRoute(Lcom/autonavi/navigation/api/route/model/Route;)V
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$600(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;Lcom/autonavi/navigation/api/route/model/Route;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$300(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    # invokes: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->selectRoute(Lcom/autonavi/navigation/api/route/model/Route;)V
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$600(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;Lcom/autonavi/navigation/api/route/model/Route;)V

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$800(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$800(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$800(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$800(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$800(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_1
.end method
