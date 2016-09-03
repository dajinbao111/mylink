.class Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$7;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$7;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$7;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mOnGuideListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->setOnGuideListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$7;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$7;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;
    invoke-static {v1}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1400(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->startGuide(Lcom/autonavi/navigation/api/route/model/Route;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$7;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->closeZoomView()V

    return-void
.end method
