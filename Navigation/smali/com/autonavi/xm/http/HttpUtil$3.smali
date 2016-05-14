.class Lcom/autonavi/xm/http/HttpUtil$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/http/HttpUtil;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/autonavi/xm/http/HttpUtil;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/http/HttpUtil$3;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    iput p2, p0, Lcom/autonavi/xm/http/HttpUtil$3;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$3;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequests:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$1400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/http/HttpUtil$3;->val$requestCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$3;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequestsLock:[B
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$1500(Lcom/autonavi/xm/http/HttpUtil;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$3;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mUnfinishedRequests:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$1400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, p0, Lcom/autonavi/xm/http/HttpUtil$3;->val$requestCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
