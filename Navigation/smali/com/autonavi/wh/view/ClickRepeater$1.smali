.class Lcom/autonavi/wh/view/ClickRepeater$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/view/ClickRepeater;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/view/ClickRepeater;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    # getter for: Lcom/autonavi/wh/view/ClickRepeater;->mHostView:Landroid/view/View;
    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->access$000(Lcom/autonavi/wh/view/ClickRepeater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    # getter for: Lcom/autonavi/wh/view/ClickRepeater;->mIsRepeating:Z
    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->access$100(Lcom/autonavi/wh/view/ClickRepeater;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    # getter for: Lcom/autonavi/wh/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;
    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->access$200(Lcom/autonavi/wh/view/ClickRepeater;)Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    # getter for: Lcom/autonavi/wh/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;
    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->access$200(Lcom/autonavi/wh/view/ClickRepeater;)Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    # getter for: Lcom/autonavi/wh/view/ClickRepeater;->mHostView:Landroid/view/View;
    invoke-static {v1}, Lcom/autonavi/wh/view/ClickRepeater;->access$000(Lcom/autonavi/wh/view/ClickRepeater;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;->onRepeatStart(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    const/4 v1, 0x1

    # setter for: Lcom/autonavi/wh/view/ClickRepeater;->mIsRepeating:Z
    invoke-static {v0, v1}, Lcom/autonavi/wh/view/ClickRepeater;->access$102(Lcom/autonavi/wh/view/ClickRepeater;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    # getter for: Lcom/autonavi/wh/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;
    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->access$200(Lcom/autonavi/wh/view/ClickRepeater;)Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    # getter for: Lcom/autonavi/wh/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;
    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->access$200(Lcom/autonavi/wh/view/ClickRepeater;)Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    # getter for: Lcom/autonavi/wh/view/ClickRepeater;->mHostView:Landroid/view/View;
    invoke-static {v1}, Lcom/autonavi/wh/view/ClickRepeater;->access$000(Lcom/autonavi/wh/view/ClickRepeater;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;->onRepeat(Landroid/view/View;)V

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    # getter for: Lcom/autonavi/wh/view/ClickRepeater;->mRepeatDelay:I
    invoke-static {v1}, Lcom/autonavi/wh/view/ClickRepeater;->access$300(Lcom/autonavi/wh/view/ClickRepeater;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/wh/view/ClickRepeater$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    # getter for: Lcom/autonavi/wh/view/ClickRepeater;->mHostView:Landroid/view/View;
    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->access$000(Lcom/autonavi/wh/view/ClickRepeater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/view/ClickRepeater$1;->this$0:Lcom/autonavi/wh/view/ClickRepeater;

    invoke-virtual {v0}, Lcom/autonavi/wh/view/ClickRepeater;->stop()V

    goto :goto_1
.end method
