.class Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$3;->this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$3;->this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    const/4 v1, 0x0

    # setter for: Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->mIsGuiding:Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->access$1802(Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$3;->this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->access$1700(Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->gotoMyLocation()V

    return-void
.end method

.method public onGuiding(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$3;->this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->access$600(Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->setFirst(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute$3;->this$0:Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;->access$1700(Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->gotoMyLocation()V

    return-void
.end method
