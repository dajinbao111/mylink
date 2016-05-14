.class Lcom/autonavi/navigation/api/guide/a/f$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/guide/a/f;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/guide/a/f;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/guide/a/f$a;->a:Lcom/autonavi/navigation/api/guide/a/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f$a;->a:Lcom/autonavi/navigation/api/guide/a/f;

    invoke-static {v0}, Lcom/autonavi/navigation/api/guide/a/f;->a(Lcom/autonavi/navigation/api/guide/a/f;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/guide/a/f$a;->removeMessages(I)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v2, v0, v1}, Lcom/autonavi/navigation/api/guide/a/f$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
