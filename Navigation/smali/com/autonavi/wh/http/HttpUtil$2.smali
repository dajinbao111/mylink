.class Lcom/autonavi/wh/http/HttpUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/http/HttpUtil;

.field final synthetic val$extra:Ljava/lang/Object;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/autonavi/wh/http/HttpUtil;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/http/HttpUtil$2;->this$0:Lcom/autonavi/wh/http/HttpUtil;

    iput p2, p0, Lcom/autonavi/wh/http/HttpUtil$2;->val$requestCode:I

    iput-object p3, p0, Lcom/autonavi/wh/http/HttpUtil$2;->val$extra:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, -0x6

    iget-object v0, p0, Lcom/autonavi/wh/http/HttpUtil$2;->this$0:Lcom/autonavi/wh/http/HttpUtil;

    iget v1, p0, Lcom/autonavi/wh/http/HttpUtil$2;->val$requestCode:I

    # invokes: Lcom/autonavi/wh/http/HttpUtil;->removeUncanceledRequest(I)Z
    invoke-static {v0, v1}, Lcom/autonavi/wh/http/HttpUtil;->access$200(Lcom/autonavi/wh/http/HttpUtil;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/http/HttpUtil$2;->val$extra:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/http/HttpUtil$2;->this$0:Lcom/autonavi/wh/http/HttpUtil;

    # getter for: Lcom/autonavi/wh/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/wh/http/HttpUtil;->access$400(Lcom/autonavi/wh/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/http/HttpUtil$2;->this$0:Lcom/autonavi/wh/http/HttpUtil;

    # getter for: Lcom/autonavi/wh/http/HttpUtil;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/wh/http/HttpUtil;->access$400(Lcom/autonavi/wh/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/http/HttpUtil$HttpResponseCallback;

    iget v2, p0, Lcom/autonavi/wh/http/HttpUtil$2;->val$requestCode:I

    invoke-interface {v0, v2, v4}, Lcom/autonavi/wh/http/HttpUtil$HttpResponseCallback;->onFailure(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/http/HttpUtil$2;->this$0:Lcom/autonavi/wh/http/HttpUtil;

    # getter for: Lcom/autonavi/wh/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/wh/http/HttpUtil;->access$500(Lcom/autonavi/wh/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/http/HttpUtil$2;->this$0:Lcom/autonavi/wh/http/HttpUtil;

    # getter for: Lcom/autonavi/wh/http/HttpUtil;->mCallbacks2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/autonavi/wh/http/HttpUtil;->access$500(Lcom/autonavi/wh/http/HttpUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/http/HttpUtil$HttpResponseCallback2;

    iget v2, p0, Lcom/autonavi/wh/http/HttpUtil$2;->val$requestCode:I

    iget-object v3, p0, Lcom/autonavi/wh/http/HttpUtil$2;->val$extra:Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v3}, Lcom/autonavi/wh/http/HttpUtil$HttpResponseCallback2;->onFailure(IILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method
