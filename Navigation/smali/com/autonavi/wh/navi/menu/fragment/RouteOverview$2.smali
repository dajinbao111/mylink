.class Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$2;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$2;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$400(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>(Lcom/autonavi/navigation/api/route/model/Route;Z)V

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->removeAllRules()V

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addAllRules()V

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview$2;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;->access$900(Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;)Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/navigation/api/route/RouteManager;->calculateRoute(ILcom/autonavi/navigation/api/route/model/CalculationInput;)V

    return-void
.end method
