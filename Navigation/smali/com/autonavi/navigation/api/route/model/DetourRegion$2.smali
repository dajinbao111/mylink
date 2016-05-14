.class final Lcom/autonavi/navigation/api/route/model/DetourRegion$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/DetourRegion;
    .locals 10

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    sget-object v3, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v3}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v3

    check-cast v3, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/autonavi/navigation/api/route/model/DetourOption;->valueOf(I)Lcom/autonavi/navigation/api/route/model/DetourOption;

    move-result-object v4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readLong()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/autonavi/navigation/api/route/model/DetourRegion;-><init>(IILcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/route/model/DetourOption;JJLjava/lang/String;)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/route/model/DetourRegion;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/route/model/DetourRegion;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/DetourRegion$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/DetourRegion;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/DetourRegion$2;->a(I)[Lcom/autonavi/navigation/api/route/model/DetourRegion;

    move-result-object v0

    return-object v0
.end method
