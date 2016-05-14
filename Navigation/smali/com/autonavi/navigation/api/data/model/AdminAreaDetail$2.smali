.class final Lcom/autonavi/navigation/api/data/model/AdminAreaDetail$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;
    .locals 9

    const/4 v7, 0x1

    new-instance v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v5

    sget-object v6, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v6}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v6

    check-cast v6, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v8

    if-ne v8, v7, :cond_0

    :goto_0
    invoke-direct/range {v0 .. v7}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/autonavi/navigation/api/map/model/LatLng;Z)V

    return-object v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail$2;->a(I)[Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    return-object v0
.end method
