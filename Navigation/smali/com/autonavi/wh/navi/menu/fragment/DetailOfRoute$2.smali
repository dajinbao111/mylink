.class Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$2;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorrectionResult(Lcom/autonavi/navigation/api/route/model/CalculationResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$2;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;
    invoke-static {v2}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$800(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$2;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$702(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$2;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # invokes: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->refreshView()V
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$1600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
