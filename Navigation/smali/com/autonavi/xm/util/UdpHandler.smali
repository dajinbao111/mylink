.class public Lcom/autonavi/xm/util/UdpHandler;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_TIME_OUT_MILLIS:I = 0x4e20

.field public static final ERROR_NETWORK_EXCEPTION:I = -0x3

.field public static final ERROR_TIME_OUT:I = -0x2

.field public static final ERROR_UNKNOWN_HOST:I = -0x1

.field private static final MAX_BUFFER_SIZE:I = 0x1400


# instance fields
.field private mCallback:Lcom/autonavi/xm/util/UdpHandler$Callback;

.field private mCurUdpRunner:Lcom/autonavi/xm/util/UdpHandler$UdpRunner;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/UdpHandler;-><init>(Lcom/autonavi/xm/util/UdpHandler$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/util/UdpHandler$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/util/UdpHandler;->setCallback(Lcom/autonavi/xm/util/UdpHandler$Callback;)V

    return-void
.end method


# virtual methods
.method public abortCurrentRequest()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/UdpHandler;->mCurUdpRunner:Lcom/autonavi/xm/util/UdpHandler$UdpRunner;

    invoke-virtual {v0}, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;->abort()V

    return-void
.end method

.method protected onError(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/UdpHandler;->mCallback:Lcom/autonavi/xm/util/UdpHandler$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/util/UdpHandler;->mCallback:Lcom/autonavi/xm/util/UdpHandler$Callback;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xm/util/UdpHandler$Callback;->onError(II)V

    :cond_0
    return-void
.end method

.method protected onReceive(I[BI)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/UdpHandler;->mCallback:Lcom/autonavi/xm/util/UdpHandler$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/util/UdpHandler;->mCallback:Lcom/autonavi/xm/util/UdpHandler$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/xm/util/UdpHandler$Callback;->onReceive(I[BI)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public send(Ljava/lang/String;I[BII)V
    .locals 7

    new-instance v0, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xm/util/UdpHandler$UdpRunner;-><init>(Lcom/autonavi/xm/util/UdpHandler;Ljava/lang/String;I[BII)V

    iput-object v0, p0, Lcom/autonavi/xm/util/UdpHandler;->mCurUdpRunner:Lcom/autonavi/xm/util/UdpHandler$UdpRunner;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/autonavi/xm/util/UdpHandler;->mCurUdpRunner:Lcom/autonavi/xm/util/UdpHandler$UdpRunner;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setCallback(Lcom/autonavi/xm/util/UdpHandler$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/util/UdpHandler;->mCallback:Lcom/autonavi/xm/util/UdpHandler$Callback;

    return-void
.end method
