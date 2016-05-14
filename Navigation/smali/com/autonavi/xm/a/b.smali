.class public Lcom/autonavi/xm/a/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Lcom/autonavi/xm/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/autonavi/xm/a/b;->c()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/a/b;-><init>(Lcom/autonavi/xm/a/b$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/a/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/autonavi/xm/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/a/b;->a(Lcom/autonavi/xm/a/b$a;)V

    return-void
.end method

.method static synthetic a()Ljava/net/Proxy;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/a/b;->b()Ljava/net/Proxy;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Ljava/net/Proxy;
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

.method private static final c()V
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


# virtual methods
.method public a(Lcom/autonavi/xm/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/a/b;->d:Lcom/autonavi/xm/a/b$a;

    return-void
.end method

.method protected a(Lcom/autonavi/xm/a/b$b;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/a/b;->d:Lcom/autonavi/xm/a/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/a/b;->d:Lcom/autonavi/xm/a/b$a;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xm/a/b$a;->a(Lcom/autonavi/xm/a/b$b;I)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/autonavi/xm/a/b$b;Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/a/b;->d:Lcom/autonavi/xm/a/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/a/b;->d:Lcom/autonavi/xm/a/b$a;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xm/a/b$a;->a(Lcom/autonavi/xm/a/b$b;Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/autonavi/xm/a/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/xm/a/b$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/autonavi/xm/a/b$b;-><init>(Lcom/autonavi/xm/a/b;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
