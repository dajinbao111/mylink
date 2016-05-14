.class Lcom/autonavi/xm/navigation/engine/l$c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/autonavi/xm/navigation/engine/l;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navigation/engine/l;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-wide/16 v3, 0x4e20

    const-wide/16 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->b(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navigation/engine/l;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v3, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidTmc;->a([Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v1, v3, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/l;->c(Lcom/autonavi/xm/navigation/engine/l;)Lcom/autonavi/xm/a/b;

    move-result-object v1

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    aget-object v0, v0, v2

    invoke-static {v3, v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xm/a/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->b(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navigation/engine/l;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v3, :cond_3

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_0

    :cond_3
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v3}, Lcom/autonavi/xm/navigation/engine/l;->d(Lcom/autonavi/xm/navigation/engine/l;)I

    move-result v3

    invoke-static {v3, v1, v0}, Lcom/autonavi/xm/navigation/engine/MidTmc;->a(IZ[Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v3, v4, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0, v3}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v3}, Lcom/autonavi/xm/navigation/engine/l;->c(Lcom/autonavi/xm/navigation/engine/l;)Lcom/autonavi/xm/a/b;

    move-result-object v3

    iget-object v4, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    aget-object v0, v0, v2

    invoke-static {v4, v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/autonavi/xm/a/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->b(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->e(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0, v7, v8}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;J)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0, v7, v8}, Lcom/autonavi/xm/navigation/engine/l;->b(Lcom/autonavi/xm/navigation/engine/l;J)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->b(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v5, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    sget-object v6, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v6, :cond_6

    :goto_1
    invoke-static {v5, v1}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;Z)Z

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/l;->e(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0, v7, v8}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;J)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;Lcom/autonavi/xm/navigation/server/GStatus;)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0, v3, v4}, Lcom/autonavi/xm/navigation/engine/l;->b(Lcom/autonavi/xm/navigation/engine/l;J)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidTmc;->e()I

    move-result v0

    const/16 v1, 0x3fa

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0, v2}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0, v7, v8}, Lcom/autonavi/xm/navigation/engine/l;->b(Lcom/autonavi/xm/navigation/engine/l;J)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->b(Lcom/autonavi/xm/navigation/engine/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->f(Lcom/autonavi/xm/navigation/engine/l;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/l;->g(Lcom/autonavi/xm/navigation/engine/l;)Lcom/autonavi/xm/navigation/engine/l$b;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/l;->g(Lcom/autonavi/xm/navigation/engine/l;)Lcom/autonavi/xm/navigation/engine/l$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xm/navigation/engine/l$b;->B()V

    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/l;->h(Lcom/autonavi/xm/navigation/engine/l;)J

    move-result-wide v0

    :goto_3
    invoke-static {v2, v0, v1}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;J)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/engine/l;Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_2

    :cond_b
    move-wide v0, v3

    goto :goto_3

    :pswitch_5
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidTmc;->c()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/g;->a()Lcom/autonavi/xm/navigation/engine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/l;->g(Lcom/autonavi/xm/navigation/engine/l;)Lcom/autonavi/xm/navigation/engine/l$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l$c;->a:Lcom/autonavi/xm/navigation/engine/l;

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/l;->g(Lcom/autonavi/xm/navigation/engine/l;)Lcom/autonavi/xm/navigation/engine/l$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/xm/navigation/engine/l$b;->a(Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
