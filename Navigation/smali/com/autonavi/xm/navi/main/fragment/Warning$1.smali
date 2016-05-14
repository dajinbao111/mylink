.class Lcom/autonavi/xm/navi/main/fragment/Warning$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/fragment/Warning;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/fragment/Warning;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/Warning$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/Warning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/Warning$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/Warning;

    const/16 v1, 0x3e8

    # -= operator for: Lcom/autonavi/xm/navi/main/fragment/Warning;->mLeftTime:I
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/main/fragment/Warning;->access$020(Lcom/autonavi/xm/navi/main/fragment/Warning;I)I

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/Warning$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/Warning;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/Warning;->mLeftTime:I
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/Warning;->access$000(Lcom/autonavi/xm/navi/main/fragment/Warning;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/Warning$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/Warning;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/fragment/Warning;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/Warning$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/Warning;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/Warning;->doAcceptStatement()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/Warning;->access$100(Lcom/autonavi/xm/navi/main/fragment/Warning;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/Warning$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/Warning;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/Warning;->refreshLeftTime()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/Warning;->access$200(Lcom/autonavi/xm/navi/main/fragment/Warning;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/Warning$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/Warning;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/Warning;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/Warning;->access$400(Lcom/autonavi/xm/navi/main/fragment/Warning;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/Warning$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/Warning;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/Warning;->mActionTiming:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/autonavi/xm/navi/main/fragment/Warning;->access$300(Lcom/autonavi/xm/navi/main/fragment/Warning;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
