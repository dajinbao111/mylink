.class Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

.field final synthetic val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    iput-object p2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    iget-object v2, v2, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # invokes: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v2, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$500(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v2}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$400(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-static {v2, v3}, Lcom/autonavi/wh/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->val$poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # invokes: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    invoke-static {v2, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$500(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addAllRules()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->calculateRoute(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$200(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$200(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->dismiss()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$200(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$200(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->dismiss()V

    goto :goto_0
.end method
