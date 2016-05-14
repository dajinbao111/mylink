.class Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/favorites/FavoritesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculationResult(ILcom/autonavi/navigation/api/route/model/CalculationResult;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    # invokes: Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->access$100(Lcom/autonavi/xm/navi/favorites/FavoritesFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->access$200(Lcom/autonavi/xm/navi/favorites/FavoritesFragment;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->access$200(Lcom/autonavi/xm/navi/favorites/FavoritesFragment;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    const/16 v1, 0xa

    # invokes: Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->dismissDialog(I)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->access$300(Lcom/autonavi/xm/navi/favorites/FavoritesFragment;I)V

    :cond_1
    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    invoke-static {v1}, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->access$400(Lcom/autonavi/xm/navi/favorites/FavoritesFragment;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    move-result-object v1

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_start_guidance_on_destory"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "key_routes_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->access$400(Lcom/autonavi/xm/navi/favorites/FavoritesFragment;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->access$400(Lcom/autonavi/xm/navi/favorites/FavoritesFragment;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->access$400(Lcom/autonavi/xm/navi/favorites/FavoritesFragment;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->access$400(Lcom/autonavi/xm/navi/favorites/FavoritesFragment;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xm/navi/favorites/FavoritesFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;->access$400(Lcom/autonavi/xm/navi/favorites/FavoritesFragment;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0
.end method
