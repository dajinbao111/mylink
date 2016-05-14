.class final Lcom/autonavi/navigation/api/route/model/Road$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/route/model/Road;
    .locals 7

    new-instance v0, Lcom/autonavi/navigation/api/route/model/Road;

    const-class v1, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const-class v5, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/navigation/api/route/model/Road;-><init>(Lcom/autonavi/navigation/api/internal/ObjectId;Ljava/lang/String;IILcom/autonavi/navigation/api/map/model/LatLng;I)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/route/model/Road;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/route/model/Road;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/Road$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/route/model/Road;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/Road$1;->a(I)[Lcom/autonavi/navigation/api/route/model/Road;

    move-result-object v0

    return-object v0
.end method
