.class public final Lcom/autonavi/navigation/api/guide/GuideManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/guide/a/c;

.field private b:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getGuideManagerDelegate()Lcom/autonavi/navigation/api/guide/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    return-void
.end method


# virtual methods
.method public addOnDeviateFromRouteListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/c;->a(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V

    return-void
.end method

.method public addOnParallelRoadsChangedListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/c;->a(Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;)V

    return-void
.end method

.method public addOnSafetyAlertChangedListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/c;->a(Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;)V

    return-void
.end method

.method public addOnTrafficRecalculateListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnTrafficRecalculateListener;)V
    .locals 0

    return-void
.end method

.method public changeRoad(Lcom/autonavi/navigation/api/route/model/Road;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/c;->a(Lcom/autonavi/navigation/api/route/model/Road;)Z

    return-void
.end method

.method public clearRoutes()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/a/c;->g()V

    return-void
.end method

.method public getGuideInfo()Lcom/autonavi/navigation/api/guide/model/GuideInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/a/c;->f()Lcom/autonavi/navigation/api/guide/model/GuideInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/a/c;->a()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    return-object v0
.end method

.method public getSimulationGuidePlayer()Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->b:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/guide/a/c;->d()Lcom/autonavi/navigation/api/guide/a/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;-><init>(Lcom/autonavi/navigation/api/guide/a/e;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->b:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->b:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    return-object v0
.end method

.method public getTurnByTurnInfo(Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;IZ)Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/navigation/api/guide/a/c;->a(Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;IZ)Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;

    move-result-object v0

    return-object v0
.end method

.method public isGuiding()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/a/c;->e()Z

    move-result v0

    return v0
.end method

.method public playGuideVoice()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/a/c;->c()Z

    move-result v0

    return v0
.end method

.method public removeOnDeviateFromRouteListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/c;->b(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V

    return-void
.end method

.method public removeOnParallelRoadsChangedListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/c;->b(Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;)V

    return-void
.end method

.method public removeOnSafetyAlertChangedListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/c;->b(Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;)V

    return-void
.end method

.method public removeOnTrafficRecalculateListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnTrafficRecalculateListener;)V
    .locals 0

    return-void
.end method

.method public setOnGuideListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/c;->a(Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;)V

    return-void
.end method

.method public startGuide(Lcom/autonavi/navigation/api/route/model/Route;)Z
    .locals 1

    const-string v0, "route can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/c;->a(Lcom/autonavi/navigation/api/route/model/Route;)Z

    move-result v0

    return v0
.end method

.method public stopGuide()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/GuideManager;->a:Lcom/autonavi/navigation/api/guide/a/c;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/a/c;->b()Z

    move-result v0

    return v0
.end method
