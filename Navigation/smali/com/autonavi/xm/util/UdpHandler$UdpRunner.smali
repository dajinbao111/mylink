.class Lcom/autonavi/xm/util/UdpHandler$UdpRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mBuffer:[B

.field private mDataLen:I

.field private mHost:Ljava/lang/String;

.field private mIsRunning:Z

.field private mPort:I

.field private mRequestCode:I

.field final synthetic this$0:Lcom/autonavi/xm/util/UdpHandler;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/util/UdpHandler;Ljava/lang/String;I[BII)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->this$0:Lcom/autonavi/xm/util/UdpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mHost:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mPort:I

    const/16 v0, 0x1400

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mBuffer:[B

    iget-object v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mBuffer:[B

    invoke-static {p4, v1, v0, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p5, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mDataLen:I

    iput p6, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mRequestCode:I

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mIsRunning:Z

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v6, -0x3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mIsRunning:Z

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x4e20

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mHost:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget v3, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mPort:I

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mBuffer:[B

    iget v3, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mDataLen:I

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    :cond_0
    iget-boolean v2, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mIsRunning:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    iget-boolean v2, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mIsRunning:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->this$0:Lcom/autonavi/xm/util/UdpHandler;

    iget v3, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mRequestCode:I

    iget-object v4, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mBuffer:[B

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/autonavi/xm/util/UdpHandler;->onReceive(I[BI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->disconnect()V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->disconnect()V

    :cond_3
    throw v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mIsRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->this$0:Lcom/autonavi/xm/util/UdpHandler;

    iget v1, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mRequestCode:I

    invoke-virtual {v0, v1, v6}, Lcom/autonavi/xm/util/UdpHandler;->onError(II)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mIsRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->this$0:Lcom/autonavi/xm/util/UdpHandler;

    iget v1, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mRequestCode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/util/UdpHandler;->onError(II)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-boolean v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mIsRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->this$0:Lcom/autonavi/xm/util/UdpHandler;

    iget v1, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mRequestCode:I

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/util/UdpHandler;->onError(II)V

    goto :goto_0

    :catch_3
    move-exception v0

    iget-boolean v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mIsRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->this$0:Lcom/autonavi/xm/util/UdpHandler;

    iget v1, p0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->mRequestCode:I

    invoke-virtual {v0, v1, v6}, Lcom/autonavi/xm/util/UdpHandler;->onError(II)V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
