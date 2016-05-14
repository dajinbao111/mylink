.class final Lcom/autonavi/navigation/api/settings/model/PoiPriority$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/settings/model/PoiPriority;
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Lcom/autonavi/navigation/api/settings/model/PoiPriority;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/autonavi/navigation/api/settings/model/PoiPriority;-><init>(IIZLjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/settings/model/PoiPriority;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/settings/model/PoiPriority;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/settings/model/PoiPriority$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/settings/model/PoiPriority;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/settings/model/PoiPriority$1;->a(I)[Lcom/autonavi/navigation/api/settings/model/PoiPriority;

    move-result-object v0

    return-object v0
.end method
