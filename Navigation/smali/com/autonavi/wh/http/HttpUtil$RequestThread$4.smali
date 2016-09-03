.class Lcom/autonavi/wh/http/HttpUtil$RequestThread$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/autonavi/wh/http/HttpUtil$RequestThread;

.field final synthetic val$requestCode:I

.field final synthetic val$response:Lorg/apache/http/HttpResponse;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/http/HttpUtil$RequestThread;Lorg/apache/http/HttpResponse;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/http/HttpUtil$RequestThread$4;->this$1:Lcom/autonavi/wh/http/HttpUtil$RequestThread;

    iput-object p2, p0, Lcom/autonavi/wh/http/HttpUtil$RequestThread$4;->val$response:Lorg/apache/http/HttpResponse;

    iput p3, p0, Lcom/autonavi/wh/http/HttpUtil$RequestThread$4;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/http/HttpUtil$RequestThread$4;->this$1:Lcom/autonavi/wh/http/HttpUtil$RequestThread;

    iget-object v1, p0, Lcom/autonavi/wh/http/HttpUtil$RequestThread$4;->val$response:Lorg/apache/http/HttpResponse;

    iget v2, p0, Lcom/autonavi/wh/http/HttpUtil$RequestThread$4;->val$requestCode:I

    # invokes: Lcom/autonavi/wh/http/HttpUtil$RequestThread;->doResponse(Lorg/apache/http/HttpResponse;I)V
    invoke-static {v0, v1, v2}, Lcom/autonavi/wh/http/HttpUtil$RequestThread;->access$1200(Lcom/autonavi/wh/http/HttpUtil$RequestThread;Lorg/apache/http/HttpResponse;I)V

    return-void
.end method
