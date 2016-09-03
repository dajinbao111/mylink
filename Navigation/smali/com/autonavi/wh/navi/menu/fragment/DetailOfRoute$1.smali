.class Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculationResult(ILcom/autonavi/navigation/api/route/model/CalculationResult;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsPresent:Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$000(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # invokes: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->dismissDialog(I)V
    invoke-static {v0, v6}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$100(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;I)V

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;
    invoke-static {v0, p2}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$202(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Lcom/autonavi/navigation/api/route/model/CalculationResult;)Lcom/autonavi/navigation/api/route/model/CalculationResult;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$302(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->isDetourSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsRouteRecompting:Z
    invoke-static {v0, v5}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$402(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Z)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ba

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;
    invoke-static {v4}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$500(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/RouteStep;

    move-result-object v4

    iget-object v4, v4, Lcom/autonavi/navigation/api/route/model/RouteStep;->roadName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$200(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;
    invoke-static {v2}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$800(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$702(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$700(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvTotalDistance:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$1000(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$900(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/base/util/Formatter;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v2}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$700(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v2

    iget v2, v2, Lcom/autonavi/navigation/api/route/model/Route;->totalDistance:I

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->getDistance(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$700(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v1

    iget v1, v1, Lcom/autonavi/navigation/api/route/model/Route;->totalDistance:I

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTotalDistance:I
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$1102(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;I)I

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvExpectedTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$1200(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v2}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$700(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v2

    iget v2, v2, Lcom/autonavi/navigation/api/route/model/Route;->totalArrivalTime:I

    invoke-static {v1, v2}, Lcom/autonavi/wh/text/TextFormatter;->formatElapsedTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvTolls:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$1300(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v2}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$700(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v2

    iget v2, v2, Lcom/autonavi/navigation/api/route/model/Route;->totalTollGate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v2}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v2

    const v3, 0x7f0b0107

    invoke-virtual {v2, v3}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    if-ne p1, v5, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$700(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/Route;->getRouteSteps()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$1402(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mGuideRoadInfoAdapter:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$1500(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$1400(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->setData(Ljava/util/List;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bb

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;
    invoke-static {v4}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$500(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/RouteStep;

    move-result-object v4

    iget-object v4, v4, Lcom/autonavi/navigation/api/route/model/RouteStep;->roadName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$200(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$302(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$200(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;
    invoke-static {v2}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$800(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$702(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$300(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$500(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/RouteStep;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$300(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$500(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/RouteStep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->removeDetour(Lcom/autonavi/navigation/api/route/Detourable;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/Route;->getRouteSteps()Ljava/util/List;

    move-result-object v0

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$1402(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mGuideRoadInfoAdapter:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$1500(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$1400(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->setData(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_4
    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->access$600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_1
.end method
