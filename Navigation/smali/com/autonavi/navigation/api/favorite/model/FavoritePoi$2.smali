.class final Lcom/autonavi/navigation/api/favorite/model/FavoritePoi$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
    .locals 7

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->valueOf(I)Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    move-result-object v3

    sget-object v0, Lcom/autonavi/navigation/api/poi/model/Poi;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/poi/model/Poi$b;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v4

    check-cast v4, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v5

    invoke-virtual {v4}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    invoke-virtual {v3}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/e;->a(Lcom/autonavi/navigation/api/map/model/LatLng;I)J

    move-result-wide v1

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(JLcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;ILcom/autonavi/navigation/api/favorite/model/FavoritePoi$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi$2;->a(I)[Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    move-result-object v0

    return-object v0
.end method
