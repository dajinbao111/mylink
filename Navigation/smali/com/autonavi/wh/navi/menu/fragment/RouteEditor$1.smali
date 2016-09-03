.class Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculationResult(ILcom/autonavi/navigation/api/route/model/CalculationResult;)V
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    const-string v0, "==========\u8def\u7ebf\u7f16\u8f91\u4e2d\u7684"

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->access$100(Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->access$100(Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    const/4 v1, 0x0

    # invokes: Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->dismissDialog(I)V
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->access$200(Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;I)V

    :cond_0
    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mOrigDests:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->access$300(Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v1, v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v1, v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_routes_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_start_guidance_on_destory"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    const/16 v2, 0x17

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->startFragmentForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method
