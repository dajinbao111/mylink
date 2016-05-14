.class Lcom/autonavi/xm/support/app/FragmentManagerImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

.field final synthetic val$flags:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/support/app/FragmentManagerImpl;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$3;->this$0:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    iput-object p2, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$3;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$3;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$3;->this$0:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$3;->this$0:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    iget-object v1, v1, Lcom/autonavi/xm/support/app/FragmentManagerImpl;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    iget-object v1, v1, Lcom/autonavi/xm/support/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$3;->val$name:Ljava/lang/String;

    const/4 v3, -0x1

    iget v4, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$3;->val$flags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/autonavi/xm/support/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    return-void
.end method
