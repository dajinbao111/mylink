.class Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculationResult(ILcom/autonavi/navigation/api/route/model/CalculationResult;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->mDlgComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$000(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->mDlgComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$000(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # invokes: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->dismissDialog(I)V
    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$100(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->mIsPresent:Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$200(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$300(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$400(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->startGuide(Lcom/autonavi/navigation/api/route/model/Route;)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$300(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    const-class v2, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->startFragment(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$300(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$300(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$300(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_5
    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$300(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;->access$300(Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method
