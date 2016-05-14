.class public Lcom/autonavi/navigation/api/map/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/AnMap$OnMapActionUpListener;
.implements Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;
.implements Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;
.implements Lcom/autonavi/navigation/api/map/internal/v;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/map/internal/a;

.field private final b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private d:Lcom/autonavi/navigation/api/map/internal/RawMapView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

.field private g:Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;

.field private h:Lcom/autonavi/navigation/api/map/widget/MapModeControls;

.field private i:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

.field private j:Lcom/autonavi/navigation/api/map/widget/MyLocationControls;

.field private k:Lcom/autonavi/navigation/api/map/internal/q;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/autonavi/navigation/api/map/internal/r;

.field private r:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

.field private s:Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

.field private t:Lcom/autonavi/navigation/api/map/AnMapOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/navigation/api/map/AnMapOptions;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->l:Z

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->m:Z

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->n:Z

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/internal/p;->o:Z

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/internal/p;->p:Z

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/p;->b:Landroid/content/Context;

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/b;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/p;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/autonavi/navigation/api/map/internal/b;-><init>(Lcom/autonavi/navigation/api/map/internal/v;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    iput-object p2, p0, Lcom/autonavi/navigation/api/map/internal/p;->t:Lcom/autonavi/navigation/api/map/AnMapOptions;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/map/internal/p;)Lcom/autonavi/navigation/api/map/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    return-object v0
.end method


# virtual methods
.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->p:Z

    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->o:Z

    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->m:Z

    return v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->l:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->n:Z

    return v0
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/r;->b()Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/r;->a()Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/r;->c()Z

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/r;->d()Z

    move-result v0

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/r;->e()Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->x()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    const-string v1, "show_zoom_view"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->x()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    const-string v1, "show_guideboard"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->x()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    const-string v1, "show_highway_signs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public U()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->U()V

    return-void
.end method

.method public V()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->V()V

    return-void
.end method

.method public W()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/navigation/api/map/internal/p;->d:Lcom/autonavi/navigation/api/map/internal/RawMapView;

    iput-object v1, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/q;->W()V

    iput-object v1, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->W()V

    :cond_1
    return-void
.end method

.method public X()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->X()V

    return-void
.end method

