.class final Lcom/autonavi/navigation/api/poi/model/PoiGateInfo$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const-class v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    new-array v7, v6, [B

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readByteArray([B)V

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;-><init>(IIILcom/autonavi/navigation/api/map/model/LatLng;Ljava/lang/String;I[B)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo$1;->a(I)[Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;

    move-result-object v0

    return-object v0
.end method
