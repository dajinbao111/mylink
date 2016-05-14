.class final Lcom/autonavi/navigation/api/route/model/RoutePoint$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 4

    sget-object v0, Lcom/autonavi/navigation/api/poi/model/Poi;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/poi/model/Poi$b;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/autonavi/navigation/api/route/model/Road;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v1, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelableList(Ljava/util/List;Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Ljava/util/List;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    new-instance v3, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-direct {v3, v0, v1, v2}, Lcom/autonavi/navigation/api/route/model/RoutePoint;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi;Ljava/util/List;I)V

    return-object v3
.end method

.method public a(I)[Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint$2;->a(I)[Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    return-object v0
.end method
