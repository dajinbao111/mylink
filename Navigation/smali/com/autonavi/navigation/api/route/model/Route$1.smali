.class final Lcom/autonavi/navigation/api/route/model/Route$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/route/model/Route;
    .locals 19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const-class v1, Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/autonavi/navigation/api/route/model/CalculationRule;

    const-class v1, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    const-class v1, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    new-instance v1, Lcom/autonavi/navigation/api/route/model/Route;

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/autonavi/navigation/api/route/model/Route;-><init>(JIIIIIIIIIIILcom/autonavi/navigation/api/route/model/CalculationRule;ZLcom/autonavi/navigation/api/route/model/RoutePoint;Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/route/model/Route;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/route/model/Route;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/Route$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/Route$1;->a(I)[Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    return-object v0
.end method
