.class public final Lcom/autonavi/navigation/api/map/AnMapUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/autonavi/navigation/api/map/internal/l;

.field private static final b:Lcom/autonavi/navigation/api/data/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    sput-object v0, Lcom/autonavi/navigation/api/map/AnMapUtils;->a:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getDataManagerDelegate()Lcom/autonavi/navigation/api/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/autonavi/navigation/api/map/AnMapUtils;->b:Lcom/autonavi/navigation/api/data/a/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultMapCursorAdminCode()I
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/map/AnMapUtils;->getDefaultMapCursorLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/autonavi/navigation/api/map/AnMapUtils;->b:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/data/a/b;->c(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getDefaultMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/map/AnMapUtils;->a:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->j()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultMapCursorLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/map/AnMapUtils;->getDefaultMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMyAdminCode()I
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/map/AnMapUtils;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/autonavi/navigation/api/map/AnMapUtils;->b:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/data/a/b;->c(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/map/AnMapUtils;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MyLocation;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/map/AnMapUtils;->a:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->h()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v0

    return-object v0
.end method
