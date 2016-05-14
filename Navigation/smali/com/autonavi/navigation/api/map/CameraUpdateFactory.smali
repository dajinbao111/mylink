.class public final Lcom/autonavi/navigation/api/map/CameraUpdateFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/navigation/api/map/internal/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/autonavi/navigation/api/map/internal/d;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a:Lcom/autonavi/navigation/api/map/internal/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/e;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/internal/e;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a:Lcom/autonavi/navigation/api/map/internal/d;

    :cond_0
    sget-object v0, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a:Lcom/autonavi/navigation/api/map/internal/d;

    return-object v0
.end method

.method public static bearBy(I)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/autonavi/navigation/api/map/internal/d;->b(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static bearTo(I)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/autonavi/navigation/api/map/internal/d;->a(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static newCameraPosition(Lcom/autonavi/navigation/api/map/model/CameraPosition;)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    const-string v0, "cameraPosition can not be null"

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/autonavi/navigation/api/map/internal/d;->a(Lcom/autonavi/navigation/api/map/model/CameraPosition;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static newLatLng(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    const-string v0, "latLng can not be null"

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/autonavi/navigation/api/map/internal/d;->a(Lcom/autonavi/navigation/api/map/model/LatLng;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static newLatLngZoom(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    const-string v0, "latLng can not be null"

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "zoom can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/autonavi/navigation/api/map/internal/d;->a(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static newMapMode(Lcom/autonavi/navigation/api/map/model/MapMode;)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/autonavi/navigation/api/map/internal/d;->a(Lcom/autonavi/navigation/api/map/model/MapMode;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static nextMapMode()Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/internal/d;->c()Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static scrollBy(II)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/autonavi/navigation/api/map/internal/d;->a(II)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static tiltBy(I)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/autonavi/navigation/api/map/internal/d;->d(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static tiltTo(I)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/autonavi/navigation/api/map/internal/d;->c(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static zoomBy(I)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static zoomBy(ILandroid/graphics/Point;)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static zoomIn()Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/internal/d;->a()Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static zoomOut()Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/internal/d;->b()Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static zoomTo(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Lcom/autonavi/navigation/api/map/CameraUpdate;
    .locals 2

    const-string v0, "zoom can not be null"

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/autonavi/navigation/api/map/CameraUpdate;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->a()Lcom/autonavi/navigation/api/map/internal/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/autonavi/navigation/api/map/internal/d;->a(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/CameraUpdate;-><init>(Landroid/os/Message;)V

    return-object v0
.end method
