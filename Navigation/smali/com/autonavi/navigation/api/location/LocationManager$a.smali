.class Lcom/autonavi/navigation/api/location/LocationManager$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/location/LocationManager;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/location/LocationManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/location/LocationManager$a;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager$a;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    # getter for: Lcom/autonavi/navigation/api/location/LocationManager;->k:Z
    invoke-static {v0}, Lcom/autonavi/navigation/api/location/LocationManager;->access$100(Lcom/autonavi/navigation/api/location/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager$a;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/autonavi/navigation/api/location/LocationManager;->setSensorAccuracy(I)V
    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/location/LocationManager;->access$300(Lcom/autonavi/navigation/api/location/LocationManager;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager$a;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    # invokes: Lcom/autonavi/navigation/api/location/LocationManager;->doSetLocationStatus(I)V
    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/location/LocationManager;->access$200(Lcom/autonavi/navigation/api/location/LocationManager;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager$a;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/autonavi/navigation/api/location/LocationManager;->doSetLocationStatus(I)V
    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/location/LocationManager;->access$200(Lcom/autonavi/navigation/api/location/LocationManager;I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager$a;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    # invokes: Lcom/autonavi/navigation/api/location/LocationManager;->setLocation(Landroid/location/Location;)V
    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/location/LocationManager;->access$400(Lcom/autonavi/navigation/api/location/LocationManager;Landroid/location/Location;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager$a;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    # invokes: Lcom/autonavi/navigation/api/location/LocationManager;->refreshGpsStatus()V
    invoke-static {v0}, Lcom/autonavi/navigation/api/location/LocationManager;->access$500(Lcom/autonavi/navigation/api/location/LocationManager;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, [I

    check-cast v1, [I

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager$a;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    # getter for: Lcom/autonavi/navigation/api/location/LocationManager;->a:Lcom/autonavi/navigation/api/location/a/c;
    invoke-static {v0}, Lcom/autonavi/navigation/api/location/LocationManager;->access$000(Lcom/autonavi/navigation/api/location/LocationManager;)Lcom/autonavi/navigation/api/location/a/c;

    move-result-object v0

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/autonavi/navigation/api/location/a/c;->a(I[IJ)Z

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager$a;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    # getter for: Lcom/autonavi/navigation/api/location/LocationManager;->a:Lcom/autonavi/navigation/api/location/a/c;
    invoke-static {v0}, Lcom/autonavi/navigation/api/location/LocationManager;->access$000(Lcom/autonavi/navigation/api/location/LocationManager;)Lcom/autonavi/navigation/api/location/a/c;

    move-result-object v0

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/autonavi/navigation/api/location/a/c;->a(IIJ)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
