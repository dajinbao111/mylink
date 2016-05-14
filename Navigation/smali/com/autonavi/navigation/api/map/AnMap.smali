.class public final Lcom/autonavi/navigation/api/map/AnMap;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/map/internal/a;

.field private final b:Lcom/autonavi/navigation/api/internal/a/f;

.field private c:Lcom/autonavi/navigation/api/map/UiSettings;

.field private d:Lcom/autonavi/navigation/api/map/Projection;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/internal/a;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/navigation/api/internal/a/b;->getTmcManagerDelegate()Lcom/autonavi/navigation/api/internal/a/f;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/navigation/api/map/AnMap;->b:Lcom/autonavi/navigation/api/internal/a/f;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/AnMap;->b:Lcom/autonavi/navigation/api/internal/a/f;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/navigation/api/internal/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/autonavi/navigation/api/R$string;->api_custom_traffic_data:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/internal/a/f;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addMarker(Lcom/autonavi/navigation/api/map/model/MarkerOptions;)Lcom/autonavi/navigation/api/map/model/Marker;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/model/MarkerOptions;)Lcom/autonavi/navigation/api/map/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method public addOnTrafficFlowUpdatedListener(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;)V

    return-void
.end method

.method public addOnTrafficIncidentUpdatedListener(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;)V

    return-void
.end method

.method public addOnTrafficStatusListener(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;)V

    return-void
.end method

.method public addRoute(Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 1

    const-string v0, "route can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/route/model/Route;)Z

    return-void
.end method

.method public animateCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V
    .locals 1

    const-string v0, "update can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->b(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    return-void
.end method

.method public animateCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;JLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/CameraUpdate;JLcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V

    return-void
.end method

.method public animateCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/CameraUpdate;Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V

    return-void
.end method

.method public clearMarkers()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->d()V

    return-void
.end method

.method public closeZoomView()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->v()V

    return-void
.end method

.method public getCameraPosition()Lcom/autonavi/navigation/api/map/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->a()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getGpsAnnunciator()Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->C()Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    move-result-object v0

    return-object v0
.end method

.method public getMapBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->G()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMapCursorAdminCode()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->q()I

    move-result v0

    return v0
.end method

.method public getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->p()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMapCursorLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->o()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getMapEglContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/map/internal/f;->a()Lcom/autonavi/navigation/api/map/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/f;->c()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public getMapModeControls()Lcom/autonavi/navigation/api/map/widget/MapModeControls;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->D()Lcom/autonavi/navigation/api/map/widget/MapModeControls;

    move-result-object v0

    return-object v0
.end method

.method public getMapTexture()I
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/map/internal/f;->a()Lcom/autonavi/navigation/api/map/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/f;->d()I

    move-result v0

    return v0
.end method

.method public getMapTexture(IIII)I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, v1, v1, p3, p4}, Lcom/autonavi/navigation/api/map/internal/a;->a(IIII)I

    move-result v0

    return v0
.end method

.method public getMapType()Lcom/autonavi/navigation/api/map/model/MapType;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->l()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    return-object v0
.end method

.method public getMapZoomControls()Lcom/autonavi/navigation/api/map/widget/MapZoomControls;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->E()Lcom/autonavi/navigation/api/map/widget/MapZoomControls;

    move-result-object v0

    return-object v0
.end method

.method public getMyAdminCode()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->u()I

    move-result v0

    return v0
.end method

