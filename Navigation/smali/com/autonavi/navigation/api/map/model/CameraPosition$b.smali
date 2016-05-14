.class Lcom/autonavi/navigation/api/map/model/CameraPosition$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/map/model/CameraPosition$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/model/CameraPosition$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/map/model/CameraPosition;
    .locals 6

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/model/MapMode;->valueOf(I)Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v1

    sget-object v0, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v2

    check-cast v2, Lcom/autonavi/navigation/api/map/model/LatLng;

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v3

    check-cast v3, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

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

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$b;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$b;->a(I)[Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method
