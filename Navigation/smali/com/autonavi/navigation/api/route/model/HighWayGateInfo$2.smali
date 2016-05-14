.class final Lcom/autonavi/navigation/api/route/model/HighWayGateInfo$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;
    .locals 7

    new-instance v0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v5

    sget-object v6, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v6}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v6

    check-cast v6, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;-><init>(IIIIILcom/autonavi/navigation/api/map/model/LatLng;)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo$2;->a(I)[Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;

    move-result-object v0

    return-object v0
.end method