.method public a()Lcom/autonavi/navigation/api/map/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    return-object v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/MarkerOptions;)Lcom/autonavi/navigation/api/map/model/Marker;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/q;->a(Lcom/autonavi/navigation/api/map/model/MarkerOptions;)Lcom/autonavi/navigation/api/map/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/p;->b()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/autonavi/navigation/api/R$id;->rawMapView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->d:Lcom/autonavi/navigation/api/map/internal/RawMapView;

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/q;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/p;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/internal/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/p;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/q;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/r;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/p;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v2}, Lcom/autonavi/navigation/api/map/internal/a;->w()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/map/internal/r;-><init>(Landroid/content/Context;Lcom/autonavi/navigation/api/map/internal/l;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapActionUpListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->d:Lcom/autonavi/navigation/api/map/internal/RawMapView;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/p;->b()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/autonavi/navigation/api/R$id;->mapControlsContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    sget v1, Lcom/autonavi/navigation/api/R$id;->mapModeControls:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/widget/MapModeControls;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->h:Lcom/autonavi/navigation/api/map/widget/MapModeControls;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->h:Lcom/autonavi/navigation/api/map/widget/MapModeControls;

    new-instance v1, Lcom/autonavi/navigation/api/map/internal/p$1;

    invoke-direct {v1, p0}, Lcom/autonavi/navigation/api/map/internal/p$1;-><init>(Lcom/autonavi/navigation/api/map/internal/p;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    sget v1, Lcom/autonavi/navigation/api/R$id;->gpsAnnunciator:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->i:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    sget v1, Lcom/autonavi/navigation/api/R$id;->zoomLevelControls:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->g:Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    sget v1, Lcom/autonavi/navigation/api/R$id;->mapZoomControls:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->f:Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->f:Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

    new-instance v1, Lcom/autonavi/navigation/api/map/internal/p$2;

    invoke-direct {v1, p0}, Lcom/autonavi/navigation/api/map/internal/p$2;-><init>(Lcom/autonavi/navigation/api/map/internal/p;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->f:Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

    new-instance v1, Lcom/autonavi/navigation/api/map/internal/p$3;

    invoke-direct {v1, p0}, Lcom/autonavi/navigation/api/map/internal/p$3;-><init>(Lcom/autonavi/navigation/api/map/internal/p;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    sget v1, Lcom/autonavi/navigation/api/R$id;->myLocationControls:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/widget/MyLocationControls;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->j:Lcom/autonavi/navigation/api/map/widget/MyLocationControls;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->j:Lcom/autonavi/navigation/api/map/widget/MyLocationControls;

    new-instance v1, Lcom/autonavi/navigation/api/map/internal/p$4;

    invoke-direct {v1, p0}, Lcom/autonavi/navigation/api/map/internal/p$4;-><init>(Lcom/autonavi/navigation/api/map/internal/p;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/MyLocationControls;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const-string v0, "KEY_MAP_OPTIONS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KEY_MAP_OPTIONS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/AnMapOptions;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->t:Lcom/autonavi/navigation/api/map/AnMapOptions;

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/q;->setMarkerInfoWindowAdapter(Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/p;->r:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/p;->s:Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/q;->setOnMarkerClickListener(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerDragListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/q;->setOnMarkerDragListener(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerDragListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/q;->setOnMarkerInfoWindowClickListener(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->d:Lcom/autonavi/navigation/api/map/internal/RawMapView;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->d:Lcom/autonavi/navigation/api/map/internal/RawMapView;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/Marker;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/q;->a(Lcom/autonavi/navigation/api/map/model/Marker;)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->c:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/autonavi/navigation/api/R$layout;->api_map_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->c:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->c:Landroid/view/View;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->t:Lcom/autonavi/navigation/api/map/AnMapOptions;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public c()Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->i:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    return-object v0
.end method

.method public d()Lcom/autonavi/navigation/api/map/widget/MapModeControls;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->h:Lcom/autonavi/navigation/api/map/widget/MapModeControls;

    return-object v0
.end method

.method public e()Lcom/autonavi/navigation/api/map/widget/MapZoomControls;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->f:Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

    return-object v0
.end method

.method public f()Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->g:Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;

    return-object v0
.end method

.method public g()Lcom/autonavi/navigation/api/map/internal/q;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->k:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/q;->b()V

    return-void
.end method

.method public h(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/r;->d(Z)V

    return-void
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->d:Lcom/autonavi/navigation/api/map/internal/RawMapView;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->getMapBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/r;->e(Z)V

    return-void
.end method

.method public j(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/r;->f(Z)V

    return-void
.end method

.method public k(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/r;->a(Z)V

    return-void
.end method

.method public l(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/p;->n:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->h:Lcom/autonavi/navigation/api/map/widget/MapModeControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->h:Lcom/autonavi/navigation/api/map/widget/MapModeControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->setVisibility(I)V

    goto :goto_0
.end method

.method public m(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/p;->p:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->j:Lcom/autonavi/navigation/api/map/widget/MyLocationControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/MyLocationControls;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->j:Lcom/autonavi/navigation/api/map/widget/MyLocationControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/MyLocationControls;->setVisibility(I)V

    goto :goto_0
.end method

.method public n(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/p;->o:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->i:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->i:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->setVisibility(I)V

    goto :goto_0
.end method

.method public o(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/p;->l:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->f:Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->f:Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActionUp()V
    .locals 0

    return-void
.end method

.method public onFlingEnd()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->r:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->r:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;->onFlingEnd()V

    :cond_1
    return-void
.end method

.method public onFlingStart()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->r:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->r:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;->onFlingStart()V

    :cond_1
    return-void
.end method

.method public onScroll()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->s:Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->s:Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;->onScroll()V

    :cond_1
    return-void
.end method

.method public onScrollEnd()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->s:Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->s:Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;->onScrollEnd()V

    :cond_1
    return-void
.end method

.method public p(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/p;->m:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->g:Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->g:Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;->setVisibility(I)V

    goto :goto_0
.end method

.method public q(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/internal/p;->n(Z)V

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/internal/p;->l(Z)V

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/internal/p;->o(Z)V

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/internal/p;->p(Z)V

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/internal/p;->m(Z)V

    return-void
.end method

.method public r(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/r;->b(Z)V

    return-void
.end method

.method public s(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->q:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/r;->c(Z)V

    return-void
.end method

.method public t(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->x()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    const-string v1, "show_zoom_view"

    invoke-interface {v0, v1, p1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    return-void
.end method

.method public u(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->x()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    const-string v1, "show_guideboard"

    invoke-interface {v0, v1, p1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    return-void
.end method

.method public v(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->x()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    const-string v1, "show_highway_signs"

    invoke-interface {v0, v1, p1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    return-void
.end method
