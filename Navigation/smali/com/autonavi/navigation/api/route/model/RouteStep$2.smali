.class final Lcom/autonavi/navigation/api/route/model/RouteStep$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/RouteStep;
    .locals 16

    new-instance v1, Lcom/autonavi/navigation/api/route/model/RouteStep;

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v11

    sget-object v12, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v12

    check-cast v12, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v14

    sget-object v15, Lcom/autonavi/navigation/api/internal/ObjectId;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v15

    check-cast v15, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-direct/range {v1 .. v15}, Lcom/autonavi/navigation/api/route/model/RouteStep;-><init>(IIIIILjava/lang/String;Ljava/lang/String;IIILcom/autonavi/navigation/api/map/model/LatLng;IILcom/autonavi/navigation/api/internal/ObjectId;)V

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/route/model/RouteStep;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/route/model/RouteStep;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/RouteStep$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/RouteStep;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/RouteStep$2;->a(I)[Lcom/autonavi/navigation/api/route/model/RouteStep;

    move-result-object v0

    return-object v0
.end method
