.class Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/autonavi/xm/http/HttpUtil$RequestThread;

.field final synthetic val$errorCode:I

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/autonavi/xm/http/HttpUtil$RequestThread;II)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->this$1:Lcom/autonavi/xm/http/HttpUtil$RequestThread;

    iput p2, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->val$requestCode:I

    iput p3, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->this$1:Lcom/autonavi/xm/http/HttpUtil$RequestThread;

    iget-object v0, v0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    iget v1, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->val$requestCode:I

    # invokes: Lcom/autonavi/xm/http/HttpUtil;->removeUncanceledRequest(I)Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/http/HttpUtil;->access$200(Lcom/autonavi/xm/http/HttpUtil;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->this$1:Lcom/autonavi/xm/http/HttpUtil$RequestThread;

    # getter for: Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->access$300(Lcom/autonavi/xm/http/HttpUtil$RequestThread;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->this$1:Lcom/autonavi/xm/http/HttpUtil$RequestThread;

    iget-object v0, v0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$400(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->this$1:Lcom/autonavi/xm/http/HttpUtil$RequestThread;

    iget-object v0, v0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

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

    iget v2, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->val$requestCode:I

    iget v3, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->val$errorCode:I

    invoke-interface {v0, v2, v3}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback;->onFailure(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->this$1:Lcom/autonavi/xm/http/HttpUtil$RequestThread;

    iget-object v0, v0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

    # getter for: Lcom/autonavi/xm/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/xm/http/HttpUtil;->access$500(Lcom/autonavi/xm/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->this$1:Lcom/autonavi/xm/http/HttpUtil$RequestThread;

    iget-object v0, v0, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->this$0:Lcom/autonavi/xm/http/HttpUtil;

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

    iget v2, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->val$requestCode:I

    iget v3, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->val$errorCode:I

    iget-object v4, p0, Lcom/autonavi/xm/http/HttpUtil$RequestThread$3;->this$1:Lcom/autonavi/xm/http/HttpUtil$RequestThread;

    # getter for: Lcom/autonavi/xm/http/HttpUtil$RequestThread;->mExtra:Ljava/lang/Object;
    invoke-static {v4}, Lcom/autonavi/xm/http/HttpUtil$RequestThread;->access$300(Lcom/autonavi/xm/http/HttpUtil$RequestThread;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/autonavi/xm/http/HttpUtil$HttpResponseCallback2;->onFailure(IILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method