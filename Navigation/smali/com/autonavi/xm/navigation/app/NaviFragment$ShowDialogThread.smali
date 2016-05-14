.class public Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private tDialogFragment:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

.field private final tId:I

.field final synthetic this$0:Lcom/autonavi/xm/navigation/app/NaviFragment;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navigation/app/NaviFragment;Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->this$0:Lcom/autonavi/xm/navigation/app/NaviFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->tDialogFragment:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->tDialogFragment:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    iput p3, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->tId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->this$0:Lcom/autonavi/xm/navigation/app/NaviFragment;

    iget v1, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->tId:I

    # invokes: Lcom/autonavi/xm/navigation/app/NaviFragment;->getDialogFragmentTag(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->access$000(Lcom/autonavi/xm/navigation/app/NaviFragment;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->this$0:Lcom/autonavi/xm/navigation/app/NaviFragment;

    # getter for: Lcom/autonavi/xm/navigation/app/NaviFragment;->mFragmentManager:Lcom/autonavi/xm/support/app/FragmentManager;
    invoke-static {v1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->access$100(Lcom/autonavi/xm/navigation/app/NaviFragment;)Lcom/autonavi/xm/support/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/support/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/autonavi/xm/support/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->this$0:Lcom/autonavi/xm/navigation/app/NaviFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/app/NaviFragment;->setUserInteractionFrozen(Z)V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->tDialogFragment:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    iget-object v2, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->this$0:Lcom/autonavi/xm/navigation/app/NaviFragment;

    # getter for: Lcom/autonavi/xm/navigation/app/NaviFragment;->mNaviFragment:Lcom/autonavi/xm/navigation/app/NaviFragment;
    invoke-static {v2}, Lcom/autonavi/xm/navigation/app/NaviFragment;->access$200(Lcom/autonavi/xm/navigation/app/NaviFragment;)Lcom/autonavi/xm/navigation/app/NaviFragment;

    move-result-object v2

    iget v3, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->tId:I

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->setTarget(Lcom/autonavi/xm/support/app/Fragment;I)V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->tDialogFragment:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    iget-object v2, p0, Lcom/autonavi/xm/navigation/app/NaviFragment$ShowDialogThread;->this$0:Lcom/autonavi/xm/navigation/app/NaviFragment;

    # getter for: Lcom/autonavi/xm/navigation/app/NaviFragment;->mFragmentManager:Lcom/autonavi/xm/support/app/FragmentManager;
    invoke-static {v2}, Lcom/autonavi/xm/navigation/app/NaviFragment;->access$100(Lcom/autonavi/xm/navigation/app/NaviFragment;)Lcom/autonavi/xm/support/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xm/support/app/FragmentManager;->beginTransaction()Lcom/autonavi/xm/support/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->showAllowingStateLoss(Lcom/autonavi/xm/support/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method
