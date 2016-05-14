.class public Lcom/autonavi/xm/http/HttpUtil;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_CONNECTION_TIMEOUT:I = -0x7

.field public static final ERROR_GET_CONTENT:I = -0x5

.field public static final ERROR_GET_REQUEST_DATA:I = -0xa

.field public static final ERROR_NETWORK_ABNORMAL:I = -0x2

.field public static final ERROR_PARSE_ERROR:I = -0x4

.field public static final ERROR_POST_ENCODING:I = -0x6

.field public static final ERROR_PROTOCOL_ERROR:I = -0x1

.field public static final ERROR_SOCKET_TIMEOUT:I = -0x8

.field public static final ERROR_STREAM_ERROR:I = -0x3

.field public static final PARAM_STREAM:I = 0x2

.field public static final PARAM_STRING:I = 0x1


# instance fields
.field private mCallbackType:Lcom/autonavi/xm/http/HttpUtil$CallbackType;

.field private mCallbacks:Ljava/util/ArrayList;

.field private mCallbacks2:Ljava/util/ArrayList;

.field private mDefaultResponseDataType:I

.field private mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mMainHandler:Landroid/os/Handler;

.field private mProxy:Lorg/apache/http/HttpHost;

.field private mRequestEncoding:Ljava/lang/String;

.field private mResponseContentEncoding:Ljava/lang/String;

.field private mShouldShutdownHttpClient:Z

.field private mUnfinishedRequests:Ljava/util/HashMap;

