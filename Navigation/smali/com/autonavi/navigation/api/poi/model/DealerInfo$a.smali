.class Lcom/autonavi/navigation/api/poi/model/DealerInfo$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/poi/model/DealerInfo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/poi/model/DealerInfo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/poi/model/DealerInfo;
    .locals 13

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/DealerInfo;

    const-class v1, Lcom/autonavi/navigation/api/poi/model/DealerInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const-class v4, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-direct/range {v0 .. v12}, Lcom/autonavi/navigation/api/poi/model/DealerInfo;-><init>(Lcom/autonavi/navigation/api/internal/ObjectId;IILcom/autonavi/navigation/api/map/model/LatLng;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/poi/model/DealerInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/poi/model/DealerInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/DealerInfo$a;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/poi/model/DealerInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/DealerInfo$a;->a(I)[Lcom/autonavi/navigation/api/poi/model/DealerInfo;

    move-result-object v0

    return-object v0
.end method
