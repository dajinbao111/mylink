.class Lcom/autonavi/wh/support/app/FragmentManagerImpl$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/support/app/FragmentManagerImpl;

.field final synthetic val$flags:I

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/autonavi/wh/support/app/FragmentManagerImpl;II)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/support/app/FragmentManagerImpl$4;->this$0:Lcom/autonavi/wh/support/app/FragmentManagerImpl;

    iput p2, p0, Lcom/autonavi/wh/support/app/FragmentManagerImpl$4;->val$id:I

    iput p3, p0, Lcom/autonavi/wh/support/app/FragmentManagerImpl$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/wh/support/app/FragmentManagerImpl$4;->this$0:Lcom/autonavi/wh/support/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/autonavi/wh/support/app/FragmentManagerImpl$4;->this$0:Lcom/autonavi/wh/support/app/FragmentManagerImpl;

    iget-object v1, v1, Lcom/autonavi/wh/support/app/FragmentManagerImpl;->mActivity:Lcom/autonavi/wh/support/app/FragmentActivity;

    iget-object v1, v1, Lcom/autonavi/wh/support/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, p0, Lcom/autonavi/wh/support/app/FragmentManagerImpl$4;->val$id:I

    iget v4, p0, Lcom/autonavi/wh/support/app/FragmentManagerImpl$4;->val$flags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/autonavi/wh/support/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    return-void
.end method
