.class Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$7;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$7;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$7;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRootViewGroup:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->access$1500(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    return-void
.end method
