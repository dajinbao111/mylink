.class public Lcom/autonavi/wh/navigation/engine/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/autonavi/wh/a/b$a;


# static fields
.field private static a:Lcom/autonavi/wh/navigation/engine/n;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;

.field private f:Lcom/autonavi/wh/a/b;

.field private g:Lcom/autonavi/wh/navigation/engine/n$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/n;->b:Z

    const-string v0, "NusTest1"

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/n;->c:Ljava/lang/String;

    const-string v0, "123456"

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/n;->d:Ljava/lang/String;

    return-void
.end method

.method public static final declared-synchronized a()Lcom/autonavi/wh/navigation/engine/n;
    .locals 2

    const-class v1, Lcom/autonavi/wh/navigation/engine/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/n;->a:Lcom/autonavi/wh/navigation/engine/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/engine/n;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/engine/n;-><init>()V

    sput-object v0, Lcom/autonavi/wh/navigation/engine/n;->a:Lcom/autonavi/wh/navigation/engine/n;

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/n;->a:Lcom/autonavi/wh/navigation/engine/n;
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
.method a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/n;->e:Landroid/os/Handler;

    new-instance v0, Lcom/autonavi/wh/a/b;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/a/b;-><init>(Lcom/autonavi/wh/a/b$a;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/n;->f:Lcom/autonavi/wh/a/b;

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/a/b$b;I)V
    .locals 3

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/n;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_TIMEOUT:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Lcom/autonavi/wh/a/b$b;Ljava/io/InputStream;)V
    .locals 0

    return-void
.end method

.method b()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/n;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/autonavi/wh/navigation/engine/MidUgc;->NUS_MapLayerPoiUpdateParse([BI)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/n;->g:Lcom/autonavi/wh/navigation/engine/n$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/n;->g:Lcom/autonavi/wh/navigation/engine/n$a;

    invoke-interface {v1, v0}, Lcom/autonavi/wh/navigation/engine/n$a;->a(Lcom/autonavi/wh/navigation/server/GStatus;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/n;->g:Lcom/autonavi/wh/navigation/engine/n$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/n;->g:Lcom/autonavi/wh/navigation/engine/n$a;

    invoke-interface {v1, v0}, Lcom/autonavi/wh/navigation/engine/n$a;->a(Lcom/autonavi/wh/navigation/server/GStatus;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
