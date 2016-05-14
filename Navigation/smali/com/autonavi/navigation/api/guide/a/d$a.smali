.class Lcom/autonavi/navigation/api/guide/a/d$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/guide/a/d;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/guide/a/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/guide/a/d$a;->a:Lcom/autonavi/navigation/api/guide/a/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d$a;->a:Lcom/autonavi/navigation/api/guide/a/d;

    invoke-static {v0}, Lcom/autonavi/navigation/api/guide/a/d;->a(Lcom/autonavi/navigation/api/guide/a/d;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/navigation/api/guide/a/d$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
