.class public Lcom/autonavi/xm/navi/tmc/UpdateThread;
.super Ljava/lang/Thread;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsNeedNotify:Z

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navi/tmc/UpdateThread;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/autonavi/xm/navi/tmc/UpdateThread;->mUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/autonavi/xm/navi/tmc/UpdateThread;->mIsNeedNotify:Z

    return-void
.end method


# virtual methods
.method protected getBytes(Ljava/io/InputStream;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public run()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/tmc/UpdateThread;->mUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/autonavi/xm/navi/tmc/TmcHttp;->getInputstream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "tmc update:get response succ"

    invoke-static {v1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/tmc/UpdateThread;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xm/navi/tmc/UpdateThread;->sendResult(Z[B)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "tmc update:get response fail"

    invoke-static {v0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/tmc/UpdateThread;->sendResult(Z[B)V

    goto :goto_1
.end method

.method public sendResult(Z[B)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/xm/navi/tmc/UpdateThread;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/autonavi/xm/navi/tmc/UpdateThread;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    iget-boolean v2, p0, Lcom/autonavi/xm/navi/tmc/UpdateThread;->mIsNeedNotify:Z

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v2, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/tmc/UpdateThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
