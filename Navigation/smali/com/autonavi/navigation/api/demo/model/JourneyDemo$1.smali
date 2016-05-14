.class final Lcom/autonavi/navigation/api/demo/model/JourneyDemo$1;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/demo/model/JourneyDemo;
    .locals 4

    new-instance v1, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v1, v2, v3, v0}, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;-><init>(ILjava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;)V

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/demo/model/JourneyDemo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/demo/model/JourneyDemo;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/JourneyDemo$1;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/demo/model/JourneyDemo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/JourneyDemo$1;->a(I)[Lcom/autonavi/navigation/api/demo/model/JourneyDemo;

    move-result-object v0

    return-object v0
.end method
