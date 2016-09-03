.class Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$10;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$10;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mCalculationResultIng:Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$600(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$10;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1700(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$10;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/RouteManager;->stopRouteCalculation()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$10;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    const/4 v1, 0x1

    # setter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mIsComputingRouteCanceled:Z
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1802(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;Z)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$10;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mResumePreRoute:Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1900(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$10;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    const/4 v1, 0x0

    # setter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mResumePreRoute:Z
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1902(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;Z)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$10;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->clearRemainingDestinations()V
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$2000(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V

    goto :goto_0
.end method
