.class Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlingEnd()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$300(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "onFlingEnd"

    const-string v1, "onFlingEnd"

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iput-boolean v2, v0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mIsFling:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->setMapInMotion(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onMapMoveEnd()V

    goto :goto_0
.end method

.method public onFlingStart()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$200(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->setMapInMotion(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$3;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iput-boolean v1, v0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mIsFling:Z

    goto :goto_0
.end method
