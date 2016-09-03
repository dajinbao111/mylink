.class Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    # invokes: Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleGuidanceCompletion()V
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->access$1800(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "guideroute.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/GdFileUtil;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public onGuiding(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    # invokes: Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->access$1600(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    # invokes: Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onGuidingGuidance(Lcom/autonavi/navigation/api/route/model/Route;Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    invoke-static {v1, v0, p1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->access$1700(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;Lcom/autonavi/navigation/api/route/model/Route;Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    const-string v0, "guide"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleGuidanceStarted()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    iget-object v2, v2, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "guideroute.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    iget-object v2, v2, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->saveRoute(Lcom/autonavi/navigation/api/route/model/Route;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->setFirst(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    # invokes: Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleGuidanceStopped()V
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->access$1900(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "guideroute.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/GdFileUtil;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method
