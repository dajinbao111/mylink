.class public Lcom/autonavi/navigation/api/map/model/SnapshotOptions;
.super Ljava/lang/Object;


# static fields
.field public static final FLAG_SHOW_CAR:I = 0x1

.field public static final FLAG_SHOW_CROSS:I = 0x20

.field public static final FLAG_SHOW_FAVORITE:I = 0x8

.field public static final FLAG_SHOW_POI:I = 0x10

.field public static final FLAG_SHOW_ROUTE:I = 0x4

.field public static final FLAG_SHOW_TRAFFIC:I = 0x2


# instance fields
.field private a:Lcom/autonavi/navigation/api/map/model/MapMode;

.field private b:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field private c:Ljava/util/List;

.field private d:Lcom/autonavi/navigation/api/settings/model/Size;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/model/SnapshotOptions;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPoints(Ljava/lang/Iterable;)Lcom/autonavi/navigation/api/map/model/SnapshotOptions;
    .locals 3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addPoints([Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/model/SnapshotOptions;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public getDayNightMode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->f:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->e:I

    return v0
.end method

.method public getMapMode()Lcom/autonavi/navigation/api/map/model/MapMode;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->a:Lcom/autonavi/navigation/api/map/model/MapMode;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->c:Ljava/util/List;

    return-object v0
.end method

.method public getSize()Lcom/autonavi/navigation/api/settings/model/Size;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->d:Lcom/autonavi/navigation/api/settings/model/Size;

    return-object v0
.end method

.method public getZoomLevel()Lcom/autonavi/navigation/api/map/model/ZoomLevel;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->b:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    return-object v0
.end method

.method public setDayNightMode(I)Lcom/autonavi/navigation/api/map/model/SnapshotOptions;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->f:I

    return-object p0
.end method

.method public setFlag(I)Lcom/autonavi/navigation/api/map/model/SnapshotOptions;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->e:I

    return-object p0
.end method

.method public setMapMode(Lcom/autonavi/navigation/api/map/model/MapMode;)Lcom/autonavi/navigation/api/map/model/SnapshotOptions;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->a:Lcom/autonavi/navigation/api/map/model/MapMode;

    return-object p0
.end method

.method public setPoints(Ljava/util/List;)Lcom/autonavi/navigation/api/map/model/SnapshotOptions;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->c:Ljava/util/List;

    return-object p0
.end method

.method public setSize(Lcom/autonavi/navigation/api/settings/model/Size;)Lcom/autonavi/navigation/api/map/model/SnapshotOptions;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->d:Lcom/autonavi/navigation/api/settings/model/Size;

    return-object p0
.end method

.method public setZoomLevel(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Lcom/autonavi/navigation/api/map/model/SnapshotOptions;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->b:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    return-object p0
.end method
