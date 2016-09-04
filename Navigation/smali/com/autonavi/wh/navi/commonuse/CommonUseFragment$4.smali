.class Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculationResult(ILcom/autonavi/navigation/api/route/model/CalculationResult;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # invokes: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$200(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$300(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$300(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    const/4 v1, 0x5

    # invokes: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->dismissDialog(I)V
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$400(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;I)V

    :cond_1
    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mIsReturn:Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$500(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v2}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$000(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v2

    const-class v3, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "action.GUIDE_ROUTE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.autonavi.wh.action.NAVIGATE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    iput-object p2, v0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->routeCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$000(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    const-class v2, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_routes_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_start_guidance_on_destory"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$000(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$000(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$000(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_6
    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$000(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$000(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0
.end method
