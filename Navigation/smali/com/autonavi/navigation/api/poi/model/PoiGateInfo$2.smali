.class final Lcom/autonavi/navigation/api/poi/model/PoiGateInfo$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;
    .locals 8

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v3

    sget-object v0, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v4

    check-cast v4, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v6

    new-array v7, v6, [B

    invoke-virtual {p1, v7}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readByteArray([B)I

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;-><init>(IIILcom/autonavi/navigation/api/map/model/LatLng;Ljava/lang/String;I[B)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo$2;->a(I)[Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;

    move-result-object v0

    return-object v0
.end method
