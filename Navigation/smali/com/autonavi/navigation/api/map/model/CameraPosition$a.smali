.class Lcom/autonavi/navigation/api/map/model/CameraPosition$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/map/model/CameraPosition$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/model/CameraPosition$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/model/CameraPosition;
    .locals 6

    const-class v0, Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/autonavi/navigation/api/map/model/MapMode;

    const-class v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->valueOf(I)Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/map/model/CameraPosition;-><init>(Lcom/autonavi/navigation/api/map/model/MapMode;Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/ZoomLevel;II)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/map/model/CameraPosition;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/map/model/CameraPosition;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$a;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$a;->a(I)[Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method
