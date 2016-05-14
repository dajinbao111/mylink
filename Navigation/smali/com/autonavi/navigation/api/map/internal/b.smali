.class public Lcom/autonavi/navigation/api/map/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/internal/a;
.implements Lcom/autonavi/navigation/api/map/internal/a$b;
.implements Lcom/autonavi/navigation/api/map/internal/s;
.implements Lcom/autonavi/navigation/api/map/internal/u;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/autonavi/navigation/api/map/internal/v;

.field private final c:Lcom/autonavi/navigation/api/map/internal/l;

.field private final d:Lcom/autonavi/navigation/api/settings/a/b;

.field private final e:Lcom/autonavi/navigation/api/data/a/b;

.field private final f:Lcom/autonavi/navigation/api/location/a/c;

.field private final g:Lcom/autonavi/navigation/api/map/internal/t;

.field private h:Z

.field private i:Lcom/autonavi/navigation/api/map/AnMap$OnMapModeChangedListener;

.field private j:Lcom/autonavi/navigation/api/map/AnMap$OnGotoMyLocationListener;

.field private k:Lcom/autonavi/navigation/api/map/AnMap$OnMapLoadedListener;

.field private l:Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;

.field private m:Lcom/autonavi/navigation/api/map/AnMap$OnCameraChangeListener;

.field private n:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficEnabledListener;

.field private final o:Lcom/autonavi/navigation/api/map/internal/g;

.field private p:Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/map/internal/v;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->h:Z

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnApi startup failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/autonavi/navigation/api/map/internal/b;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getDataManagerDelegate()Lcom/autonavi/navigation/api/data/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->e:Lcom/autonavi/navigation/api/data/a/b;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getLocationManagerDelegate()Lcom/autonavi/navigation/api/location/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->f:Lcom/autonavi/navigation/api/location/a/c;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/t;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/b;->f:Lcom/autonavi/navigation/api/location/a/c;

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/map/internal/t;-><init>(Landroid/content/Context;Lcom/autonavi/navigation/api/location/a/c;Lcom/autonavi/navigation/api/settings/a/b;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->g:Lcom/autonavi/navigation/api/map/internal/t;

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/internal/g;-><init>(Lcom/autonavi/navigation/api/map/internal/l;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->o:Lcom/autonavi/navigation/api/map/internal/g;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/map/internal/b;)Lcom/autonavi/navigation/api/map/internal/l;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    return-object v0
.end method

.method private a(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;ZJLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V
    .locals 10

    if-eqz p3, :cond_3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->o:Lcom/autonavi/navigation/api/map/internal/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/internal/g;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/b$1;

    move-object v1, p0

    move-wide v5, p4

    move-object v7, p2

    move-object v8, p1

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/autonavi/navigation/api/map/internal/b$1;-><init>(Lcom/autonavi/navigation/api/map/internal/b;JLandroid/view/animation/Interpolator;JLcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->q:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->o:Lcom/autonavi/navigation/api/map/internal/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/internal/g;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p2}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/model/LatLng;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/autonavi/navigation/api/map/internal/b;)Lcom/autonavi/navigation/api/map/internal/g;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->o:Lcom/autonavi/navigation/api/map/internal/g;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "show_traffic_flow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public B()Lcom/autonavi/navigation/api/map/model/TrafficFlow;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->t()Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->c()Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    move-result-object v0

    return-object v0
.end method

.method public D()Lcom/autonavi/navigation/api/map/widget/MapModeControls;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->d()Lcom/autonavi/navigation/api/map/widget/MapModeControls;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/autonavi/navigation/api/map/widget/MapZoomControls;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->e()Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

    move-result-object v0

    return-object v0
.end method

.method public F()Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->f()Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;

    move-result-object v0

    return-object v0
.end method

.method public G()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public H()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->H()Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->I()Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->J()Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->K()Z

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->L()Z

    move-result v0

    return v0
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->M()Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->N()Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->O()Z

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->P()Z

    move-result v0

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->Q()Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->R()Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->S()Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->T()Z

    move-result v0

    return v0
.end method

.method public U()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->g:Lcom/autonavi/navigation/api/map/internal/t;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/t;->b()V

    return-void
.end method

.method public V()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->g:Lcom/autonavi/navigation/api/map/internal/t;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/t;->c()V

    return-void
.end method

.method public W()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/internal/a$b;)V

    return-void
.end method

.method public X()V
    .locals 0

    return-void
.end method