.method public getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->t()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->s()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()Lcom/autonavi/navigation/api/map/Projection;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->d:Lcom/autonavi/navigation/api/map/Projection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/Projection;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/internal/a;->e()Lcom/autonavi/navigation/api/map/internal/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/Projection;-><init>(Lcom/autonavi/navigation/api/map/internal/s;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->d:Lcom/autonavi/navigation/api/map/Projection;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->d:Lcom/autonavi/navigation/api/map/Projection;

    return-object v0
.end method

.method public getRoad(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/route/model/Road;
    .locals 1

    const-string v0, "location can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/route/model/Road;

    move-result-object v0

    return-object v0
.end method

.method public getTrafficFlow()Lcom/autonavi/navigation/api/map/model/TrafficFlow;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->B()Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    move-result-object v0

    return-object v0
.end method

.method public getTrafficIncidents(Z)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->c(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUiSettings()Lcom/autonavi/navigation/api/map/UiSettings;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->c:Lcom/autonavi/navigation/api/map/UiSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/UiSettings;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/internal/a;->f()Lcom/autonavi/navigation/api/map/internal/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/UiSettings;-><init>(Lcom/autonavi/navigation/api/map/internal/u;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->c:Lcom/autonavi/navigation/api/map/UiSettings;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->c:Lcom/autonavi/navigation/api/map/UiSettings;

    return-object v0
.end method

.method public getZoomLevelControls()Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->F()Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;

    move-result-object v0

    return-object v0
.end method

.method public gotoMyLocation()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->i()V

    return-void
.end method

.method public isAtAbroad()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->r()Z

    move-result v0

    return v0
.end method

.method public isECompassEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->y()Z

    move-result v0

    return v0
.end method

.method public isMapCursorOnMyLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->j()Z

    move-result v0

    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->g()Z

    move-result v0

    return v0
.end method

.method public isTrafficFlowEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->A()Z

    move-result v0

    return v0
.end method

.method public isTrafficIncidentEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->z()Z

    move-result v0

    return v0
.end method

.method public moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V
    .locals 1

    const-string v0, "update can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    return-void
.end method

.method public refreshMap()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->k()V

    return-void
.end method

.method public removeMarker(Lcom/autonavi/navigation/api/map/model/Marker;)V
    .locals 1

    const-string v0, "marker can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/model/Marker;)V

    return-void
.end method

.method public removeOnTrafficFlowUpdatedListener(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;)V

    return-void
.end method

.method public removeOnTrafficIncidentUpdatedListener(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;)V

    return-void
.end method

.method public removeOnTrafficStatusListener(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;)V

    return-void
.end method

.method public resetCamera()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->c()V

    return-void
.end method

.method public setCalculateTrafficEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->e(Z)V

    return-void
.end method

.method public setDetourRegionHalfWidth(I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public setECompassEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Z)V

    return-void
.end method

.method public setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/model/MapType;)V

    return-void
.end method

.method public varargs setMapType(Lcom/autonavi/navigation/api/map/model/MapType;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/model/MapType;[Ljava/lang/Object;)V

    return-void
.end method

.method public setMarkerInfoWindowAdapter(Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;)V

    return-void
.end method

.method public setMyLocation(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/navigation/api/map/AnMap;->setMyLocation(Lcom/autonavi/navigation/api/map/model/LatLng;I)V

    return-void
.end method

.method public setMyLocation(Lcom/autonavi/navigation/api/map/model/LatLng;I)V
    .locals 1

    const-string v0, "location can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/model/LatLng;I)V

    return-void
.end method

.method public setOnCameraChangeListener(Lcom/autonavi/navigation/api/map/AnMap$OnCameraChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnCameraChangeListener;)V

    return-void
.end method

.method public setOnGotoMyLocationListener(Lcom/autonavi/navigation/api/map/AnMap$OnGotoMyLocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnGotoMyLocationListener;)V

    return-void
.end method

.method public setOnMapClickListener(Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;)V

    return-void
.end method

.method public setOnMapFlingListener(Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;)V

    return-void
.end method

.method public setOnMapLoadedListener(Lcom/autonavi/navigation/api/map/AnMap$OnMapLoadedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapLoadedListener;)V

    return-void
.end method

.method public setOnMapLongClickListener(Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;)V

    return-void
.end method

.method public setOnMapModeChangedListener(Lcom/autonavi/navigation/api/map/AnMap$OnMapModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapModeChangedListener;)V

    return-void
.end method

.method public setOnMapScrollListener(Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;)V

    return-void
.end method

.method public setOnMarkerClickListener(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;)V

    return-void
.end method

.method public setOnMarkerDragListener(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerDragListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerDragListener;)V

    return-void
.end method

.method public setOnMarkerInfoWindowClickListener(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;)V

    return-void
.end method

.method public setOnPoiClickListener(Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;)V

    return-void
.end method

.method public setOnTrafficAuthListener(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;)V

    return-void
.end method

.method public setOnTrafficEnabledListener(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficEnabledListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficEnabledListener;)V

    return-void
.end method

.method public setOnTrafficIncidentClickListener(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;)V

    return-void
.end method

.method public setOnZoomEnabledListener(Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;)V

    return-void
.end method

.method public setReCalculateTrafficEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->f(Z)V

    return-void
.end method

.method public setShowOverView(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->g(Z)Z

    move-result v0

    return v0
.end method

.method public setTrafficDataSource(Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->b:Lcom/autonavi/navigation/api/internal/a/f;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/internal/a/f;->a(Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;)V

    return-void
.end method

.method public setTrafficEnabled(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/a;->a(ZZ)V

    return-void
.end method

.method public setTrafficFlowEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->d(Z)V

    return-void
.end method

.method public setTrafficIncidentEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->b(Z)V

    return-void
.end method

.method public snapshot(Lcom/autonavi/navigation/api/map/model/SnapshotOptions;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/model/SnapshotOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public snapshot(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;)V

    return-void
.end method

.method public snapshot(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/a;->a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->b()V

    return-void
.end method

.method public trafficAuthRuest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "dataPath can not be empty"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v0, "deviceId can not be empty"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public zOrderRouteOnTop(Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 1

    const-string v0, "route can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMap;->a:Lcom/autonavi/navigation/api/map/internal/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/a;->b(Lcom/autonavi/navigation/api/route/model/Route;)V

    return-void
.end method
