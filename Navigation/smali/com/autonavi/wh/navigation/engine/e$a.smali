.class Lcom/autonavi/wh/navigation/engine/e$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/autonavi/wh/navigation/engine/e;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/navigation/engine/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/e$a;->a:Lcom/autonavi/wh/navigation/engine/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/e$a;->a:Lcom/autonavi/wh/navigation/engine/e;

    invoke-static {v0}, Lcom/autonavi/wh/navigation/engine/e;->a(Lcom/autonavi/wh/navigation/engine/e;)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/e$a;->a:Lcom/autonavi/wh/navigation/engine/e;

    invoke-static {v0}, Lcom/autonavi/wh/navigation/engine/e;->b(Lcom/autonavi/wh/navigation/engine/e;)Lcom/autonavi/wh/navigation/engine/e$a;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/engine/e$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
