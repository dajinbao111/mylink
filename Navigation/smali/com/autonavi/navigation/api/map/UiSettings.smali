.class public final Lcom/autonavi/navigation/api/map/UiSettings;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/map/internal/u;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/internal/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    return-void
.end method


# virtual methods
.method public isAllGesturesEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->O()Z

    move-result v0

    return v0
.end method

.method public isGpsAnnunciatorEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->I()Z

    move-result v0

    return v0
.end method

.method public isGuideboardEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->S()Z

    move-result v0

    return v0
.end method

.method public isHighwaysignsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->T()Z

    move-result v0

    return v0
.end method

.method public isMapModeControlsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->L()Z

    move-result v0

    return v0
.end method

.method public isMyLocationControlsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->H()Z

    move-result v0

    return v0
.end method

.method public isRotateGesturesEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->Q()Z

    move-result v0

    return v0
.end method

.method public isScrollGesturesEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->M()Z

    move-result v0

    return v0
.end method

.method public isTiltGesturesEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->P()Z

    move-result v0

    return v0
.end method

.method public isZoomControlsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->K()Z

    move-result v0

    return v0
.end method

.method public isZoomGesturesEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->N()Z

    move-result v0

    return v0
.end method

.method public isZoomLevelEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->J()Z

    move-result v0

    return v0
.end method

.method public isZoomViewEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/u;->R()Z

    move-result v0

    return v0
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->h(Z)V

    return-void
.end method

.method public setAllMapControlsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->q(Z)V

    return-void
.end method

.method public setFlingGesturesEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->s(Z)V

    return-void
.end method

.method public setGpsAnnunciatorEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->n(Z)V

    return-void
.end method

.method public setGuideboardEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->u(Z)V

    return-void
.end method

.method public setHighwaysignsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->v(Z)V

    return-void
.end method

.method public setMapModeControlsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->l(Z)V

    return-void
.end method

.method public setMyLocationControlsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->m(Z)V

    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->j(Z)V

    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->r(Z)V

    return-void
.end method

.method public setTiltGesturesEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->i(Z)V

    return-void
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->o(Z)V

    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->k(Z)V

    return-void
.end method

.method public setZoomLevelEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->p(Z)V

    return-void
.end method

.method public setZoomViewEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/UiSettings;->a:Lcom/autonavi/navigation/api/map/internal/u;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/u;->t(Z)V

    return-void
.end method
