.class Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$300(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->setFirst(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "touch"

    const-string v1, "=============================onMapClick"

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isInHideState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterOperState()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setMapInMotion(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setMapInMotion(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->clickMapMotion(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    invoke-static {v0, p1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$400(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Lcom/autonavi/navigation/api/map/model/LatLng;)V

    goto :goto_0
.end method
