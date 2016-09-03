.class Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorrectionResult(Lcom/autonavi/navigation/api/route/model/CalculationResult;)V
    .locals 4

    const-string v0, "===================onCorrectionResult"

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    const/4 v1, 0x4

    # invokes: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->dismissDialog(I)V
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1300(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/CommonUtil;->isBackground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v1

    # setter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1402(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v2}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1400(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput(Lcom/autonavi/navigation/api/route/model/Route;Z)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    const/4 v1, 0x0

    # setter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->isDeviate:Z
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1002(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;Z)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    # invokes: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->correctBtnPassByState(I)V
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1500(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$6;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method
