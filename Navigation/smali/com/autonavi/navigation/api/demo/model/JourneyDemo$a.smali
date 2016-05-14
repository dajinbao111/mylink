.class Lcom/autonavi/navigation/api/demo/model/JourneyDemo$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/demo/model/JourneyDemo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/demo/model/JourneyDemo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/demo/model/JourneyDemo;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-class v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    new-instance v3, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;

    invoke-direct {v3, v1, v2, v0}, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;-><init>(ILjava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;)V

    return-object v3
.end method

.method public a(I)[Lcom/autonavi/navigation/api/demo/model/JourneyDemo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/demo/model/JourneyDemo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/JourneyDemo$a;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/demo/model/JourneyDemo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/JourneyDemo$a;->a(I)[Lcom/autonavi/navigation/api/demo/model/JourneyDemo;

    move-result-object v0

    return-object v0
.end method
