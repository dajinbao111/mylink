.class final Lcom/autonavi/navigation/api/map/model/TrafficIncident$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/map/model/TrafficIncident;
    .locals 19

    new-instance v2, Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v4

    sget-object v5, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v5

    check-cast v5, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/autonavi/navigation/api/internal/ObjectId;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v18

    check-cast v18, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-direct/range {v2 .. v18}, Lcom/autonavi/navigation/api/map/model/TrafficIncident;-><init>(IILcom/autonavi/navigation/api/map/model/LatLng;IIJJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/navigation/api/internal/ObjectId;)V

    return-object v2
.end method

.method public a(I)[Lcom/autonavi/navigation/api/map/model/TrafficIncident;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/TrafficIncident$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/TrafficIncident$2;->a(I)[Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    move-result-object v0

    return-object v0
.end method
