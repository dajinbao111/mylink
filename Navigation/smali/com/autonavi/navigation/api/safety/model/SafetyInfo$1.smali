.class final Lcom/autonavi/navigation/api/safety/model/SafetyInfo$1;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 8

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readLong()J

    move-result-wide v1

    sget-object v0, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v4

    check-cast v4, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    invoke-static {v6}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->valueOf(I)Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v6

    int-to-short v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;-><init>(JLjava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;ILcom/autonavi/navigation/api/safety/model/SafetyCategory;I)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo$1;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo$1;->a(I)[Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    move-result-object v0

    return-object v0
.end method
