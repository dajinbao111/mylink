.class public final Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/guide/a/e;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/guide/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->a:Lcom/autonavi/navigation/api/guide/a/e;

    return-void
.end method


# virtual methods
.method public getPlaybackRate()Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->a:Lcom/autonavi/navigation/api/guide/a/e;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/a/e;->d()Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->a:Lcom/autonavi/navigation/api/guide/a/e;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/a/e;->c()Z

    move-result v0

    return v0
.end method

.method public pause()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->a:Lcom/autonavi/navigation/api/guide/a/e;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/a/e;->a()Z

    move-result v0

    return v0
.end method

.method public setOnGuideListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->a:Lcom/autonavi/navigation/api/guide/a/e;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/e;->a(Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;)V

    return-void
.end method

.method public setPlaybackRate(Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->a:Lcom/autonavi/navigation/api/guide/a/e;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/e;->a(Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;)Z

    return-void
.end method

.method public start(Lcom/autonavi/navigation/api/route/model/Route;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->a:Lcom/autonavi/navigation/api/guide/a/e;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/guide/a/e;->a(Lcom/autonavi/navigation/api/route/model/Route;)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->a:Lcom/autonavi/navigation/api/guide/a/e;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/a/e;->b()Z

    move-result v0

    return v0
.end method
