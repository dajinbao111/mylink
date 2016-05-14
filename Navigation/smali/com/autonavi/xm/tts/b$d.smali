.class Lcom/autonavi/xm/tts/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/tts/TtsSynthesizer$OnDataOutputListener;


# instance fields
.field final synthetic a:Lcom/autonavi/xm/tts/b;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/autonavi/xm/tts/b;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/tts/b$d;->a:Lcom/autonavi/xm/tts/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xm/tts/b$d;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xm/tts/b;Lcom/autonavi/xm/tts/b$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/tts/b$d;-><init>(Lcom/autonavi/xm/tts/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xm/tts/b$d;->b:I

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xm/tts/b$d;->b:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDataOutput([BII)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/xm/tts/b$d;->b:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/autonavi/xm/tts/b$d;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v2}, Lcom/autonavi/xm/tts/b;->e(Lcom/autonavi/xm/tts/b;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    iget-object v2, p0, Lcom/autonavi/xm/tts/b$d;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v2}, Lcom/autonavi/xm/tts/b;->f(Lcom/autonavi/xm/tts/b;)Lcom/autonavi/xm/tts/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xm/tts/b$d;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v3}, Lcom/autonavi/xm/tts/b;->g(Lcom/autonavi/xm/tts/b;)I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/autonavi/xm/tts/b$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v2, p0, Lcom/autonavi/xm/tts/b$d;->b:I

    if-ne v2, v4, :cond_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/autonavi/xm/tts/b$d;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v2}, Lcom/autonavi/xm/tts/b;->e(Lcom/autonavi/xm/tts/b;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    iget-object v2, p0, Lcom/autonavi/xm/tts/b$d;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v2}, Lcom/autonavi/xm/tts/b;->f(Lcom/autonavi/xm/tts/b;)Lcom/autonavi/xm/tts/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xm/tts/b$d;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v3}, Lcom/autonavi/xm/tts/b;->g(Lcom/autonavi/xm/tts/b;)I

    move-result v3

    invoke-virtual {v2, v1, v1, v3}, Lcom/autonavi/xm/tts/b$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget v2, p0, Lcom/autonavi/xm/tts/b$d;->b:I

    if-ne v2, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/autonavi/xm/tts/b$d;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v2}, Lcom/autonavi/xm/tts/b;->e(Lcom/autonavi/xm/tts/b;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    iget v3, p0, Lcom/autonavi/xm/tts/b$d;->b:I

    if-ne v3, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-gez v2, :cond_4

    const/high16 v0, -0x80000000

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xm/tts/b$d;->a:Lcom/autonavi/xm/tts/b;

    iget-object v3, p0, Lcom/autonavi/xm/tts/b$d;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v3}, Lcom/autonavi/xm/tts/b;->g(Lcom/autonavi/xm/tts/b;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/autonavi/xm/tts/b;->a(Lcom/autonavi/xm/tts/b;ILjava/lang/Integer;)V

    move v0, v1

    goto :goto_0

    :pswitch_0
    const/4 v0, -0x2

    goto :goto_1

    :pswitch_1
    const/4 v0, -0x3

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/autonavi/xm/tts/b$d;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v1}, Lcom/autonavi/xm/tts/b;->h(Lcom/autonavi/xm/tts/b;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
