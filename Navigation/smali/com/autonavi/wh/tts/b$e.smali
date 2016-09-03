.class Lcom/autonavi/wh/tts/b$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/autonavi/wh/tts/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Z

.field private final e:Lcom/autonavi/wh/tts/b$d;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/tts/b;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/wh/tts/b$e;->a:Lcom/autonavi/wh/tts/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/wh/tts/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/autonavi/wh/tts/b$d;-><init>(Lcom/autonavi/wh/tts/b;Lcom/autonavi/wh/tts/b$d;)V

    iput-object v0, p0, Lcom/autonavi/wh/tts/b$e;->e:Lcom/autonavi/wh/tts/b$d;

    invoke-static {p1}, Lcom/autonavi/wh/tts/b;->i(Lcom/autonavi/wh/tts/b;)Lcom/autonavi/wh/tts/TtsSynthesizer;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/tts/b$e;->e:Lcom/autonavi/wh/tts/b$d;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/tts/TtsSynthesizer;->a(Lcom/autonavi/wh/tts/TtsSynthesizer$OnDataOutputListener;)Z

    iput-object p2, p0, Lcom/autonavi/wh/tts/b$e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/wh/tts/b$e;->c:Ljava/lang/Integer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/tts/b$e;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/tts/b$e;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/tts/b$e;->e:Lcom/autonavi/wh/tts/b$d;

    invoke-virtual {v0}, Lcom/autonavi/wh/tts/b$d;->a()V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/autonavi/wh/tts/b$e;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/wh/tts/b$e;->c:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/tts/b$e;->d:Z

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/tts/b$e;->e:Lcom/autonavi/wh/tts/b$d;

    invoke-virtual {v0}, Lcom/autonavi/wh/tts/b$d;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/tts/b$e;->d:Z

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

.method public run()V
    .locals 4

    const/4 v1, -0x1

    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/wh/tts/b$e;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/tts/b$e;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/tts/b$e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/wh/tts/b$e;->b:Ljava/lang/String;

    const-string v3, "[p500]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[p500]"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/wh/tts/b$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[p500]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/wh/tts/b$e;->a:Lcom/autonavi/wh/tts/b;

    invoke-static {v2}, Lcom/autonavi/wh/tts/b;->i(Lcom/autonavi/wh/tts/b;)Lcom/autonavi/wh/tts/TtsSynthesizer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/autonavi/wh/tts/TtsSynthesizer;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/tts/b$e;->b:Ljava/lang/String;

    if-ltz v2, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/tts/b$e;->a:Lcom/autonavi/wh/tts/b;

    invoke-static {v0}, Lcom/autonavi/wh/tts/b;->b(Lcom/autonavi/wh/tts/b;)V

    goto :goto_0

    :cond_2
    if-ne v2, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/tts/b$e;->a:Lcom/autonavi/wh/tts/b;

    invoke-static {v0}, Lcom/autonavi/wh/tts/b;->j(Lcom/autonavi/wh/tts/b;)V

    goto :goto_0

    :cond_3
    const/high16 v0, -0x80000000

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/autonavi/wh/tts/b$e;->a:Lcom/autonavi/wh/tts/b;

    iget-object v3, p0, Lcom/autonavi/wh/tts/b$e;->c:Ljava/lang/Integer;

    invoke-static {v2, v0, v3}, Lcom/autonavi/wh/tts/b;->a(Lcom/autonavi/wh/tts/b;ILjava/lang/Integer;)V

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    const/4 v0, -0x2

    goto :goto_1

    :cond_4
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/autonavi/wh/tts/b$e;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
