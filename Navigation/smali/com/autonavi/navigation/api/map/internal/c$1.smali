.class Lcom/autonavi/navigation/api/map/internal/c$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/map/internal/c;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/internal/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/c$1;->a:Lcom/autonavi/navigation/api/map/internal/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/c$1;->a:Lcom/autonavi/navigation/api/map/internal/c;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/c;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method
