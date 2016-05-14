.class public Lcom/autonavi/navigation/api/map/AnMapOptions$AMapOptionsCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 4

    new-instance v1, Lcom/autonavi/navigation/api/map/AnMapOptions;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/map/AnMapOptions;-><init>()V

    const-class v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setCameraPosition(Lcom/autonavi/navigation/api/map/model/CameraPosition;)Lcom/autonavi/navigation/api/map/AnMapOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setRotateGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setScrollGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setTiltGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setZoomGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    const/4 v2, 0x4

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setZoomControlsEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    const/4 v2, 0x5

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setViewModeControlsEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    const/4 v2, 0x6

    aget-boolean v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setZoomLevelEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/AnMapOptions$AMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/AnMapOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/map/AnMapOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/AnMapOptions$AMapOptionsCreator;->newArray(I)[Lcom/autonavi/navigation/api/map/AnMapOptions;

    move-result-object v0

    return-object v0
.end method
