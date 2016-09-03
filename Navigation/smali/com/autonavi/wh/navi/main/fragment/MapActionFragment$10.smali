.class Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$10;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$10;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    const/16 v1, 0x8

    # invokes: Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleGpsResult(I)V
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->access$2100(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;I)V

    return-void
.end method
