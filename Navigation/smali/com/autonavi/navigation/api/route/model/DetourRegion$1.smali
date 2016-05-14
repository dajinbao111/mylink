.class final Lcom/autonavi/navigation/api/route/model/DetourRegion$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/route/model/DetourRegion;
    .locals 10

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const-class v3, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/autonavi/navigation/api/route/model/DetourOption;->valueOf(I)Lcom/autonavi/navigation/api/route/model/DetourOption;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/autonavi/navigation/api/route/model/DetourRegion;-><init>(IILcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/route/model/DetourOption;JJLjava/lang/String;)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/route/model/DetourRegion;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/route/model/DetourRegion;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/DetourRegion$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/route/model/DetourRegion;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/DetourRegion$1;->a(I)[Lcom/autonavi/navigation/api/route/model/DetourRegion;

    move-result-object v0

    return-object v0
.end method