.method public a(IIII)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autonavi/navigation/api/map/internal/l;->a(IIII)I

    move-result v0

    return v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/SnapshotOptions;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/SnapshotOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/autonavi/navigation/api/map/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->k()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Point;)Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Landroid/graphics/Point;)Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/MarkerOptions;)Lcom/autonavi/navigation/api/map/model/Marker;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/model/MarkerOptions;)Lcom/autonavi/navigation/api/map/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/route/model/Road;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->c(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/route/model/Road;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/internal/a$b;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnCameraChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/b;->m:Lcom/autonavi/navigation/api/map/AnMap$OnCameraChangeListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnGotoMyLocationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/b;->j:Lcom/autonavi/navigation/api/map/AnMap$OnGotoMyLocationListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/b;->k:Lcom/autonavi/navigation/api/map/AnMap$OnMapLoadedListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/b;->i:Lcom/autonavi/navigation/api/map/AnMap$OnMapModeChangedListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerDragListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerDragListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficEnabledListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/b;->n:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficEnabledListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/b;->l:Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/CameraUpdate;)V
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/navigation/api/map/internal/b;->a(Lcom/autonavi/navigation/api/map/CameraUpdate;ZJLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/CameraUpdate;JLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "durationMs should be more than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/navigation/api/map/internal/b;->a(Lcom/autonavi/navigation/api/map/CameraUpdate;ZJLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/CameraUpdate;Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/autonavi/navigation/api/map/internal/b;->a(Lcom/autonavi/navigation/api/map/CameraUpdate;JLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/CameraUpdate;ZJLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v2, "show_animation"

    invoke-interface {v1, v2, v0}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v9, :cond_3

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v2, "show_animation"

    invoke-interface {v1, v2, v0}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;I)Z

    move v8, v9

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/CameraUpdate;->getMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p5, p0, Lcom/autonavi/navigation/api/map/internal/b;->p:Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "show_animation"

    invoke-interface {v0, v1, v9}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;I)Z

    :cond_1
    return-void

    :pswitch_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->o:Lcom/autonavi/navigation/api/map/internal/g;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/internal/g;->a(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Z

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->l()Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->n()Z

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/internal/l;->j()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/autonavi/navigation/api/map/model/LatLng;

    move-object v0, p0

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/navigation/api/map/internal/b;->a(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;ZJLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/CameraPosition;)Z

    goto :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/internal/l;->j()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v2, v1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/LatLng;)Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v0, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Point;->offset(II)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, v2}, Lcom/autonavi/navigation/api/map/internal/l;->a(Landroid/graphics/Point;)Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, p0

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/navigation/api/map/internal/b;->a(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;ZJLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V

    goto :goto_1

    :pswitch_7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/autonavi/navigation/api/map/model/CameraPosition;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->j()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v2, v7, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    move-object v0, p0

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/navigation/api/map/internal/b;->a(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;ZJLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    iget-object v1, v7, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Z

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/map/internal/l;->c(I)Z

    goto/16 :goto_1

    :pswitch_9
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/map/internal/l;->d(I)Z

    goto/16 :goto_1

    :pswitch_a
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/map/internal/l;->a(I)Z

    goto/16 :goto_1

    :pswitch_b
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/map/internal/l;->b(I)Z

    goto/16 :goto_1

    :pswitch_c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/b;->a(Lcom/autonavi/navigation/api/map/model/MapMode;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/b;->m()V

    goto/16 :goto_1

    :cond_3
    move v8, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/LatLng;I)Z

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/MapMode;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/MapMode;)Z

    move-result v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->i:Lcom/autonavi/navigation/api/map/AnMap$OnMapModeChangedListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->i:Lcom/autonavi/navigation/api/map/AnMap$OnMapModeChangedListener;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/AnMap$OnMapModeChangedListener;->onMapModeChanged(Lcom/autonavi/navigation/api/map/model/MapMode;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/MapType;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/MapType;)Z

    return-void
.end method

.method public varargs a(Lcom/autonavi/navigation/api/map/model/MapType;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/MapType;[Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/Marker;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Lcom/autonavi/navigation/api/map/model/Marker;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->g:Lcom/autonavi/navigation/api/map/internal/t;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/t;->a(Z)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/accounts/NetworkErrorException;

    invoke-direct {v0}, Landroid/accounts/NetworkErrorException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "show_traffic_status"

    invoke-interface {v0, v1, p1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p2}, Lcom/autonavi/navigation/api/map/internal/l;->c(Z)Z

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/internal/b;->b(Z)V

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/internal/b;->d(Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->n:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficEnabledListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->n:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficEnabledListener;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/AnMap$OnTrafficEnabledListener;->onTrafficEnabled(Z)V

    :cond_1
    return-void
.end method

.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->e(I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/autonavi/navigation/api/route/model/Route;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/route/model/Route;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/autonavi/navigation/api/map/model/LatLng;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->o:Lcom/autonavi/navigation/api/map/internal/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/internal/g;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->p:Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->p:Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;)V

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;)V

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;)V

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/map/CameraUpdate;)V
    .locals 3

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/autonavi/navigation/api/map/internal/b;->a(Lcom/autonavi/navigation/api/map/CameraUpdate;JLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/route/model/Route;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "show_traffic_incident"

    invoke-interface {v0, v1, p1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    return-void
.end method

.method public c(Z)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/b;->l()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/b;->a(Lcom/autonavi/navigation/api/map/model/MapType;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->h()V

    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "show_traffic_flow"

    invoke-interface {v0, v1, p1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "show_traffic_flow_event"

    invoke-interface {v0, v1, p1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    return-void
.end method

.method public e()Lcom/autonavi/navigation/api/map/internal/s;
    .locals 0

    return-object p0
.end method

.method public e(Z)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "route_calculate_consider_tmc"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "route_calculate_tmc"

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "route_calculate_tmc"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public f()Lcom/autonavi/navigation/api/map/internal/u;
    .locals 0

    return-object p0
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "route_recalculate_tmc"

    invoke-interface {v0, v1, p1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    return-void
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "show_traffic_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->d(Z)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->k()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->m:Lcom/autonavi/navigation/api/map/AnMap$OnCameraChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->m:Lcom/autonavi/navigation/api/map/AnMap$OnCameraChangeListener;

    invoke-interface {v0, v3}, Lcom/autonavi/navigation/api/map/AnMap$OnCameraChangeListener;->onCameraChange(Lcom/autonavi/navigation/api/map/model/CameraPosition;)V

    :cond_0
    iget-object v0, v3, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    sget-object v4, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->MIN:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v4, v4, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    if-le v0, v4, :cond_8

    move v0, v1

    :goto_0
    iget-object v4, v3, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v4, v4, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    sget-object v5, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->MAX:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v5, v5, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    if-ge v4, v5, :cond_1

    move v2, v1

    :cond_1
    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/b;->l:Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/b;->l:Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;

    invoke-interface {v4, v0}, Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;->onZoomInEnabled(Z)V

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/b;->l:Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;

    invoke-interface {v4, v2}, Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;->onZoomOutEnabled(Z)V

    :cond_2
    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v4}, Lcom/autonavi/navigation/api/map/internal/v;->K()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v4}, Lcom/autonavi/navigation/api/map/internal/v;->e()Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->setZoomInEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->e()Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->setZoomOutEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->J()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->f()Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;

    move-result-object v0

    iget-object v2, v3, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v2, v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-static {v2}, Lcom/autonavi/navigation/api/util/StringUtils;->formatShortDistance(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;->setZoomLevelText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->L()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->d()Lcom/autonavi/navigation/api/map/widget/MapModeControls;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->setCompassResource(Lcom/autonavi/navigation/api/map/model/CameraPosition;)V

    :cond_5
    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->h:Z

    if-nez v0, :cond_6

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->h:Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->k:Lcom/autonavi/navigation/api/map/AnMap$OnMapLoadedListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->k:Lcom/autonavi/navigation/api/map/AnMap$OnMapLoadedListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMapLoadedListener;->onMapLoaded()V

    :cond_6
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->g()Lcom/autonavi/navigation/api/map/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/q;->requestLayout()V

    :cond_7
    return-void

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method public h(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->h(Z)V

    return-void
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/b;->b()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->i()Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->j:Lcom/autonavi/navigation/api/map/AnMap$OnGotoMyLocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->j:Lcom/autonavi/navigation/api/map/AnMap$OnGotoMyLocationListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$OnGotoMyLocationListener;->onGotoMyLocation()V

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->i(Z)V

    return-void
.end method

.method public j(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->j(Z)V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->s()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->a()Z

    return-void
.end method

.method public k(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->k(Z)V

    return-void
.end method

.method public l()Lcom/autonavi/navigation/api/map/model/MapType;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->g()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    return-object v0
.end method

.method public l(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->l(Z)V

    return-void
.end method

.method public m()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/b;->n()Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/MapMode;->next()Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/b;->a(Lcom/autonavi/navigation/api/map/model/MapMode;)V

    return-void
.end method

.method public m(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->m(Z)V

    return-void
.end method

.method public n()Lcom/autonavi/navigation/api/map/model/MapMode;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->f()Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v0

    return-object v0
.end method

.method public n(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->n(Z)V

    return-void
.end method

.method public o()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/b;->p()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->o(Z)V

    return-void
.end method

.method public p()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->j()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    return-object v0
.end method

.method public p(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->p(Z)V

    return-void
.end method

.method public q()I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/b;->o()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->e:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/data/a/b;->c(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public q(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->q(Z)V

    return-void
.end method

.method public r(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->r(Z)V

    return-void
.end method

.method public r()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/b;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Lcom/autonavi/navigation/api/map/model/MyLocation;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->h()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v0

    return-object v0
.end method

.method public s(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->s(Z)V

    return-void
.end method

.method public t()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/b;->s()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MyLocation;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->t(Z)V

    return-void
.end method

.method public u()I
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/b;->t()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b;->e:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/data/a/b;->c(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public u(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->u(Z)V

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->r()Z

    return-void
.end method

.method public v(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->b:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->v(Z)V

    return-void
.end method

.method public w()Lcom/autonavi/navigation/api/map/internal/l;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->c:Lcom/autonavi/navigation/api/map/internal/l;

    return-object v0
.end method

.method public x()Lcom/autonavi/navigation/api/settings/a/b;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->g:Lcom/autonavi/navigation/api/map/internal/t;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/t;->a()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "show_traffic_incident"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
