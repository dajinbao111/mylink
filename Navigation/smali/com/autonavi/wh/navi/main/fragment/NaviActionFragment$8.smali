.class Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$8;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$8;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->backToMyLoc()V
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1600(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V

    return-void
.end method