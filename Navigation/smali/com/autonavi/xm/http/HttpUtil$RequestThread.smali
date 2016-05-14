.class Lcom/autonavi/xm/http/HttpUtil$RequestThread;
.super Ljava/lang/Thread;


# instance fields
.field private mExtra:Ljava/lang/Object;

.field private mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field private mRequestCode:I

.field private mResponseDataType:I

.field final synthetic this$0:Lcom/autonavi/xm/http/HttpUtil;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/http/HttpUtil;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    iput p3, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    iput p4, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mResponseDataType:I

    iput-object p5, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/http/HttpUtil;Ljava/lang/String;Ljava/io/InputStream;IILjava/lang/Object;)V
    .locals 4

    iput-object p1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    const-wide/16 v2, -0x1

    invoke-direct {v1, p3, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    iput p4, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    iput p5, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mResponseDataType:I

    iput-object p6, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->isMainThreadCalled()Z
    invoke-static {p1}, Lcom/autonavi/xm/http/HttpUtil;->access$100(Lcom/autonavi/xm/http/HttpUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->getMainThreadHandler()Landroid/os/Handler;
    invoke-static {p1}, Lcom/autonavi/xm/http/HttpUtil;->access$600(Lcom/autonavi/xm/http/HttpUtil;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autonavi/xm/http/HttpUtil$RequestThread$1;

    invoke-direct {v1, p0, p1, p4}, Lcom/autonavi/xm/http/HttpUtil$RequestThread$1;-><init>(Lcom/autonavi/xm/http/HttpUtil$RequestThread;Lcom/autonavi/xm/http/HttpUtil;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/xm/http/HttpUtil$RequestThread$2;

    invoke-direct {v1, p0, p1, p4}, Lcom/autonavi/xm/http/HttpUtil$RequestThread$2;-><init>(Lcom/autonavi/xm/http/HttpUtil$RequestThread;Lcom/autonavi/xm/http/HttpUtil;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/autonavi/xm/http/HttpUtil;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 3

    iput-object p1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mRequestEncoding:Ljava/lang/String;
    invoke-static {p1}, Lcom/autonavi/xm/http/HttpUtil;->access$000(Lcom/autonavi/xm/http/HttpUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iput-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    iput p4, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    iput p5, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mResponseDataType:I

    iput-object p6, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1200(Lcom/autonavi/xm/http/HttpUtil$RequestThread;Lorg/apache/http/HttpResponse;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doResponse(Lorg/apache/http/HttpResponse;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/xm/http/HttpUtil$RequestThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    return-object v0
.end method

.method private doCallbackInMainThread(II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->getMainThreadHandler()Landroid/os/Handler;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$600(Lcom/autonavi/xm/http/HttpUtil;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;-><init>(Lcom/autonavi/xm/http/HttpUtil$RequestThread;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doCallbackInMainThread(Lorg/apache/http/HttpResponse;I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->getMainThreadHandler()Landroid/os/Handler;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$600(Lcom/autonavi/xm/http/HttpUtil;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autonavi/xm/http/HttpUtil$RequestThread$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/autonavi/xm/http/HttpUtil$RequestThread$4;-><init>(Lcom/autonavi/xm/http/HttpUtil$RequestThread;Lorg/apache/http/HttpResponse;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doCallbackInSubThread(II)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->removeUncanceledRequest(I)Z
    invoke-static {v0, p2}, Lcom/autonavi/xm/http/HttpUtil;->access$200(Lcom/autonavi/xm/http/HttpUtil;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;

    invoke-interface {v0, p2, p1}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;->onFailure(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;

    iget-object v2, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    invoke-interface {v0, p2, p1, v2}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;->onFailure(IILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private doCallbackInSubThread(Lorg/apache/http/HttpResponse;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doResponse(Lorg/apache/http/HttpResponse;I)V

    return-void
.end method

.method private doResponse(Lorg/apache/http/HttpResponse;I)V
    .locals 7

    const/4 v5, -0x4

    const/4 v4, -0x5

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->removeUncanceledRequest(I)Z
    invoke-static {v0, p2}, Lcom/autonavi/xm/http/HttpUtil;->access$200(Lcom/autonavi/xm/http/HttpUtil;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v0, p2, v2}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;->onFailure(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    invoke-interface {v0, p2, v2, v3}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;->onFailure(IILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mResponseDataType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->isRequestUncanceled(I)Z
    invoke-static {v0, p2}, Lcom/autonavi/xm/http/HttpUtil;->access$700(Lcom/autonavi/xm/http/HttpUtil;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    iget-object v2, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->recordUnfinishedRequest(ILorg/apache/http/client/methods/HttpRequestBase;)V
    invoke-static {v0, p2, v2}, Lcom/autonavi/xm/http/HttpUtil;->access$800(Lcom/autonavi/xm/http/HttpUtil;ILorg/apache/http/client/methods/HttpRequestBase;)V

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;

    invoke-interface {v0, p2, v1}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;->onSuccess(ILjava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :cond_2
    :goto_4
    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;

    iget-object v3, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v3}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;->onSuccess(ILjava/io/InputStream;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_6
    :try_start_4
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;

    const/4 v3, -0x3

    invoke-interface {v0, p2, v3}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;->onFailure(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    :goto_8
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :cond_4
    :goto_9
    throw v0

    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->removeUncanceledRequest(I)Z
    invoke-static {v0, p2}, Lcom/autonavi/xm/http/HttpUtil;->access$200(Lcom/autonavi/xm/http/HttpUtil;I)Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_7
    :try_start_8
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;

    const/4 v3, -0x3

    iget-object v4, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    invoke-interface {v0, p2, v3, v4}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;->onFailure(IILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    :cond_8
    if-eqz v1, :cond_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_4

    :cond_9
    :try_start_a
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->removeUncanceledRequest(I)Z
    invoke-static {v0, p2}, Lcom/autonavi/xm/http/HttpUtil;->access$200(Lcom/autonavi/xm/http/HttpUtil;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mResponseContentEncoding:Ljava/lang/String;
    invoke-static {v1}, Lcom/autonavi/xm/http/HttpUtil;->access$1300(Lcom/autonavi/xm/http/HttpUtil;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;

    invoke-interface {v0, p2, v1}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;->onSuccess(ILjava/lang/String;)V
    :try_end_a
    .catch Lorg/apache/http/ParseException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_b

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;

    invoke-interface {v0, p2, v5}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;->onFailure(II)V

    goto :goto_c

    :cond_a
    :try_start_b
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;

    iget-object v3, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v3}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;->onSuccess(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Lorg/apache/http/ParseException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;

    invoke-interface {v0, p2, v4}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;->onFailure(II)V

    goto :goto_e

    :cond_b
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;

    iget-object v2, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    invoke-interface {v0, p2, v5, v2}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;->onFailure(IILjava/lang/Object;)V

    goto :goto_f

    :cond_c
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;

    iget-object v2, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;

    invoke-interface {v0, p2, v4, v2}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;->onFailure(IILjava/lang/Object;)V

    goto :goto_10

    :catch_6
    move-exception v0

    goto/16 :goto_4

    :catch_7
    move-exception v1

    goto/16 :goto_9

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_8

    :catch_8
    move-exception v1

    move-object v1, v0

    goto/16 :goto_6

    :catch_9
    move-exception v1

    goto/16 :goto_3
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, -0x7

    const/4 v3, -0x8

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    iget v1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->isRequestUncanceled(I)Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/http/HttpUtil;->access$700(Lcom/autonavi/xm/http/HttpUtil;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    iget v1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    iget-object v2, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->recordUnfinishedRequest(ILorg/apache/http/client/methods/HttpRequestBase;)V
    invoke-static {v0, v1, v2}, Lcom/autonavi/xm/http/HttpUtil;->access$800(Lcom/autonavi/xm/http/HttpUtil;ILorg/apache/http/client/methods/HttpRequestBase;)V

    :cond_0
    :try_start_0
    # invokes: Lcom/autonavi/xm/http/HttpUtil;->isProxySet()Z
    invoke-static {}, Lcom/autonavi/xm/http/HttpUtil;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$1100(Lcom/autonavi/xm/http/HttpUtil;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mProxy:Lorg/apache/http/HttpHost;
    invoke-static {v1}, Lcom/autonavi/xm/http/HttpUtil;->access$1000(Lcom/autonavi/xm/http/HttpUtil;)Lorg/apache/http/HttpHost;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->isMainThreadCalled()Z
    invoke-static {v1}, Lcom/autonavi/xm/http/HttpUtil;->access$100(Lcom/autonavi/xm/http/HttpUtil;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doCallbackInMainThread(Lorg/apache/http/HttpResponse;I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$1100(Lcom/autonavi/xm/http/HttpUtil;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doCallbackInSubThread(Lorg/apache/http/HttpResponse;I)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->isMainThreadCalled()Z
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$100(Lcom/autonavi/xm/http/HttpUtil;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    invoke-direct {p0, v4, v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doCallbackInMainThread(II)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    invoke-direct {p0, v4, v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doCallbackInSubThread(II)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->isMainThreadCalled()Z
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$100(Lcom/autonavi/xm/http/HttpUtil;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    invoke-direct {p0, v3, v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doCallbackInMainThread(II)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    invoke-direct {p0, v3, v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doCallbackInSubThread(II)V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->isMainThreadCalled()Z
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$100(Lcom/autonavi/xm/http/HttpUtil;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    invoke-direct {p0, v6, v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doCallbackInMainThread(II)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    invoke-direct {p0, v6, v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doCallbackInSubThread(II)V

    goto :goto_1

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->isMainThreadCalled()Z
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$100(Lcom/autonavi/xm/http/HttpUtil;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    invoke-direct {p0, v5, v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doCallbackInMainThread(II)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mRequestCode:I

    invoke-direct {p0, v5, v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->doCallbackInSubThread(II)V

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method
