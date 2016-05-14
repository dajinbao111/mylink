.class Lcom/autonavi/navigation/api/safety/model/SafetyInfo$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/safety/model/SafetyInfo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 8

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->valueOf(I)Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-short v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;-><init>(JLjava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;ILcom/autonavi/navigation/api/safety/model/SafetyCategory;I)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo$a;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo$a;->a(I)[Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    move-result-object v0

    return-object v0
.end method
