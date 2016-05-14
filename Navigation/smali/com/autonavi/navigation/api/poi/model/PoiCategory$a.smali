.class Lcom/autonavi/navigation/api/poi/model/PoiCategory$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/poi/model/PoiCategory$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/poi/model/PoiCategory$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/poi/model/PoiCategory;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :goto_0
    new-instance v2, Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/autonavi/navigation/api/poi/model/PoiCategory;-><init>([IILjava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/poi/model/PoiCategory;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/PoiCategory$a;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/PoiCategory$a;->a(I)[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v0

    return-object v0
.end method
