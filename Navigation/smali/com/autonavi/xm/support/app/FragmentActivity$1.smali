.class Lcom/autonavi/xm/support/app/FragmentActivity$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/support/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/support/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/support/app/FragmentActivity$1;->this$0:Lcom/autonavi/xm/support/app/FragmentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/support/app/FragmentActivity$1;->this$0:Lcom/autonavi/xm/support/app/FragmentActivity;

    iget-boolean v0, v0, Lcom/autonavi/xm/support/app/FragmentActivity;->mStopped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/FragmentActivity$1;->this$0:Lcom/autonavi/xm/support/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/support/app/FragmentActivity;->doReallyStop(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xm/support/app/FragmentActivity$1;->this$0:Lcom/autonavi/xm/support/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/FragmentActivity;->onResumeFragments()V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/FragmentActivity$1;->this$0:Lcom/autonavi/xm/support/app/FragmentActivity;

    iget-object v0, v0, Lcom/autonavi/xm/support/app/FragmentActivity;->mFragments:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/FragmentManagerImpl;->execPendingActions()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
