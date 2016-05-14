.class Lcom/autonavi/xm/tts/b$a;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/autonavi/xm/tts/b;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/tts/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/tts/b$a;->a:Lcom/autonavi/xm/tts/b;

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
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/autonavi/xm/tts/b$a;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v2}, Lcom/autonavi/xm/tts/b;->c(Lcom/autonavi/xm/tts/b;)Lcom/autonavi/xm/tts/b$c;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xm/tts/b$a;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v2}, Lcom/autonavi/xm/tts/b;->c(Lcom/autonavi/xm/tts/b;)Lcom/autonavi/xm/tts/b$c;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/autonavi/xm/tts/b$c;->a(II)V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/autonavi/xm/tts/b$a;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v2}, Lcom/autonavi/xm/tts/b;->d(Lcom/autonavi/xm/tts/b;)Lcom/autonavi/xm/tts/b$b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xm/tts/b$a;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v2}, Lcom/autonavi/xm/tts/b;->d(Lcom/autonavi/xm/tts/b;)Lcom/autonavi/xm/tts/b$b;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/autonavi/xm/tts/b$b;->a(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
