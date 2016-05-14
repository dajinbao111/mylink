.class public Lcom/autonavi/xm/navigation/engine/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:Lcom/autonavi/xm/navigation/engine/b;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/b;->c:Z

    return-void
.end method

.method public static final declared-synchronized a()Lcom/autonavi/xm/navigation/engine/b;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/b;->a:Lcom/autonavi/xm/navigation/engine/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/b;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/b;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/b;->a:Lcom/autonavi/xm/navigation/engine/b;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/b;->a:Lcom/autonavi/xm/navigation/engine/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidDemo;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/b;->b:Landroid/os/Handler;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/b;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidDemo;->a(Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/xm/navigation/engine/b;->c:Z

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/b;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidDemo;->a([Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([[Lcom/autonavi/xm/navigation/server/demo/GDemoModelList;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/MidDemo;->a([[Lcom/autonavi/xm/navigation/server/demo/GDemoModelList;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public c()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/b;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public d()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/b;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public e()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/b;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidDemo;->b()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    iput-boolean v1, p0, Lcom/autonavi/xm/navigation/engine/b;->c:Z

    goto :goto_0
.end method

.method public f()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidDemo;->c()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/b;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidDemo;->a()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/g;->a()Lcom/autonavi/xm/navigation/engine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
