.class Lcom/autonavi/xm/support/app/FragmentManagerImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/support/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/support/app/FragmentManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$1;->this$0:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$1;->this$0:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/FragmentManagerImpl;->execPendingActions()Z

    return-void
.end method