.field private mUnfinishedRequestsLock:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mShouldShutdownHttpClient:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;

    const-string v0, "UTF8"

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mRequestEncoding:Ljava/lang/String;

    const-string v0, "UTF8"

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mResponseContentEncoding:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequests:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequestsLock:[B

    invoke-virtual {p0}, Lcom/autonavi/xm/http/HttpUtil;->generateHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v0, Lcom/autonavi/xm/http/HttpUtil$CallbackType;->SubThreadCalled:Lcom/autonavi/xm/http/HttpUtil$CallbackType;

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbackType:Lcom/autonavi/xm/http/HttpUtil$CallbackType;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/http/HttpUtil;->setCallbackInvokedType(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/http/HttpUtil;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mShouldShutdownHttpClient:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;

    const-string v0, "UTF8"

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mRequestEncoding:Ljava/lang/String;

    const-string v0, "UTF8"

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mResponseContentEncoding:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequests:Ljava/util/HashMap;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequestsLock:[B

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/http/HttpUtil;->generateHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    :goto_0
    sget-object v0, Lcom/autonavi/xm/http/HttpUtil$CallbackType;->SubThreadCalled:Lcom/autonavi/xm/http/HttpUtil$CallbackType;

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbackType:Lcom/autonavi/xm/http/HttpUtil$CallbackType;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/http/HttpUtil;->setCallbackInvokedType(I)V

    return-void

    :cond_0
    invoke-direct {p1}, Lcom/autonavi/xm/http/HttpUtil;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput-boolean v1, p0, Lcom/autonavi/xm/http/HttpUtil;->mShouldShutdownHttpClient:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/autonavi/xm/http/HttpUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mRequestEncoding:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/http/HttpUtil;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/http/HttpUtil;->isMainThreadCalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/autonavi/xm/http/HttpUtil;)Lorg/apache/http/HttpHost;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mProxy:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/autonavi/xm/http/HttpUtil;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/autonavi/xm/http/HttpUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mResponseContentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/autonavi/xm/http/HttpUtil;)[B
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequestsLock:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xm/http/HttpUtil;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xm/http/HttpUtil;->removeUncanceledRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/xm/http/HttpUtil;)Landroid/os/Handler;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/http/HttpUtil;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/autonavi/xm/http/HttpUtil;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xm/http/HttpUtil;->isRequestUncanceled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/autonavi/xm/http/HttpUtil;ILorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/http/HttpUtil;->recordUnfinishedRequest(ILorg/apache/http/client/methods/HttpRequestBase;)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/http/HttpUtil;->isProxySet()Z

    move-result v0

    return v0
.end method

.method private getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method private getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mMainHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mMainHandler:Landroid/os/Handler;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getProxy()Lorg/apache/http/HttpHost;
    .locals 3

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private isMainThreadCalled()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbackType:Lcom/autonavi/xm/http/HttpUtil$CallbackType;

    sget-object v1, Lcom/autonavi/xm/http/HttpUtil$CallbackType;->MainThreadCalled:Lcom/autonavi/xm/http/HttpUtil$CallbackType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isProxySet()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/http/HttpUtil;->getProxy()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRequestUncanceled(I)Z
    .locals 3

    iget-object v1, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequestsLock:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recordUnfinishedRequest(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xm/http/HttpUtil;->recordUnfinishedRequest(ILorg/apache/http/client/methods/HttpRequestBase;)V

    return-void
.end method

.method private recordUnfinishedRequest(ILorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 3

    iget-object v1, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequestsLock:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeUncanceledRequest(I)Z
    .locals 3

    iget-object v1, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequestsLock:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addHttpResponseCallback(Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addHttpResponseCallback2(Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cancelRequest(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/xm/http/HttpUtil$3;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/xm/http/HttpUtil$3;-><init>(Lcom/autonavi/xm/http/HttpUtil;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public doGet(Ljava/lang/String;I)V
    .locals 2

    iget v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mDefaultResponseDataType:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/autonavi/xm/http/HttpUtil;->doGet(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public doGet(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/autonavi/xm/http/HttpUtil;->doGet(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public doGet(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/autonavi/xm/http/HttpUtil;->recordUnfinishedRequest(I)V

    new-instance v0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;-><init>(Lcom/autonavi/xm/http/HttpUtil;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->start()V

    return-void
.end method

.method public doGet(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mDefaultResponseDataType:I

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/autonavi/xm/http/HttpUtil;->doGet(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public doPost(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 6

    iget v4, p0, Lcom/autonavi/xm/http/HttpUtil;->mDefaultResponseDataType:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xm/http/HttpUtil;->doPost(Ljava/lang/String;Ljava/io/InputStream;IILjava/lang/Object;)V

    return-void
.end method

.method public doPost(Ljava/lang/String;Ljava/io/InputStream;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/autonavi/xm/http/HttpUtil;->doPost(Ljava/lang/String;Ljava/io/InputStream;II)V

    return-void
.end method

.method public doPost(Ljava/lang/String;Ljava/io/InputStream;IILjava/lang/Object;)V
    .locals 7

    invoke-direct {p0, p3}, Lcom/autonavi/xm/http/HttpUtil;->recordUnfinishedRequest(I)V

    new-instance v0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;-><init>(Lcom/autonavi/xm/http/HttpUtil;Ljava/lang/String;Ljava/io/InputStream;IILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->start()V

    return-void
.end method

.method public doPost(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/Object;)V
    .locals 6

    iget v4, p0, Lcom/autonavi/xm/http/HttpUtil;->mDefaultResponseDataType:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xm/http/HttpUtil;->doPost(Ljava/lang/String;Ljava/io/InputStream;IILjava/lang/Object;)V

    return-void
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    iget v4, p0, Lcom/autonavi/xm/http/HttpUtil;->mDefaultResponseDataType:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xm/http/HttpUtil;->doPost(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xm/http/HttpUtil;->doPost(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 7

    :try_start_0
    invoke-direct {p0, p3}, Lcom/autonavi/xm/http/HttpUtil;->recordUnfinishedRequest(I)V

    new-instance v0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;-><init>(Lcom/autonavi/xm/http/HttpUtil;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->start()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/autonavi/xm/http/HttpUtil;->isMainThreadCalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xm/http/HttpUtil;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autonavi/xm/http/HttpUtil$1;

    invoke-direct {v1, p0, p3, p5}, Lcom/autonavi/xm/http/HttpUtil$1;-><init>(Lcom/autonavi/xm/http/HttpUtil;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/xm/http/HttpUtil$2;

    invoke-direct {v1, p0, p3, p5}, Lcom/autonavi/xm/http/HttpUtil$2;-><init>(Lcom/autonavi/xm/http/HttpUtil;ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    iget v4, p0, Lcom/autonavi/xm/http/HttpUtil;->mDefaultResponseDataType:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xm/http/HttpUtil;->doPost(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method protected generateHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    const/16 v4, 0x2710

    const/16 v3, 0x14

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {}, Lcom/autonavi/xm/http/HttpUtil;->isProxySet()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http.route.default-proxy"

    invoke-static {}, Lcom/autonavi/xm/http/HttpUtil;->getProxy()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v1, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v1, "http.socket.timeout"

    invoke-interface {v0, v1, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    const-string v1, "http.connection.timeout"

    invoke-interface {v0, v1, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method public removeHttpResponseCallback(Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeHttpResponseCallback2(Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setCallbackInvokedType(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/autonavi/xm/http/HttpUtil;->mDefaultResponseDataType:I

    goto :goto_0
.end method

.method public setCallbackType(Lcom/autonavi/xm/http/HttpUtil$CallbackType;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbackType:Lcom/autonavi/xm/http/HttpUtil$CallbackType;

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public setRequestEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/http/HttpUtil;->mRequestEncoding:Ljava/lang/String;

    return-void
.end method

.method public setResponseContentEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/http/HttpUtil;->mResponseContentEncoding:Ljava/lang/String;

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mShouldShutdownHttpClient:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0
.end method
