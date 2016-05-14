.class Lcom/autonavi/xm/navi/menu/fragment/RouteManagement$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/autonavi/navigation/api/route/model/Route;

    check-cast v0, [Lcom/autonavi/navigation/api/route/model/Route;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->handleRouteResult([Lcom/autonavi/navigation/api/route/model/Route;)V
    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->access$500(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;[Lcom/autonavi/navigation/api/route/model/Route;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->handleGoBackResult(I)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->access$600(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;

    const/4 v1, 0x1

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->handleGuideStatue(Z)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->access$700(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;

    const/4 v1, 0x0

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->handleGuideStatue(Z)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->access$700(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
