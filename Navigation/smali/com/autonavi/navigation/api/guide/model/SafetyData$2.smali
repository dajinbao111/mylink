.class final Lcom/autonavi/navigation/api/guide/model/SafetyData$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/guide/model/SafetyData;
    .locals 5

    new-instance v1, Lcom/autonavi/navigation/api/guide/model/SafetyData;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v3

    sget-object v0, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/autonavi/navigation/api/guide/model/SafetyData;-><init>(IILcom/autonavi/navigation/api/map/model/LatLng;I)V

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/guide/model/SafetyData;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/guide/model/SafetyData;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/guide/model/SafetyData$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/guide/model/SafetyData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/guide/model/SafetyData$2;->a(I)[Lcom/autonavi/navigation/api/guide/model/SafetyData;

    move-result-object v0

    return-object v0
.end method
