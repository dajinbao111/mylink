.class Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # setter for: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isAddWayPoint:Z
    invoke-static {v0, v3}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$902(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getStart()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    new-instance v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v2, v2, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v1, v0, v3}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$2100(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$2200(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$2200(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;
    invoke-static {v2}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$2200(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xm/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;
    invoke-static {v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$2200(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v1, v0, v3}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$2100(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addAllRules()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->routeCalculate()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$2300(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    :cond_4
    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    goto :goto_0
.end method
