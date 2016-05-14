.class final Lcom/autonavi/navigation/api/favorite/model/FavoritePoi$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
    .locals 7

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const-class v3, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    const-class v4, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(JLcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;ILcom/autonavi/navigation/api/favorite/model/FavoritePoi$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi$1;->a(I)[Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    move-result-object v0

    return-object v0
.end method
