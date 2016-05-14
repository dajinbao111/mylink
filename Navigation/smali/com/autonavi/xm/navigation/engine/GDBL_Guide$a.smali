.class Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;->a:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;->a:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->b(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;->a:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->c(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->f(J)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/g;->a()Lcom/autonavi/xm/navigation/engine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;->removeMessages(I)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v2, v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
