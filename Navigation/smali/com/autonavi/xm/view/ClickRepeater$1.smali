.class Lcom/autonavi/xm/view/ClickRepeater$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/view/ClickRepeater;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/view/ClickRepeater;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    # getter for: Lcom/autonavi/xm/view/ClickRepeater;->mHostView:Landroid/view/View;
    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->access$000(Lcom/autonavi/xm/view/ClickRepeater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    # getter for: Lcom/autonavi/xm/view/ClickRepeater;->mIsRepeating:Z
    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->access$100(Lcom/autonavi/xm/view/ClickRepeater;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    # getter for: Lcom/autonavi/xm/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;
    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->access$200(Lcom/autonavi/xm/view/ClickRepeater;)Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    # getter for: Lcom/autonavi/xm/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;
    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->access$200(Lcom/autonavi/xm/view/ClickRepeater;)Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    # getter for: Lcom/autonavi/xm/view/ClickRepeater;->mHostView:Landroid/view/View;
    invoke-static {v1}, Lcom/autonavi/xm/view/ClickRepeater;->access$000(Lcom/autonavi/xm/view/ClickRepeater;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;->onRepeatStart(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    const/4 v1, 0x1

    # setter for: Lcom/autonavi/xm/view/ClickRepeater;->mIsRepeating:Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/view/ClickRepeater;->access$102(Lcom/autonavi/xm/view/ClickRepeater;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    # getter for: Lcom/autonavi/xm/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;
    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->access$200(Lcom/autonavi/xm/view/ClickRepeater;)Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    # getter for: Lcom/autonavi/xm/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;
    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->access$200(Lcom/autonavi/xm/view/ClickRepeater;)Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    # getter for: Lcom/autonavi/xm/view/ClickRepeater;->mHostView:Landroid/view/View;
    invoke-static {v1}, Lcom/autonavi/xm/view/ClickRepeater;->access$000(Lcom/autonavi/xm/view/ClickRepeater;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;->onRepeat(Landroid/view/View;)V

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    # getter for: Lcom/autonavi/xm/view/ClickRepeater;->mRepeatDelay:I
    invoke-static {v1}, Lcom/autonavi/xm/view/ClickRepeater;->access$300(Lcom/autonavi/xm/view/ClickRepeater;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/xm/view/ClickRepeater$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    # getter for: Lcom/autonavi/xm/view/ClickRepeater;->mHostView:Landroid/view/View;
    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->access$000(Lcom/autonavi/xm/view/ClickRepeater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater$1;->this$0:Lcom/autonavi/xm/view/ClickRepeater;

    invoke-virtual {v0}, Lcom/autonavi/xm/view/ClickRepeater;->stop()V

    goto :goto_1
.end method
