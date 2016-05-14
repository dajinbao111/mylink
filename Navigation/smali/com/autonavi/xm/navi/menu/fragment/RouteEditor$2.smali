.class Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v1, v1, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;
    invoke-static {v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$500(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v1

    # setter for: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$402(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$600(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/navigation/api/map/AnMapUtils;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v0

    new-instance v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v3, v0, Lcom/autonavi/navigation/api/map/model/MyLocation;->roadName:Ljava/lang/String;

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MyLocation;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v1, v3, v0}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Ljava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v2, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$700(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v1, v1, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v1, v1, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v1, v1, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v3, v1, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v1, v1, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v4, v4, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-static {v3, v1}, Lcom/autonavi/xm/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v1, v1, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$700(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addAllRules()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iput-object v2, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$600(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/route/RouteManager;->calculateRoute(ILcom/autonavi/navigation/api/route/model/CalculationInput;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v3, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$700(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$100(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$100(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->dismiss()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$100(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$100(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->dismiss()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$100(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->access$100(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->dismiss()V

    goto :goto_0
.end method
