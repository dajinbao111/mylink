.class Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$2500(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$2600(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$2700(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    new-instance v2, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {v2, v0, v3}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>(Lcom/autonavi/navigation/api/route/model/Route;Z)V

    iput-object v2, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$2800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getStart()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$3000(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    new-instance v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v2}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$2900(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v2

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

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$3100(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$3300(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$3200(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/wh/navi/base/util/CommonUtil;->getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # invokes: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v1, v0, v3}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1100(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$3400(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$3500(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$3600(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    # invokes: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->requestComputeMultiRoute(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$2400(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$3700(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    # invokes: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->correctBtnPassByState(I)V
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$3800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$4000(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    # invokes: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->correctBtnPassByState(I)V
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$3800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$3900(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    goto :goto_0
.end method
