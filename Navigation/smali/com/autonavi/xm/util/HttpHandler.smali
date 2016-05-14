.class public Lcom/autonavi/xm/util/HttpHandler;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_TIME_OUT_MILLIS:I = 0x4e20

.field public static final ERROR:I = -0x1

.field public static final ERROR_ILLEGAL_URL:I = -0x2

.field public static final ERROR_TIME_OUT:I = -0x3

.field public static final ERROR_UNSUPPORTED_ENCODING:I = -0x4


# instance fields
.field private mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

.field mCookie:Ljava/lang/String;

.field mEncoding:Ljava/lang/String;

.field private mIsCookieEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/autonavi/xm/util/HttpHandler;->disableConnectionReuseIfNecessary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/HttpHandler;-><init>(Lcom/autonavi/xm/util/HttpHandler$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/util/HttpHandler$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mEncoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mIsCookieEnabled:Z

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/util/HttpHandler;->setCallback(Lcom/autonavi/xm/util/HttpHandler$Callback;)V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Proxy;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/util/HttpHandler;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/util/HttpHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mIsCookieEnabled:Z

    return v0
.end method

.method private static final disableConnectionReuseIfNecessary()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static final getProxy()Ljava/net/Proxy;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object v2, v1

    move v1, v0

    :goto_1
    if-eqz v2, :cond_2

    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_2
    return-object v0

    :cond_0
    const-string v0, "-1"

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    move-object v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public createTask(Ljava/lang/String;Ljava/lang/String;I)Lcom/autonavi/xm/util/HttpHandler$HttpTask;
    .locals 1

    new-instance v0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/autonavi/xm/util/HttpHandler$HttpTask;-><init>(Lcom/autonavi/xm/util/HttpHandler;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onError(Lcom/autonavi/xm/util/HttpHandler$HttpTask;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xm/util/HttpHandler$Callback;->onError(Lcom/autonavi/xm/util/HttpHandler$HttpTask;I)V

    :cond_0
    return-void
.end method

.method protected onResponse(Lcom/autonavi/xm/util/HttpHandler$HttpTask;Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xm/util/HttpHandler$Callback;->onResponse(Lcom/autonavi/xm/util/HttpHandler$HttpTask;Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/autonavi/xm/util/HttpHandler$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    return-void
.end method

.method public setCookieEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/util/HttpHandler;->mIsCookieEnabled:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/util/HttpHandler;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public submit(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/autonavi/xm/util/HttpHandler;->submit(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public submit(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/xm/util/HttpHandler;->createTask(Ljava/lang/String;Ljava/lang/String;I)Lcom/autonavi/xm/util/HttpHandler$HttpTask;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
