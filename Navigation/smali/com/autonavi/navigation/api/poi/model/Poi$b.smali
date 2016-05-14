.class Lcom/autonavi/navigation/api/poi/model/Poi$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/poi/model/Poi$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/poi/model/Poi$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 16

    new-instance v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    sget-object v2, Lcom/autonavi/navigation/api/internal/ObjectId;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v2

    check-cast v2, Lcom/autonavi/navigation/api/internal/ObjectId;

    sget-object v3, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v3

    check-cast v3, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v15

    invoke-direct/range {v1 .. v15}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/internal/ObjectId;Lcom/autonavi/navigation/api/map/model/LatLng;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/poi/model/Poi;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/Poi$b;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/Poi$b;->a(I)[Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    return-object v0
.end method
