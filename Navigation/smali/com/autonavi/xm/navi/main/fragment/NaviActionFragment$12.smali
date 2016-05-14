.class Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    new-instance v2, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {v2, v0, v3}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>(Lcom/autonavi/navigation/api/route/model/Route;Z)V

    iput-object v2, v1, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getStart()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    new-instance v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v2, v2, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====addWayPointByMapCenter=========mAnMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {v1}, Lcom/autonavi/xm/navi/base/util/CommonUtil;->getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v1, v0, v3}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$2100(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->routeCalculate()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$2300(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    # invokes: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->correctBtnPassByState(I)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$1500(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # setter for: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isAddWayPoint:Z
    invoke-static {v0, v3}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$902(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Z)Z

    :cond_2
    return-void
.end method
