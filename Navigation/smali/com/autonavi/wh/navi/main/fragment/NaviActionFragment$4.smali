.class Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculationResult(ILcom/autonavi/navigation/api/route/model/CalculationResult;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$500(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # setter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mCalculationResultIng:Z
    invoke-static {v0, v4}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$602(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;Z)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->isPoiBrowserIn:Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$700(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->dismissFragmentDialog(I)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # setter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->isPoiBrowserIn:Z
    invoke-static {v0, v3}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$702(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;Z)Z

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getResultCode()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v2

    iput-object v2, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->closeZoomView()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->refreshMap()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iput-object p2, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->routeCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_routes_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_start_guidance_on_destory"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->startFragment(Landroid/content/Intent;)V

    :goto_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # setter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mCalculationResultIng:Z
    invoke-static {v0, v3}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$602(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->dismissDialog(I)V
    invoke-static {v0, v3}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$800(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;I)V

    goto :goto_1

    :cond_2
    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->isAddWayPoint:Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$900(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    const v2, 0x7f0b008d

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$4;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_2
.end method
