.class Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter$a;->a:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter$a;->a:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    # getter for: Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->b:Lcom/autonavi/navigation/api/support/hardware/a/a$a;
    invoke-static {v0}, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->access$000(Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;)Lcom/autonavi/navigation/api/support/hardware/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter$a;->a:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    # getter for: Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->b:Lcom/autonavi/navigation/api/support/hardware/a/a$a;
    invoke-static {v0}, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->access$000(Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;)Lcom/autonavi/navigation/api/support/hardware/a/a$a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/support/hardware/a/a$a;->a(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
