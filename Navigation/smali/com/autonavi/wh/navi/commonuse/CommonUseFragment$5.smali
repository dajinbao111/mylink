.class Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

.field final synthetic val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    iput-object p2, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;
    invoke-static {v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$700(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    # setter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$602(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$600(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    new-instance v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v2}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$800(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # invokes: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$900(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;
    invoke-static {v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$600(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$000(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-static {v1, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$600(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # invokes: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$900(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;
    invoke-static {v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$600(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$600(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addAllRules()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$700(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;
    invoke-static {v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$600(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->calculateRoute(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$300(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$300(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->dismiss()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$300(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$300(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->dismiss()V

    goto :goto_0
.end method
