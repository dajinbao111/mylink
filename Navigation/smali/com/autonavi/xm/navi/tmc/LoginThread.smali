.class public Lcom/autonavi/xm/navi/tmc/LoginThread;
.super Ljava/lang/Thread;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsNeedNotify:Z

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navi/tmc/LoginThread;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/autonavi/xm/navi/tmc/LoginThread;->mUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/autonavi/xm/navi/tmc/LoginThread;->mIsNeedNotify:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/tmc/LoginThread;->mUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/autonavi/xm/navi/tmc/TmcHttp;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "tmc login:get response succ"

    invoke-static {v1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xm/navi/tmc/LoginThread;->sendResult(ZLjava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "tmc login:get response fail"

    invoke-static {v0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/tmc/LoginThread;->sendResult(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public sendResult(ZLjava/lang/String;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/xm/navi/tmc/LoginThread;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/autonavi/xm/navi/tmc/LoginThread;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    iget-boolean v2, p0, Lcom/autonavi/xm/navi/tmc/LoginThread;->mIsNeedNotify:Z

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v2, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/tmc/LoginThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
