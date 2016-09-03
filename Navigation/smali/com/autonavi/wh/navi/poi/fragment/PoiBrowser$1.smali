.class Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$000(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$100(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$200(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$300(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getStart()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$400(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getStart()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    new-instance v2, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v3, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v3}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$500(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    # invokes: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->comparePoi(Lcom/autonavi/navigation/api/poi/model/Poi;Lcom/autonavi/navigation/api/poi/model/Poi;)Z
    invoke-static {v0, v1, v2}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$600(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;Lcom/autonavi/navigation/api/poi/model/Poi;Lcom/autonavi/navigation/api/poi/model/Poi;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    new-instance v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v2}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$700(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRoam:Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1300(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1400(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/wh/navi/base/util/CommonUtil;->getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1500(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/CommonUtil;->getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1600(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    :cond_2
    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1700(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # invokes: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v1, v0, v4}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1100(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$2100(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$2200(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addAllRules()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$2300(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    # invokes: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->requestComputeMultiRoute(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$2400(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1000(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    new-instance v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v2}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$900(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # invokes: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v1, v0, v4}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1100(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1200(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1900(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;
    invoke-static {v2}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    :cond_6
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$2000(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;->this$0:Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    # getter for: Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;
    invoke-static {v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->access$1800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    goto/16 :goto_1
.end method
