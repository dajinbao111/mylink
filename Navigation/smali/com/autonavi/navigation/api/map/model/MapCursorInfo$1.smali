.class final Lcom/autonavi/navigation/api/map/model/MapCursorInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/model/MapCursorInfo;
    .locals 3

    new-instance v1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    const-class v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;Ljava/lang/String;)V

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/map/model/MapCursorInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/MapCursorInfo$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/MapCursorInfo$1;->a(I)[Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    return-object v0
.end method
