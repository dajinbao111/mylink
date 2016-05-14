.class Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$9;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$9;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterHideState()V

    return-void
.end method
