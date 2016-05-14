.class Lcom/autonavi/xm/navigation/engine/m$b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/autonavi/xm/navigation/engine/m;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navigation/engine/m;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/m$b;->a:Lcom/autonavi/xm/navigation/engine/m;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/m$b;->a:Lcom/autonavi/xm/navigation/engine/m;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/m;->a(Lcom/autonavi/xm/navigation/engine/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidTrack;->a()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/m$b;->a:Lcom/autonavi/xm/navigation/engine/m;

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/m;->b(Lcom/autonavi/xm/navigation/engine/m;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/m$b;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/g;->a()Lcom/autonavi/xm/navigation/engine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/m$b;->a:Lcom/autonavi/xm/navigation/engine/m;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/m;->c(Lcom/autonavi/xm/navigation/engine/m;)Lcom/autonavi/xm/navigation/engine/m$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/m$b;->a:Lcom/autonavi/xm/navigation/engine/m;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/m;->c(Lcom/autonavi/xm/navigation/engine/m;)Lcom/autonavi/xm/navigation/engine/m$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/m$a;->h()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
