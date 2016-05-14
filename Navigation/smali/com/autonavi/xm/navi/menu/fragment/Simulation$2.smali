.class Lcom/autonavi/xm/navi/menu/fragment/Simulation$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    const/4 v1, 0x1

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setBoardsEnabled(Z)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$2200(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    const/4 v1, 0x0

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setStateRelatedButtonVisable(Z)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$2300(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGrpSimulationBar:Landroid/view/View;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$1600(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
